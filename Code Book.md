### GETTING AND CLEANING DATA - PROJECT CODE BOOK

These features were collected from text files created from an experiment by *Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012* that measured acceleration and gyroscopic data from Samsung Galaxy SII devices worn by 30 subjects. The 30 subjects were divided into two groups - test and training groups. Some text files are just text describing labels, mapping of values, and features. The other text files are actually data sets in table form within each text file.

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

integer

The person who participated in the study.  There are 30 subjects, each with a unique id  
from 1 to 30.

```
```
activity

factor

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

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The mean value was recorded.

```
```
tBodyAcc.mean.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The mean value was recorded.

```
```
tBodyAcc.mean.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The mean value was recorded.

```
```
tGravityAcc.mean.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the x-axis

The mean value was recorded.

```
```
tGravityAcc.mean.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the y-axis

The mean value was recorded.

```
```
tGravityAcc.mean.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the z-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
tBodyAccJerk.mean.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
tBodyGyro.mean.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the x-axis

The mean value was recorded.

```
```
tBodyGyro.mean.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the y-axis

The mean value was recorded.

```
```
tBodyGyro.mean.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the z-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
tBodyGyroJerk.mean.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
tBodyAccMag.mean

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tGravityAccMag.mean

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of gravity  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tBodyAccJerkMag.mean

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The mean value was recorded.

```
```
tBodyGyroMag.mean

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional signals

The mean value was recorded.

```
```
tBodyGyroJerkMag.mean

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The mean value was recorded.

```
```
fBodyAcc.mean.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The mean value was recorded.

```
```
fBodyAcc.mean.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The mean value was recorded.

```
```
fBodyAcc.mean.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the x-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the y-axis

The mean value was recorded.

```
```
fBodyAccJerk.mean.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration jerk signals  
on the z-axis

The mean value was recorded.

```
```
fBodyGyro.mean.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring signals on the x-axis 

The mean value was recorded.

```
```
fBodyGyro.mean.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring signals on the y-axis

The mean value was recorded.

```
```
fBodyGyro.mean.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring signals on the z-axis

The mean value was recorded.

```
```
fBodyAccMag.mean

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude if body signals.

The mean value was recorded.

```
```
fBodyBodyAccJerkMag.mean

numeric

The mean value was recorded.

```
```
fBodyBodyGyroMag.mean

numeric

The mean value was recorded.

```
```
fBodyBodyGyroJerkMag.mean

numeric

The mean value was recorded.

```
```
tBodyAcc.std.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The standard deviation was recorded.

```
```
tBodyAcc.std.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The standard deviation was recorded.

```
```
tBodyAcc.std.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The standard deviation was recorded.

```
```
tGravityAcc.std.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the x-axis

The standard deviation was recorded.

```
```
tGravityAcc.std.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the y-axis

The standard deviation was recorded.

```
```
tGravityAcc.std.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring gravity acceleration on the z-axis

The standard deviation was recorded.

```
```
tBodyAccJerk.std.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the x-axis

The standard deviation was recorded.

```
```
tBodyAccJerk.std.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the y-axis

The standard deviation was recorded.

```
```
tBodyAccJerk.std.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the z-axis

The standard deviation was recorded.

```
```
tBodyGyro.std.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the x-axis

The standard deviation was recorded.

```
```
tBodyGyro.std.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the y-axis

The standard deviation was recorded.

```
```
tBodyGyro.std.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration on the z-axis

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.X

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the x-axis

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.Y

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the y-axis

The standard deviation was recorded.

```
```
tBodyGyroJerk.std.Z

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring body acceleration jerk signals  
on the z-axis

The standard deviation was recorded.

```
```
tBodyAccMag.std

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional signals

The standard deviation was recorded.

```
```
tGravityAccMag.std

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of gravity  
acceleration on the three-dimensional signals

The standard deviation was recorded.

```
```
tBodyAccJerkMag.std

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The standard deviation was recorded.

```
```
tBodyGyroMag.std

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional signals

The standard deviation was recorded.

```
```
tBodyGyroJerkMag.std

numeric

time domain signals (identified with the leading 't' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring the magnitude of body  
acceleration on the three-dimensional jerk signals

The standard deviation was recorded.

```
```
fBodyAcc.std.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the x-axis

The standard deviation was recorded.

```
```
fBodyAcc.std.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the y-axis

The standard deviation was recorded.

```
```
fBodyAcc.std.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring Body acceleration on the z-axis

The standard deviation was recorded.

```
```
fBodyAccJerk.std.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the x-axis

The standard deviation was recorded.

```
```
fBodyAccJerk.std.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the y-axis

The standard deviation was recorded.

```
```
fBodyAccJerk.std.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring body acceleration jerk signals  
on the z-axis

The standard deviation was recorded.

```
```
fBodyGyro.std.X

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring Body acceleration on the x-axis

The standard deviation was recorded.

```
```
fBodyGyro.std.Y

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring Body acceleration on the y-axis

The standard deviation was recorded.

```
```
fBodyGyro.std.Z

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded gyroscope, measuring Body acceleration on the z-axis

The standard deviation was recorded.

```
```
fBodyAccMag.std

numeric

frequency domain signals (identified with the leading 'f' in the name of the variable),  
from the Galaxy SII embedded accelerometer, measuring the magnitude of body acceleration  
on the three-dimensional signals

The standard deviation was recorded.

```
```
fBodyBodyAccJerkMag.std

numeric

The standard deviation was recorded.

```
```
fBodyBodyGyroMag.std

numeric

The standard deviation was recorded.

```
```
fBodyBodyGyroJerkMag.std

numeric

The standard deviation was recorded.

```