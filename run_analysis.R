# Main R script
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
}
