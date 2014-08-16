# Main R script

main <- function() {
  dataFrameTrain <- getSet("train")
}

getSet <- function(setName) {
   XDataFrame <- dataFrameOfX(setName)
   YDataframe <- dataFrameOfY(setName)
   completeSet <- cbind(YDataframe,XDataFrame)
}

dataFrameOfX <- function(x) {
  rootDir = "UCI HAR Dataset"    
  xDataFileLocation = paste(rootDir,x,"X_train.txt",sep="/")
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
  x
}

dataFrameOfY <- function(setType) {
  rootDir = "UCI HAR Dataset"    
  yDataFileLocation = paste(rootDir,setType,"Y_train.txt",sep="/")
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
