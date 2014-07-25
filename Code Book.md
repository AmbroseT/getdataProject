### GETTING AND CLEANING DATA - PROJECT CODE BOOK

These features were collected from text files created from an experiment by *Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.* that measured acceleration and gyroscopic data from Samsung Galaxy SII devices worn by 30 subjects. The 30 subjects were divided into two groups - test and training groups. Some text files are just text describing labels, mapping of values, and features. The other text files are actually data sets in table form within each text file.

'Features' refer to the columns in the complete data sets, or the variables recorded in the study. Only the features that measure the mean and standard deviation have been extracted into the tidy data set. Their names have been slightly cleaned up so that R does not incorrectly mislabel the written tidy data set file.The features are explained below. 

The following is an excerpt from the README.txt file from the original experiment files:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

***

All measurement data have been normalized to [-1, 1].  There are no units.

``` 
subject.id

The person who participated in the study.  There are 30 subjects, each with a unique id  
from 1 to 30.

```
```
activity

This is the activity performed by the subject when being measured for each of the variables  
as appropriate.  There are 6 recorded activities:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

```
```
tBodyAcc.mean.X
 
time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The mean value was recorded.

```
```
tBodyAcc.mean.Y

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The mean value was recorded.

```
```
tBodyAcc.mean.Z

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The mean value was recorded.

```
```
tGravityAcc.mean.X

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the x-axis

The mean value was recorded.

```
```
tGravityAcc.mean.Y

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the y-axis

The mean value was recorded.

```
```
tGravityAcc.mean.Z

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the z-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.X

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.Y

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.Z

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
tBodyGyro.mean.X

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the x-axis

The mean value was recorded.

```
```
tBodyGyro.mean.Y

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the y-axis

The mean value was recorded.

```
```
tBodyGyro.mean.Z

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the z-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.X

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.Y

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.Z

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
tBodyAccMag.mean

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tGravityAccMag.mean

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of gravity  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tBodyAccJerkMag.mean

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The mean value was recorded.

```
```
tBodyGyroMag.mean

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tBodyGyroJerkMag.mean

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The mean value was recorded.

```
```
fBodyAcc.mean.X

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The mean value was recorded.

```
```
fBodyAcc.mean.Y

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The mean value was recorded.

```
```
fBodyAcc.mean.Z

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.X

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.Y

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.Z

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
fBodyGyro.mean.X

The mean value was recorded.

```
```
fBodyGyro.mean.Y

The mean value was recorded.

```
```
fBodyGyro.mean.Z

The mean value was recorded.

```
```
fBodyAccMag.mean

The mean value was recorded.

```
```
fBodyBodyAccJerkMag.mean

The mean value was recorded.

```
```
fBodyBodyGyroMag.mean

The mean value was recorded.

```
```
fBodyBodyGyroJerkMag.mean

The mean value was recorded.

```
```
tBodyAcc.std.X

The standard deviation was recorded.

```
```
tBodyAcc.std.Y

The standard deviation was recorded.

```
```
tBodyAcc.std.Z

The standard deviation was recorded.

```
```
tGravityAcc.std.X

The standard deviation was recorded.

```
```
tGravityAcc.std.Y

The standard deviation was recorded.

```
```
tGravityAcc.std.Z

The standard deviation was recorded.

```
```
tBodyAccJerk.std.X

The standard deviation was recorded.

```
```
tBodyAccJerk.std.Y

The standard deviation was recorded.

```
```
tBodyAccJerk.std.Z

The standard deviation was recorded.

```
```
tBodyGyro.std.X

The standard deviation was recorded.

```
```
tBodyGyro.std.Y

The standard deviation was recorded.

```
```
tBodyGyro.std.Z

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.X

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.Y

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.Z

The standard deviation was recorded.

```
```
tBodyAccMag.std

The standard deviation was recorded.

```
```
tGravityAccMag.std

The standard deviation was recorded.

```
```
tBodyAccJerkMag.std

The standard deviation was recorded.

```
```
tBodyGyroMag.std

The standard deviation was recorded.

```
```
tBodyGyroJerkMag.std

The standard deviation was recorded.

```
```
fBodyAcc.std.X

The standard deviation was recorded.

```
```
fBodyAcc.std.Y

The standard deviation was recorded.

```
```
fBodyAcc.std.Z

The standard deviation was recorded.

```
```
fBodyAccJerk.std.X

The standard deviation was recorded.

```
```
fBodyAccJerk.std.Y

The standard deviation was recorded.

```
```
fBodyAccJerk.std.Z

The standard deviation was recorded.

```
```
fBodyGyro.std.X

The standard deviation was recorded.

```
```
fBodyGyro.std.Y

The standard deviation was recorded.

```
```
fBodyGyro.std.Z

The standard deviation was recorded.

```
```
fBodyAccMag.std

The standard deviation was recorded.

```
```
fBodyBodyAccJerkMag.std

The standard deviation was recorded.

```
```
fBodyBodyGyroMag.std

The standard deviation was recorded.

```
```
fBodyBodyGyroJerkMag.std

The standard deviation was recorded.

```