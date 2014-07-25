Coursera - Getting and Cleaning Data Course Project - "CodeBook.MD"

The "CodeBook.MD" file explains what the output ("tidyDataSet.txt") data set variables are.

1.	The first variable "activity" denotes the activity performed by the subject. 
	There are six activites, laying - sitting - standing - walking - walking_downstairs - walking_upstairs.
	The variable type is "character"
2.	The second variable "subjectId" denotes the subject number that performs an activity. There are 30 subjects.
	The variable type is "integer"
3. 	The rest 79 variables are selected from the original data, as required 
	i.e. only the measurements on the mean and standard deviation.
	The original data is normalized [-1,1] so no units are assigned to these variables. 
	The variable type is "numeric"

The tidy data set contains, as required, only the average of each variable from the original data,
for each activity and each subject. That makes 6 activities X 30 persons = 180 rows of data.

For more information, on the actual meaning of the measurments, please visit
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, 
the website where the original data came from. 

Here is an abstract for better understanting the abbreviations used for the variable names: 
The features selected come from the accelerometer and gyroscope X, Y and Z directions, raw signals.
These time domain signals were filter with various frequencies.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Also the magnitude of these three-dimensional signals were calculated. 
Finally a transformation was applied to some of these signals producing frequency domain signals. 

For example, "timeBodyGyroJerkStdDevY" in the tidy data set, is the average per activity/subject
of the normalized [-1,1] value, of the Standard Deviation of the Time domain Body Gyroscope Jerk signals in the Y direction. 
 
This is a list of the tidy data set variables names:
 
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