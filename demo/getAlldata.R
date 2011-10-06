#### Downloads all the data that has either Tmin or Tmax
if (!file.exists(DAILY.QA.DIRECTORY)) dir.create(DAILY.QA.DIRECTORY)
if (!file.exists(DAILY.DATA.DIRECTORY)) dir.create(DAILY.DATA.DIRECTORY)
 if (!file.exists(DAILY.FILES.DIRECTORY)) dir.create(DAILY.FILES.DIRECTORY)
 if (!file.exists(MONTHLY.DATA.DIRECTORY)) dir.create(MONTHLY.DATA.DIRECTORY)

 cntryFilename     <- downloadCountry()
 inventoryFilename <- downloadDailyInventory()
 metadataFilename  <- downloadDailyMetadata()
MinInv  <- readDailyInventory(elements= "TMIN" )
MaxInv  <- readDailyInventory(elements= "TMAX" )
all     <- merge(MaxInv,MinInv, by.x = "Id", by.y = "Id", all = TRUE)
dlist   <- makeDownloadList(all)

downloadDailyData(dlist)