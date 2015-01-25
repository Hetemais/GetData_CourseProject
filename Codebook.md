## Codebook

Coursera 'Getting and Cleaning Data' 
Course project Codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing.
These signals were used to estimate variables of the feature vector for each pattern, where 3-axial signals are measured in the X, Y and Z directions.

A full description of the experiment can be found on the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For the sake of this project only the measurements on the mean and standard devition are selected. All variables (except 'SubjectID' and 'Activity') include the calculated average from the series of measurements for each variable, broken down to pairs of subject and activity.

All variables are normalized and therefore unitless

### Explanation of variables:

SubjectID  
    The identifaction number of the subject which participated in the experiment.  
        1..30
        
Activity  
    The type of activity for which the measurements were taken.  
        Walking  
        WalkingUpstairs  
        WalkingDownstairs  
        Sitting  
        Standing  
        Laying  

timesignalBodyAccelerationMeanInXdirection  
    Average of the mean value of the time domain signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationMeanInYdirection  
    Average of the mean value of the time domain signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000

timesignalBodyAccelerationMeanInZdirection  
    Average of the mean value of the time domain signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000

timesignalGravityAccelerationMeanInXdirection  
    Average of the mean value of the time domain signal for gravity acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
    
timesignalGravityAccelerationMeanInYdirection  
    Average of the mean value of the time domain signal for gravity acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
    
timesignalGravityAccelerationMeanInZdirection  
    Average of the mean value of the time domain signal for gravity acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkMeanInXdirection  
    Average of the mean value time-derived jerk signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkMeanInYdirection  
    Average of the mean value time-derived jerk signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkMeanInZdirection  
    Average of the mean value time-derived jerk signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityMeanInXdirection  
    Average of the mean value of the time domain signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityMeanInYdirection  
    Average of the mean value of the time domain signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityMeanInZdirection  
    Average of the mean value of the time domain signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkMeanInXdirection  
    Average of the mean value time-derived jerk signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkMeanInYdirection  
    Average of the mean value time-derived jerk signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkMeanInZdirection  
    Average of the mean value time-derived jerk signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalGravityAccelerationMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional signal for gravity acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional time derived jerk signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional time derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationMeanInXdirection  
    Average of the mean value of the frequency domain signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationMeanInYdirection  
    Average of the mean value of the frequency domain signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationMeanInZdirection  
    Average of the mean value of the frequency domain signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkMeanInXdirection  
    Average of the mean value of the frequency domain signal for the jerk signal of the body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkMeanInYdirection  
    Average of the mean value of the frequency domain signal for the jerk signal of the body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkMeanInZdirection  
    Average of the mean value of the frequency domain signal for the jerk signal of the body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityMeanInXdirection  
    Average of the mean value of the frequency domain signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityMeanInYdirection  
    Average of the mean value of the frequency domain signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityMeanInZdirection  
    Average of the mean value of the frequency domain signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional frequency signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
    
frequencysignalBodyAccelerationJerkMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional frequency derived jerk signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional frequency derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityJerkMagnitudeMean  
    Average of the mean value of the magnitude of the three-dimensional frequency derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationStDevInXdirection  
    Average of the standard deviation value of the time domain signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationStDevInYdirection  
    Average of the standard deviation value of the time domain signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationStDevInZdirection  
    Average of the standard deviation value of the time domain signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalGravityAccelerationStDevInXdirection  
    Average of the standard deviation value of the time domain signal for gravity acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalGravityAccelerationStDevInYdirection  
    Average of the standard deviation value of the time domain signal for gravity acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalGravityAccelerationStDevInZdirection  
    Average of the standard deviation value of the time domain signal for gravity acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkStDevInXdirection  
    Average of the standard deviation value for the time-derived jerk signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkStDevInYdirection  
    Average of the standard deviation value for the time-derived jerk signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkStDevInZdirection
    Average of the standard deviation value for the time-derived jerk signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityStDevInXdirection  
    Average of the standard deviation value of the time domain signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityStDevInYdirection  
    Average of the standard deviation value of the time domain signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityStDevInZdirection  
    Average of the standard deviation value of the time domain signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkStDevInXdirection  
    Average of the standard deviation value of the time-derived jerk signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkStDevInYdirection  
    Average of the standard deviation value of the time-derived jerk signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkStDevInZdirection  
    Average of the standard deviation value of the time-derived jerk signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
    
        
timesignalGravityAccelerationMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional signal for gravity acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAccelerationJerkMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional time derived jerk signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
timesignalBodyAngularVelocityJerkMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional time derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationStDevInXdirection
    Average of the standard deviation values of the frequency domain signal for body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationStDevInYdirection  
    Average of the standard deviation values of the frequency domain signal for body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationStDevInZdirection  
    Average of the standard deviation values of the frequency domain signal for body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkStDevInXdirection  
    Average of the standard deviation values of the frequency domain signal for the jerk signal of the body acceleration in the X-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkStDevInYdirection  
    Average of the standard deviation values of the frequency domain signal for the jerk signal of the body acceleration in the Y-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkStDevInZdirection  
    Average of the standard deviation values of the frequency domain signal for the jerk signal of the body acceleration in the Z-direction, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityStDevInXdirection  
    Average of the standard deviation values of the frequency domain signal for body angular velocity in the X-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityStDevInYdirection  
    Average of the standard deviation values of the frequency domain signal for body angular velocity in the Y-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityStDevInZdirection  
    Average of the standard deviation values of the frequency domain signal for body angular velocity in the Z-direction, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional frequency signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAccelerationJerkMagnitudeStDev 
    Average of the standard deviation values of the magnitude of the three-dimensional frequency derived jerk signal for body acceleration, derived from the accelerometer.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityMagnitudeStDev 
    Average of the standard deviation values of the magnitude of the three-dimensional frequency derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000
        
frequencysignalBodyAngularVelocityJerkMagnitudeStDev  
    Average of the standard deviation values of the magnitude of the three-dimensional frequency derived jerk signal for body angular velocity, derived from the gyroscope.  
        -1.000000000000000..1.000000000000000


*End of codebook*