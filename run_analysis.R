# Main R script

main <- function() {
  dataFrameTrain <- getSet("train")
  dataFrameTest <- getSet("test")
  firstDataSet <- rbind(dataFrameTrain,dataFrameTest)
  write.csv(firstDataSet,"dataSetOne.csv",row.names=FALSE)
  firstDataSet
}

getSet <- function(setName) {
   XDataFrame <- dataFrameOfX(setName)
   YDataframe <- dataFrameOfY(setName)
   descDataFrame <- dataFrameSubject(setName)
   completeSet <- cbind(descDataFrame,YDataframe,XDataFrame)
   completeSet
}

dataFrameOfX <- function(setType) {
  rootDir = "UCI HAR Dataset"    
  filename = paste("X_",setType,".txt",sep="");
  xDataFileLocation = paste(rootDir,setType,filename,sep="/")
  #print(xDataFileLocation)
  x <- read.table(xDataFileLocation)
  featuresFileLocation = paste(rootDir,"features.txt",sep="/");
  featuresArray <- read.table(featuresFileLocation)
  featureSize <- nrow(featuresArray)
  vec <- c()
  featureVector <- c(vec, 1:featureSize)
  for(i in 1:featureSize) {      
    featureVector[i] = as.character(featuresArray$V2[i])
  }
  names(x)  <- featureVector
  keepColumns = getGoodFeatures()
  x <- x[keepColumns]
  x
}


getGoodFeatures <- function() {
  rootDir = "UCI HAR Dataset" 
  featuresFileLocation = paste(rootDir,"features.txt",sep="/");
  featuresDataFrame <- read.table(featuresFileLocation)
  names(featuresDataFrame) <- c("RowNumber","Description")
  vec <- c()
  for( i in 1:nrow(featuresDataFrame)) {
    desc = as.character(featuresDataFrame$Description[i])
    goodDescription <- grepl("mean",desc, ignore.case = TRUE) | grepl("std",desc, ignore.case = TRUE)
    if(goodDescription) {
      #print(desc)
      vec <- append(vec,desc)
    }
  }
  vec
}

dataFrameOfY <- function(setType) {
  rootDir = "UCI HAR Dataset"    
  filename = paste("y_",setType,".txt",sep="");
  yDataFileLocation = paste(rootDir,setType,filename,sep="/")
  y <- read.table(yDataFileLocation)
  names(y) <- c("Activity")
  activityLabelsFileLocation =  paste(rootDir,"activity_labels.txt",sep="/")
  actvityDesc = read.table(activityLabelsFileLocation)
  names(actvityDesc) = c("RowNumber","Description")
  for(i in 1:nrow(y)) {  
    index = as.numeric(y$Activity[i])
    description = as.character(actvityDesc$Description[index])
    y$Activity[i] <- description
  }
  y
}


getGoodFeatures <- function() {
  rootDir = "UCI HAR Dataset" 
  featuresFileLocation = paste(rootDir,"features.txt",sep="/");
  featuresDataFrame <- read.table(featuresFileLocation)
  names(featuresDataFrame) <- c("RowNumber","Description")
  vec <- c()
  for( i in 1:nrow(featuresDataFrame)) {
    desc = as.character(featuresDataFrame$Description[i])
    goodDescription <- grepl("mean",desc, ignore.case = TRUE) | grepl("std",desc, ignore.case = TRUE)
    if(goodDescription) {
      #print(desc)
      vec <- append(vec,desc)
    }
  }
  vec
}