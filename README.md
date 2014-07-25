# Coursera - Getting and Cleaning Data Course Project - "README.MD"

The "README.MD" file explains what the "run_analysis.R" script does.

## Source data

The data for the project comes from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This represents data collected from accelerometer and gyroscope, from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data constist from the following files:
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

## Dependancies

The UCI_HAR_Dataset.zip file is downloaded and extracted into the UCI_HAR_Dataset folder.
That becomes also the working directory for the script. 
The "run_analysis.R" file should be in the working directory UCI_HAR_Dataset where the raw data is.
The package "plyr" should be installed for the "ddply" function.

## Script description

The "run_analysis.R" will perform the following, as per project requirement:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.Creates a second, independent tidy data set with the average of each variable
 for each activity and each subject. 

The "run_analysis.R" file contains detailed commments explaining the steps in which the original 
data was transformed to the output "tidyDataSet.txt" file.

## Output

The "CodeBook.MD" file contains detailed information on the output "tidyDataSet.txt" file.  

The Project has the following resulting files:
on Github repository
- README.MD
- CodeBook.MD
- run_analysis.R
on Coursera site
- tidyDataSet.txt

