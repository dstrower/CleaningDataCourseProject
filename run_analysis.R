# Main R script

main <- function() {
  dataFrameTrain <- getSet("train")
  dataFrameTest <- getSet("test")
  firstDataSet <- rbind(dataFrameTrain,dataFrameTest)
  write.table(firstDataSet,"dataSetOne.txt",row.names=FALSE)
  tidyDataSet <- finishUp(firstDataSet)
  write.table(tidyDataSet,"tidyDataSet.txt",row.names=FALSE)
  tidyDataSet
}

getSet <- function(setName) {
   XDataFrame <- dataFrameOfX(setName)
   YDataframe <- dataFrameOfY(setName)
   descDataFrame <- dataFrameSubject(setName)
   completeSet <- cbind(descDataFrame,YDataframe,XDataFrame)
   completeSet
}

dataFrameSubject <- function(setType) {
  rootDir = "UCI HAR Dataset"    
  filename = paste("subject_",setType,".txt",sep="");
  subjectFileLocation = paste(rootDir,setType,filename,sep="/")
  actvityDesc = read.table(subjectFileLocation)
  names(actvityDesc) = c("Subject")
  actvityDesc
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
    featureVector[i] = removeParans(as.character(featuresArray$V2[i]))
  } 
  names(x)  <-  featureVector
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
    desc = removeParans(as.character(featuresDataFrame$Description[i]))
    goodDescription <- grepl("mean",desc, ignore.case = TRUE) | grepl("std",desc, ignore.case = TRUE)
    if(goodDescription) {
      #print(desc)
      vec <- append(vec,desc)
    }
  }
  vec
}

removeParans <- function(name) {
  name <- gsub("\\(", "", name)
  name <- gsub("\\)", "", name)
  name <- gsub("\\-", ".", name)
  name <- gsub("\\,", ".", name)
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
    desc = removeParans(as.character(featuresDataFrame$Description[i]))
    goodDescription <- grepl("mean",desc, ignore.case = TRUE) | grepl("std",desc, ignore.case = TRUE)
    if(goodDescription) {
      #print(desc)
      vec <- append(vec,desc)
    }
  }
  vec
}

finishUp <- function(dataFrame) {
  goodFeaturesDF <- getGoodFeatures()
  goodFeatureVector <- getFeatureVector()
  sub <- getSubjects(dataFrame)
  subjectAvg <- dataFrame[0,]
  for(i in 1:length(sub)) {
    subject = sub[i]
    averageDF <- workOnSubject(subject,dataFrame,goodFeaturesDF,goodFeatureVector)
    subjectAvg <- rbind(subjectAvg,averageDF)
  }
  subjectAvg
}

getSubjects <- function(dataFrame) {  
  sub <- sort(unique(dataFrame$Subject))
}

getActions <- function(dataFrame,subject) {
  subjectDF <- dataFrame[dataFrame$Subject == subject,]
  act <- sort(unique(subjectDF$Activity))
}
workOnSubject <- function(subject,dataFrame,goodFeaturesDF,goodFeatureVector) {
  subjectAvg <- dataFrame[0,]
  act <- getActions(dataFrame,subject)
  for(i in 1:length(act)) {
    action = act[i]
    print(action)
    smallDF <- subsetDataFrame(dataFrame,subject,action) 
    averageDF <- getAverage(smallDF,goodFeaturesDF,goodFeatureVector)
    subjectAvg <- rbind(subjectAvg,averageDF)
  }
  subjectAvg
}
getAverage <- function(smallDF,goodFeaturesDF,goodFeatureVector) {
  size = nrow(smallDF)
  numberColumnsOnly <- smallDF[goodFeaturesDF]
  avg = colSums(numberColumnsOnly)
  oneRow <- smallDF[1,]
  for(i in 1:length(goodFeaturesDF)) {
    number = avg[[i]]/size
    #print(number)
    oneRow[1,i+2] = number
  }
  oneRow
}