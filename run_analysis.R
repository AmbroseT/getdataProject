run_analysis <- function() {
  ## ==================================================================================================================
  ## This function will do the following:
  ## - Merge the training and the test sets to create one data set.
  ## - Extract only the measurements on the mean and standard deviation for each measurement. 
  ## - Uses descriptive activity names to name the activities in the data set
  ## - Appropriately label the data set with descriptive variable names. 
  ## - Create a second, independent tidy data set with the average of each variable for each activity and each subject.
  ## ==================================================================================================================
  
  ## ------------------------------------------------------------------------------
  ## the gdata library is loaded so that the function write.fwf() can be used. This
  ## assumes that the gdata package has already been installed on your system
  ## ------------------------------------------------------------------------------
  library(gdata)
  
  ## ---------------------------------------------------------------------------------
  ## For better reproducibility, the following code will download the zip file, record
  ## the date, and extract the files if they do not exist. the location of the 
  ## downloaded file and the extraction location will be relative to the working 
  ## directory.
  ## ---------------------------------------------------------------------------------
  if(!file.exists("data")) {dir.create("data")}
  if(!file.exists("./data/temp")) {dir.create("./data/temp")}
  
  if(!file.exists("./data/temp/dataset.zip")) {
    message("downloading file. this may take a minute or so...")
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile="./data/temp/dataset.zip")
    datedownloaded <- date()
    
    message("unzipping file. this may take a minute or so...")
    unzip("./data/temp/dataset.zip", exdir="./data/temp")    
  } else datedownloaded <- "localCopy"
  
  ## ----------------------------------------------------------------------------
  ## remove the ':' from the date since it is an invalid character for file names 
  ## in Windows
  ## ----------------------------------------------------------------------------
  datedownloaded <- gsub(":", ".", datedownloaded)
  
  ## ----------------------------------------------------
  ## set the test and training dir, to make coding easier
  ## ----------------------------------------------------
  trainDir <- "./data/temp/UCI HAR Dataset/train/"
  testDir <- "./data/temp/UCI HAR Dataset/test/"
  uciDir <- "./data/temp/UCI HAR Dataset/"
  
  ## ----------------------------------------------------------------------------------
  ## read in the values from the test and training files. there are separate files for:
  ## - test and training data (all obseravations)
  ## - test and training activity data (all observations)
  ## - test and training subject data (all observations)
  ## - features variables (to be used as columns with meaningful names)
  ## ----------------------------------------------------------------------------------
  message("reading files.  this may take a minute or so...")
  test <- read.table(paste(testDir, "X_test.txt", sep=""))
  train <- read.table(paste(trainDir, "X_train.txt", sep=""))
  testActivity <- read.table(paste(testDir, "y_test.txt", sep=""))
  trainActivity <- read.table(paste(trainDir, "y_train.txt", sep=""))
  testSubjects <- read.table(paste(testDir, "subject_test.txt", sep=""))
  trainSubjects <- read.table(paste(trainDir, "subject_train.txt", sep=""))
  features <- read.table(paste(uciDir, "features.txt", sep=""), stringsAsFactors=FALSE)
  
  message("Processing files:")
  
  ## ---------------------------------------------------------------------
  ## create a vector from the features data set to create the column names
  ## then rename the columnn names in the test and train data set. 
  ## ---------------------------------------------------------------------
  featuresCol <- features$V2
  colnames(test) <- featuresCol
  colnames(train) <- featuresCol
   
  ## ----------------------------------------------------------------------
  ## relabel the test and training subjects data set to a meaningful colunn 
  ## name. both names must be set for a proper rbind() later on.
  ## ----------------------------------------------------------------------
  colnames(testSubjects) <- "subject.id"
  colnames(trainSubjects) <- "subject.id"
  
  ## -----------------------------------------------------------------
  ## convert from numeric to character for use in sapply later on, and
  ## relabel the test and training activity data set with a readable 
  ## column name. both names must be set for a proper rbind() later on
  ## -----------------------------------------------------------------
  colnames(testActivity) <- "activity"
  colnames(trainActivity) <- "activity"
  testActivity$activity <- as.character(testActivity$activity)
  trainActivity$activity <- as.character(trainActivity$activity)
  
  message("Columns relabeled...")
  
  ## combine data sets via rbind
  ## - test followed by train
  data <- rbind(test, train)
  activity <- rbind(testActivity, trainActivity)
  subjects <- rbind(testSubjects, trainSubjects)
   
  ## combine data sets via cbind
  ## - subjects, then activity then features data 
  allData <- cbind(subjects,activity,data)
  
  message("Data merged...")
  
  ## -----------------------------------------------------------------
  ## convert the activity data from numbers to their meaningful labels
  ## -----------------------------------------------------------------
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="1","WALKING",x))
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="2","WALKING_UPSTAIRS",x))
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="3","WALKING_DOWNSTAIRS",x))
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="4","SITTING",x))
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="5","STANDING",x))
  allData$activity <- sapply(allData$activity, function(x) ifelse(x=="6","LAYING",x))
  
  message("Activities labeled...")
  
  ## -------------------------------------------------------------------
  ## use grep() to pull out only the mean and standard deviation columns
  ## from both data sets, and gsub() to substitute non-friendly-to-R
  ## characters; starting with the subject id and activity variables
  ## into a new variable called 'sample'
  ## -------------------------------------------------------------------
  sample <- allData[,1:2]
  sample <- cbind(sample, allData[, grep("mean()", colnames(allData), fixed=TRUE)])
  sample <- cbind(sample, allData[, grep("std()", colnames(allData), fixed=TRUE)])
  
  colnames(sample) <- gsub("()", "", colnames(sample), fixed=TRUE)
  colnames(sample) <- gsub("-", ".", colnames(sample))
  
  ## ----------------------------------------------------------------
  ## order by subject then by activity into a new variable 'sample.1'
  ## ----------------------------------------------------------------
  sample.1 <- sample[order(sample$subject.id, sample$activity),]
    
  ## ---------------------------------------------------------------------------
  ## aggregate the data by subject and activity, and get the mean of the columns
  ## into a new data set called 'finalData'
  ## ---------------------------------------------------------------------------
  finalData <- aggregate(. ~ subject.id + activity, data = sample.1, FUN = mean)
  
  message("Required data extracted, ordered and aggregated... ")
  
  ## -----------------------------------------------------------------------------
  ## write the final tidy data set to a file with write.table() appending the date
  ## it was downloaded. if the file already exists, the file name will be appended
  ## with 'localCopy'
  ## another file will be written using write.fwf() function from the gdata
  ## library so that column alignment is more readable on the web or github
  ## -----------------------------------------------------------------------------
  write.table(finalData, paste(uciDir,"finalData_", datedownloaded, ".txt", sep=""), quote=FALSE, sep="\t", row.names=FALSE) 
  write.fwf(finalData, paste(uciDir,"finalData2_", datedownloaded, ".txt", sep=""), quote=FALSE, sep='\t', justify="right")
  
  message("tidy data set file written.")
  
}