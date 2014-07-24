---
title: "CodeBook"
author: "Kypros Pantelides"
date: "Wednesday, July 23, 2014"
output: html_document
---
The CodeBook explains what the data set has: names of variables, a quick explanation of what they are, type of the variable (char, integer, etc.)

 For each variable, the name in the table & full name.  You don't need to worry about range of values or units because remember the project data is normalized [-1,1]
 
 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
 
 [1] "activity"                    "subjectId"                   "timeBodyAccMeanX"           
 [4] "timeBodyAccMeanY"            "timeBodyAccMeanZ"            "timeBodyAccStdDevX"         
 [7] "timeBodyAccStdDevY"          "timeBodyAccStdDevZ"          "timeGravityAccMeanX"        
[10] "timeGravityAccMeanY"         "timeGravityAccMeanZ"         "timeGravityAccStdDevX"      
[13] "timeGravityAccStdDevY"       "timeGravityAccStdDevZ"       "timeBodyAccJerkMeanX"       
[16] "timeBodyAccJerkMeanY"        "timeBodyAccJerkMeanZ"        "timeBodyAccJerkStdDevX"     
[19] "timeBodyAccJerkStdDevY"      "timeBodyAccJerkStdDevZ"      "timeBodyGyroMeanX"          
[22] "timeBodyGyroMeanY"           "timeBodyGyroMeanZ"           "timeBodyGyroStdDevX"        
[25] "timeBodyGyroStdDevY"         "timeBodyGyroStdDevZ"         "timeBodyGyroJerkMeanX"      
[28] "timeBodyGyroJerkMeanY"       "timeBodyGyroJerkMeanZ"       "timeBodyGyroJerkStdDevX"    
[31] "timeBodyGyroJerkStdDevY"     "timeBodyGyroJerkStdDevZ"     "timeBodyAccMagMean"         
[34] "timeBodyAccMagStdDev"        "timeGravityAccMagMean"       "timeGravityAccMagStdDev"    
[37] "timeBodyAccJerkMagMean"      "timeBodyAccJerkMagStdDev"    "timeBodyGyroMagMean"        
[40] "timeBodyGyroMagStdDev"       "timeBodyGyroJerkMagMean"     "timeBodyGyroJerkMagStdDev"  
[43] "freqBodyAccMeanX"            "freqBodyAccMeanY"            "freqBodyAccMeanZ"           
[46] "freqBodyAccStdDevX"          "freqBodyAccStdDevY"          "freqBodyAccStdDevZ"         
[49] "freqBodyAccMeanFreqX"        "freqBodyAccMeanFreqY"        "freqBodyAccMeanFreqZ"       
[52] "freqBodyAccJerkMeanX"        "freqBodyAccJerkMeanY"        "freqBodyAccJerkMeanZ"       
[55] "freqBodyAccJerkStdDevX"      "freqBodyAccJerkStdDevY"      "freqBodyAccJerkStdDevZ"     
[58] "freqBodyAccJerkMeanFreqX"    "freqBodyAccJerkMeanFreqY"    "freqBodyAccJerkMeanFreqZ"   
[61] "freqBodyGyroMeanX"           "freqBodyGyroMeanY"           "freqBodyGyroMeanZ"          
[64] "freqBodyGyroStdDevX"         "freqBodyGyroStdDevY"         "freqBodyGyroStdDevZ"        
[67] "freqBodyGyroMeanFreqX"       "freqBodyGyroMeanFreqY"       "freqBodyGyroMeanFreqZ"      
[70] "freqBodyAccMagMean"          "freqBodyAccMagStdDev"        "freqBodyAccMagMeanFreq"     
[73] "freqBodyAccJerkMagMean"      "freqBodyAccJerkMagStdDev"    "freqBodyAccJerkMagMeanFreq" 
[76] "freqBodyGyroMagMean"         "freqBodyGyroMagStdDev"       "freqBodyGyroMagMeanFreq"    
[79] "freqBodyGyroJerkMagMean"     "freqBodyGyroJerkMagStdDev"   "freqBodyGyroJerkMagMeanFreq"

> class(tidyData)
[1] "data.frame"
> class(tidyData$activity)
[1] "character"
> class(tidyData$subjectId)
[1] "integer"
> class(tidyData$timeBodyAccMeanX)
[1] "numeric"

