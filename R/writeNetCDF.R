writeNetCDF <-function(Temps, element, filename, directory = MONTHLY.DATA.DIRECTORY){
  require("ncdf")
  dim1 = dim.def.ncdf( "stations","", as.integer(1:dim(Temps)[1]))
  dim2 = dim.def.ncdf( "months","", as.integer(1:dim(Temps)[2]))
  dim3 = dim.def.ncdf( "years","", as.integer(unlist(dimnames(Temps)[3])))
 
  stationId <- unlist(dimnames(Temps)[1])
  lenId <- nchar(stationId[1])  
   dimnchar <- dim.def.ncdf("nchar", "", 1:11 ) 
   dimId <- dim.def.ncdf("stationId", "", as.integer(1:dim(Temps)[1]))

   Ids <- var.def.ncdf("Id", "", list(dimnchar, dimId), NA, prec = "char" )

  varZ = var.def.ncdf("Temperature","celcius", list(dim1,dim2,dim3),-9999,  
           longname = paste("Station Monthly ",element,sep=" "))
  
  writeDate <- as.Date(Sys.time())
  writeDate <- gsub("-","",writeDate)
  filename <- paste(filename,"_",element,"_",writeDate,".nc",sep = "")
  fname <- file.path(directory,filename, fsep= .Platform$file.sep)
  nc.ex = create.ncdf(fname, list(varZ,Ids) )
  
  put.var.ncdf(nc.ex, varZ, Temps)
  put.var.ncdf(nc.ex,Ids,stationId)
  att.put.ncdf(nc.ex,0,"element",element)
  close.ncdf(nc.ex)
  
}

 

 