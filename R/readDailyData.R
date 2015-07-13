readDailyData <- function(filename, element = c("TMAX", "TMIN", "PRCP"), directory = DAILY.QA.DIRECTORY) {
  fname <- file.path(directory,filename, fsep =.Platform$file.sep)
  X <- read.table(fname)
  dex <- which(X$Element %in% element)
  elements_avail <- unique(X$Element)
  X <- X[dex, ]
  if (nrow(X) == 0) return(NULL)
  suppressWarnings(tmp1 <- X %>% tidyr::gather(key = day, value, -Id, -Elements, -Year, -Month) %>% 
                     dplyr::mutate(isDay = grepl("Day", day)) %>% 
                     dplyr::filter(isDay) %>% dplyr::rename(value = value) %>% 
                     dplyr::select(-isDay) %>% 
                     tidyr::spread(Elements, value) %>% 
                     dplyr::mutate(day = gsub("Day", "", day)))
  suppressMessages(suppressWarnings(tmp2 <- X %>% tidyr::gather(key = day, value, -Id, -Elements, -Year, -Month) %>% 
                                      dplyr::mutate(isDay = grepl("Day", day)) %>% 
                                      dplyr::filter(!isDay) %>% 
                                      dplyr::rename(flag = value) %>% 
                                      dplyr::select(-isDay) %>% 
                                      dplyr::mutate(Elements = paste0(Elements, "flag")) %>% 
                                      tidyr::spread(Elements, flag) %>% 
                                      dplyr::mutate(day = gsub("Q", "", day)) %>% 
                                      dplyr::inner_join(tmp1)))
  # ***Would be nice to have a dplyr solution for this
  all_elements <- c("TMIN", "TMAX", "PRCP")
  for(elem in all_elements[!all_elements %in% elements_avail]) {
    tmp2[,elem] <- NA
    tmp2[,paste0(elem, "flag")] <- NA
  }
  for(elem in all_elements){
    class(tmp2[,paste0(elem, "flag")]) <- "character"
  }
  suppressMessages(suppressWarnings(tmp2 %>% dplyr::filter(!(is.na(PRCPflag) & is.na(TMAXflag) & is.na(TMINflag))) %>% 
                                      dplyr::mutate(day = as.Date(paste(Year, Month, day, sep = "-"))) %>% 
                                      dplyr::select(-Year, -Month) %>% 
    dplyr::mutate(PRCP = as.numeric(PRCP) / 10, TMAX = as.numeric(TMAX) / 10, TMIN = as.numeric(TMIN) / 10)))
}
