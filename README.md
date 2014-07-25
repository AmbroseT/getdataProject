## GETTING AND CLEANING DATA - PROJECT

### Overview

This project takes the data created from the experiment performed on 30 subjects, which measures different accelerometer and gyroscopic values from Samsung Galaxy II devices worn by each subject.  Each subject performed 6 main activities while wearing these devices, and were divided into two groups - a test group, and a training group. 

An R code script named, **run_analysis.R**, was created to use and manipulate these data sets to create a tidy data set that only includes the variables subjects, activity, and only mean and standard deviation observations.  No parameters need to passed to the script.  Just ```source("run_analysis.R")``` and run the function ```run_analysis()```.

The working environment used is RStudio.

### List of All related files
The following lists all the files that were used and created during the project.  It includes the source file, what was extracted out of the source file, the R code file, this README file, the code book, and the tidy data text file.
- dataset.zip
- README.txt
- features.txt
- features_info.txt
- activity_labels.txt
- subject_test.txt
- subject_train.txt
- X_test.txt
- X_train.txt
- Y_test.txt
- Y_train.txt
- run_analysis.R
- README.md
- Code Book.md
- finalData_<*date and time of download*>.txt

### Descriptions of Each File

#### dataset.zip

The project instructions supplied the source download file from where all the source files and data sets would be used.  This is the original .zip file:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Once the downloaded source file was retrieved, it was saved and named as **dataset.zip**, relative to the working directory in RStudio, as defined by the R code.

#### README.txt

This was extracted from the source .zip file.  This is a text file that describes the experiment/ study, and lists out the files and data sets created from the experiment.

#### features.txt

This was extracted from the source .zip file. This is a data set that lists all the variables across the test and training main data sets.

#### features_info.txt

This was extracted from the source .zip file. This is a text file that describes the features/ variables measured in the test and training main data sets. It refers to **features.txt**

#### activity_labels.txt

This was extracted from the source .zip file. This is the data set that matches the activity value to its named activity.

#### subject_test.txt

This was extracted from the source .zip file.  This is the data set that contains the subject id's of the participants in the test part of the study.

#### subject_train.txt

This was extracted from the source .zip file. This is the data set that contains the subject id's of the participants in the training part of the study.

#### X_test.txt

This was extracted from the source .zip file. This is the main data set that contains all observational values for all the variables described in the data set file **features.txt**, for the subjects that participated in the test part of the study.

#### X_train.txt

This was extracted from the source .zip file. This is the main data set that contains all observational values for all the variables described in the data set file **features.txt**, for the subjects that participated in the training part of the study.

#### Y_test.txt

This was extracted from the source .zip file. This is the data set that contains the activity values for each of the observations in the test part of the study.

#### Y_train.txt

This was extracted from the source .zip file. his is the data set that contains the activity values for each of the observations in the training part of the study.

#### run_analysis.R

This is the R code file. It is saved in the working directory. When run, it creates a function called run_analysis() that performs the following:

- creates the destination directory structure relative to the working directory, if it does not already exist
- downloads the source .zip file to the destination directory, saved as **dataset.zip**
- records the date and time of the download
- unzips the file relative to the destination directory
- reads in the values from the data sets
- uses the features data set to create the column names
- replaces existing column names with meaningful names
- merges the data sets
- subsets the data set for the subjects, activity, mean and standard deviation variables
- converts the activity values into readable, meaningful values
- cleans up the column names
- orders and aggregates the data by subjects and activity
- writes the final tidy data to a file named **finalData_<*date and time of download*>.txt**

There are comments within the code that give more detail to each of the tasks listed above.  You can view the R code [here](https://github.com/AmbroseT/getdataProject/blob/master/run_analysis.R).

#### README.md

This markdown text file you are reading.

#### Code Book.md

 This is the markdown file that describes the variables used in the tidy data set, **finalData_<*date and time of download*>.txt**, and includes any other pertinent information. You can view the code book [here](https://github.com/AmbroseT/getdataProject/blob/master/Code%20Book.md).

#### finalData_<*date and time of download*>.txt

This is the tidy data set.  It was created using the write.table() function within the R code file **run_analysis.R**.  You can view the file [here](https://github.com/AmbroseT/getdataProject/blob/master/finalData_Fri%20Jul%2025%2012.29.42%202014.txt).

Note: I found that within the RStudio console, the results looked good and were aligned as expected. It also reads into R with no issues using the read.table() function. It seems that writing out the file has created uneven columns with some data values. I plan on checking with the discussion group to see if it is related to the write.table() function I used, or if I may have missed a specific attribute in the function. It may be a fixed width requirement for text files or web pages; however, I am unable to investigate further, unfortunately, due to just running out of time.


