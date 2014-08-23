CleaningDataCourseProject CodeBook
=========================

This is the codebook for the tidy dataset.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<ol>
<li> Subject - The number of the subject.</li>
<li> Activity - The activity the subject was doing such as walking, sitting, etc.</li>
<li> tBodyAcc.mean.X - The mean of: The time domain signal of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> tBodyAcc.mean.Y - The mean of: The time domain signal of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> tBodyAcc.mean.Z - The mean of: The time domain signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> tBodyAcc.std.X - The standard deviation of: The time domain signal of the body acceleration in the x-axis (in xyz space) direction. </li>
<li> tBodyAcc.std.Y - The standard deviation of: The time domain signal of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> tBodyAcc.std.Z - The standard deviation of: The time domain signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> tGravityAcc.mean.X - The mean of: The time domain signal of the gravity acceleration in the x-axis (in xyz space) direction. </li>
<li> tGravityAcc.mean.Y - The mean of: The time domain signal of the gravity acceleration in the y-axis (in xyz space) direction.</li>
<li> tGravityAcc.mean.Z -  The mean of: The time domain signal of the gravity acceleration in the z-axis (in xyz space) direction.</li>
<li> tGravityAcc.std.X -  The standard deviation of: The time domain signal of the gravity acceleration in the x-axis (in xyz space) direction.  </li>
<li> tGravityAcc.std.Y - The standard deviation of: The time domain signal of the gravity acceleration in the y-axis (in xyz space) direction.</li>
<li> tGravityAcc.std.Z -  The standard deviation of: The time domain signal of the gravity acceleration in the z-axis (in xyz space) direction.</li>
<li> tBodyAccJerk.mean.X - The mean of: The time domain signal of the body jerking (change in acceleration) in the x-axis (in xyz space) direction. </li>
<li> tBodyAccJerk.mean.Y -  The mean of: The time domain signal of the body jerking (change in acceleration) in the y-axis (in xyz space) direction. </li>
<li> tBodyAccJerk.mean.Z -  The mean of: The time domain signal of the body jerking (change in acceleration) in the z-axis (in xyz space) direction. </li>
<li> tBodyAccJerk.std.X - The standard deviation of: The time domain signal of the body jerking (change in acceleration) in the x-axis (in xyz space) direction.</li>
<li> tBodyAccJerk.std.Y - The standard deviation of: The time domain signal of the body jerking (change in acceleration) in the y-axis (in xyz space) direction.</li>
<li> tBodyAccJerk.std.Z - The standard deviation of: The time domain signal of the body jerking (change in acceleration) in the z-axis (in xyz space) direction.</li>
<li> tBodyGyro.mean.X - The mean of: The time domain signal of the gyroscope acceleration in the x-axis (in xyz space) direction.</li>
<li> tBodyGyro.mean.Y - The mean of: The time domain signal of the gyroscope acceleration in the y-axis (in xyz space) direction.</li>
<li> tBodyGyro.mean.Z - The mean of: The time domain signal of the gyroscope acceleration in the z-axis (in xyz space) direction.</li>
<li> tBodyGyro.std.X - The standard deviation of: The time domain signal of the gyroscope acceleration in the x-axis (in xyz space) direction.</li>
<li> tBodyGyro.std.Y - The standard deviation of: The time domain signal of the gyroscope acceleration in the y-axis (in xyz space) direction.</li>
<li> tBodyGyro.std.Z - The standard deviation of: The time domain signal of the gyroscope acceleration in the z-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.mean.X - The mean of: The time domain signal of the gyroscope jerking (change in acceleration) in the x-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.mean.Y - The mean of: The time domain signal of the gyroscope jerking (change in acceleration) in the y-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.mean.Z - The mean of: The time domain signal of the gyroscope jerking (change in acceleration) in the z-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.std.X - The standard deviation of: The time domain signal of the gyroscope jerking (change in acceleration) in the x-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.std.Y -  The standard deviation of: The time domain signal of the gyroscope jerking (change in acceleration) in the y-axis (in xyz space) direction.</li>
<li> tBodyGyroJerk.std.Z -  The standard deviation of: The time domain signal of the gyroscope jerking (change in acceleration) in the x-axis (in xyz space) direction.</li>
<li> tBodyAccMag.mean - The mean of: The Magnitude of the time domain signal of the body acceleration.</li>
<li> tBodyAccMag.std - The standard deviation of: The Magnitude of the time domain signal of the body acceleration.</li>
<li> tGravityAccMag.mean - The mean of: The Magnitude of the time domain signal of the gravity acceleration.</li>
<li> tGravityAccMag.std - The standard deviation of: The Magnitude of the time domain signal of the gravity acceleration.</liz
<li> tBodyAccJerkMag.mean - The mean of: The Magnitude of the time domain signal of the body jerking (change in acceleration).</li>
<li> tBodyAccJerkMag.std - The standard deviation of: The Magnitude of the time domain signal of the body jerking (change in acceleration).</li>
<li> tBodyGyroMag.mean -  The mean of: The Magnitude of the time domain signal of the gyroscope acceleration.</li>
<li> tBodyGyroMag.std - The standard deviation of: The Magnitude of the time domain signal of the gyroscope acceleration.</li>
<li> tBodyGyroJerkMag.mean - The mean of: The Magnitude of the time domain signal of the gyroscope jerking (change in acceleration).</li>
<li> tBodyGyroJerkMag.std -  The mean of: The Magnitude of the time domain signal of the gyroscope jerking (change in acceleration).</li>
<li> fBodyAcc.mean.X - The mean of: The frequency signal of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAcc.mean.Y - The mean of: The frequency signal of the body acceleration in the y-axis (in xyz space) direction.li>
<li> fBodyAcc.mean.Z - The mean of: The frequency signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyAcc.std.X - The standard deviation of: The frequency signal of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAcc.std.Y - The standard deviation of: The frequency signal of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyAcc.std.Z - The standard deviation of: The frequency signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyAcc.meanFreq.X - The mean of: The frequency signal of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAcc.meanFreq.Y - The mean of: The frequency signal of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyAcc.meanFreq.Z - The mean of: The frequency signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.mean.X - The mean of: The jerking (change in acceleration) of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.mean.Y - The mean of: The jerking (change in acceleration) of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.mean.Z - The mean of: The jerking (change in acceleration) of the body acceleration in the z-axis (in xyz space) direction. </li>
<li> fBodyAccJerk.std.X - The standard deviation of: The jerking (change in acceleration) of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.std.Y - The standard deviation of: The jerking (change in acceleration) of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.std.Z - The standard deviation of: The jerking (change in acceleration) of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.meanFreq.X - The mean of: The jerking (change in acceleration) of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyAccJerk.meanFreq.Y - The mean of: The jerking (change in acceleration) of the body acceleration in the y-axis (in xyz space) direction. </li>
<li> fBodyAccJerk.meanFreq.Z - The mean of: The jerking (change in acceleration) of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyGyro.mean.X -  The mean of: The frequency signal of the gyroscope acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyGyro.mean.Y - The mean of: The frequency signal of the gyroscope acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyGyro.mean.Z - The mean of: The frequency signal of the gyroscope acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyGyro.std.X -  The standard deviation of: The frequency signal of the gyroscope acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyGyro.std.Y - The standard deviation of: The frequency signal of the gyroscope acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyGyro.std.Z - The standard deviation of: The frequency signal of the gyroscope acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyGyro.meanFreq.X -  The mean of: The frequency signal of the body acceleration in the x-axis (in xyz space) direction.</li>
<li> fBodyGyro.meanFreq.Y - The mean of: The frequency signal of the body acceleration in the y-axis (in xyz space) direction.</li>
<li> fBodyGyro.meanFreq.Z - The mean of: The frequency signal of the body acceleration in the z-axis (in xyz space) direction.</li>
<li> fBodyAccMag.mean - The mean of: The magnitude of the frequency signal of the body acceleration.</li>
<li> fBodyAccMag.std -  The standard deviation of: The magnitude of the frequency signal of the body acceleration.</li>
<li> fBodyAccMag.meanFreq - The mean of: The magnitude of the frequency signal of the body acceleration.</li>
<li> fBodyBodyAccJerkMag.mean - The mean of: The jerking (change in acceleration) of the frequency signal of the body acceleration.</li>
<li> fBodyBodyAccJerkMag.std - The standard deviation of: The jerking (change in acceleration) of the frequency signal of the body acceleration.</li>
<li> fBodyBodyAccJerkMag.meanFreq - The mean of: The jerking (change in acceleration) of the frequency signal of the body acceleration</li>
<li> fBodyBodyGyroMag.mean - The mean of: The of the frequency signal of the gyroscope acceleration.</li>
<li> fBodyBodyGyroMag.std - The standard deviation of: The of the frequency signal of the gyroscope acceleration.</li>
<li> fBodyBodyGyroMag.meanFreq - The mean of: The of the frequency signal of the gyroscope acceleration.</li>
<li> fBodyBodyGyroJerkMag.mean - The mean of: The of the jerking (change in acceleration) of the frequency signal of the gyroscope acceleration.</li>
<li> fBodyBodyGyroJerkMag.std - The standard deviation of: The of the jerking (change in acceleration) of the frequency signal of the gyroscope acceleration.</li>
<li> fBodyBodyGyroJerkMag.meanFreq - The mean of: The of the jerking (change in acceleration) of the frequency signal of the gyroscope acceleration.</li>
<li> angletBodyAccMean.gravity - The mean of: The of the frequency signal of the angle of the body.</li>
<li> angletBodyAccJerkMean.gravityMean - The mean of: The of the frequency signal of the gyroscope acceleration.</li>
<li> angletBodyGyroMean.gravityMean - The mean of: The of the frequency signal of the gyroscope acceleration.</li>
<li> angletBodyGyroJerkMean.gravityMean - The mean of: The of the jerking (change in acceleration) of frequency signal of the gyroscope acceleration.</li>
<li> angleX.gravityMean -  The mean of: The of the frequency signal of the angle of the body in the x-axis.</li>
<li> angleY.gravityMean - The mean of: The of the frequency signal of the angle of the body in the y-axis.</li>
<li> angleZ.gravityMean - The mean of: The of the frequency signal of the angle of the body in the z-axis.</li>
</ol>
