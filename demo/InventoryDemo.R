if (!file.exists(DAILY.QA.DIRECTORY)) dir.create(DAILY.QA.DIRECTORY)
if (!file.exists(DAILY.DATA.DIRECTORY)) dir.create(DAILY.DATA.DIRECTORY)
 if (!file.exists(DAILY.FILES.DIRECTORY)) dir.create(DAILY.FILES.DIRECTORY)
 if (!file.exists(MONTHLY.DATA.DIRECTORY)) dir.create(MONTHLY.DATA.DIRECTORY)

 
MinInv   <-readDailyInventory(elements= "TMIN" )
MaxInv   <-readDailyInventory(elements= "TMAX" )


MinInv <- MinInv[which(MinInv$FirstYear <= 2000 &  MinInv$LastYear >=1960),]
MaxInv <- MaxInv[which(MaxInv$FirstYear <= 2000 &  MaxInv$LastYear >=1960),]

span   <- MaxInv$LastYear - MaxInv$FirstYear
MaxInv <- MaxInv[which(span > 2),]
span   <- MinInv$LastYear - MinInv$FirstYear
MinInv <- MinInv[which(span > 2),]

common <- intersect(MaxInv$Id,MinInv$Id)

MaxInv <- MaxInv[which(MaxInv$Id %in% common),]
MinInv <- MinInv[which(MinInv$Id %in% common),]               ]

plot(x=MaxInv$Lon,y=MaxInv$Lat, type ="p")

hist(MaxInv$LastYear,labels =T)
hist(MinInv$FirstYear,labels =T)


 
