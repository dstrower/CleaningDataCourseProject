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
  sub <- levels(dataFrame$Subject)
}

getActions <- function(dataFrame,subject) {
  subjectDF <- dataFrame[dataFrame$Subject == subject,]
  act <- levels(subjectDF$Activity)
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
startUp <- function() {    
  filename = "dataSetOne.txt"  
  dataframe = read.table(filename,header=TRUE)
  finishUp(dataframe)
}
subsetDataFrame <- function(dataFrame,subject,activity) {
  small <- dataFrame[dataFrame$Subject == subject & dataFrame$Activity == activity,]
}


removeParans <- function(name) {
  name <- gsub("\\(", "", name)
  name <- gsub("\\)", "", name)
  name <- gsub("\\-", ".", name)
  name <- gsub("\\,", ".", name)
}

getFeatureVector <- function() {
  rootDir = "UCI HAR Dataset" 
  featuresFileLocation = paste(rootDir,"features.txt",sep="/");
  featuresArray <- read.table(featuresFileLocation,)
  featureSize <- nrow(featuresArray)
  vec <- c()
  featureVector <- c(vec, 1:featureSize)
  for(i in 1:featureSize) {      
    featureVector[i] = removeParans(as.character(featuresArray$V2[i]))
  } 
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