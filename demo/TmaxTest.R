if (!file.exists(DAILY.DATA.DIRECTORY)) dir.create(DAILY.DATA.DIRECTORY)
 if (!file.exists(DAILY.FILES.DIRECTORY)) dir.create(DAILY.FILES.DIRECTORY)
 if (!file.exists(MONTHLY.DATA.DIRECTORY)) dir.create(MONTHLY.DATA.DIRECTORY)
 
MaxInv   <-readDailyInventory(elements= "TMAX" )
MaxInv <- MaxInv[which(MaxInv$FirstYear <= 2000 &  MaxInv$LastYear >=1960),]

span   <- MaxInv$LastYear - MaxInv$FirstYear
MaxInv <- MaxInv[which(span > 2),]
MaxInv <- MaxInv[1:1000,]
dlist  <- makeDownloadList(MaxInv)

downloadDailyData(dlist,directory = DAILY.DATA.DIRECTORY)
convertRawToDat()

TMAX  <- createArray(Inventory = MaxInv, element = "TMAX", 
                     indir = DAILY.QA.DIRECTORY,
                     na.rm = meanFunction, 7)

writeNetCDF(Temps =TMAX,
            element ="TMAX",
            filename ="Demo",
            directory = MONTHLY.DATA.DIRECTORY)
 





 
