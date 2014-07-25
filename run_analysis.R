#       Coursera - Getting and Cleaning Data Course Project - "run_analysis.R"
       
#       The "run_analysis.R" is a script file that will perform the following, as per project requirement:
#       1.Merges the training and the test sets to create one data set.
#       2.Extracts only the measurements on the mean and standard deviation for each measurement.
#       3.Uses descriptive activity names to name the activities in the data set
#       4.Appropriately labels the data set with descriptive variable names.
#       5.Creates a second, independent tidy data set with the average of each variable
#	 for each activity and each subject. 

#	The working directory is the unzipped UCI_HAR_Dataset folder. 

#       Read the measurment and activity names data from files. 
features = read.table("features.txt")
activityLabels  = read.table("activity_labels.txt")

# 	Convert activity names to lower case
activityLabels$V2 = tolower(activityLabels$V2)

#       Read the Test data from files.
subjectTest<-read.table("test\\subject_test.txt")   
XTest<-read.table("test\\X_test.txt")
yTest<-read.table("test\\y_test.txt")

#	Assign column names to the Test data 
colnames(subjectTest) = "subjectId"
colnames(yTest) = "activity"
colnames(XTest) = features[,2]

#       Read the Train data from files.
subjectTrain<-read.table("train\\subject_train.txt")
XTrain<-read.table("train\\X_train.txt")
yTrain<-read.table("train\\y_train.txt")

#	Assign column names to the Train data 
colnames(subjectTrain) = "subjectId"
colnames(yTrain) = "activity"
colnames(XTrain) = features[,2]

#	Add all the columns of the 3 tables of Train data in a new table. 
trainSet = cbind(subjectTrain, yTrain, XTrain)

#	Add all the columns of the 3 tables of Test data in a new table. 
testSet = cbind(subjectTest, yTest, XTest)

#	Merge all the rows of the new Test and Train tables in a new full data table. 
fullSet = rbind(testSet, trainSet)

#	Extract only the measurements on the mean and standard deviation in a new table
extractSet<-fullSet[,grep("subjectId|activity|mean|std",colnames(fullSet))] 

#	Add descriptive activity names to name the activities in the data set 
#	by merging the sets, rearranging the new added column and deleting the unneeded
extractSet = merge(extractSet,activityLabels,by.x="activity",by.y="V1",all=TRUE)
extractSet$activity<-extractSet$V2
extractSet<-extractSet[,1:81]

# 	Tide up the variable names. 
names(extractSet) <- gsub(pattern="^t",replacement="time",x=names(extractSet))
names(extractSet) <- gsub(pattern="^f",replacement="freq",x=names(extractSet))
names(extractSet) <- gsub(pattern="-mean",replacement="Mean",x=names(extractSet))
names(extractSet) <- gsub(pattern="-std",replacement="StdDev",x=names(extractSet))
names(extractSet) <- gsub(pattern="BodyBody",replacement="Body",x=names(extractSet))
names(extractSet) <- gsub(pattern="\\()",replacement="",x=names(extractSet))
names(extractSet) <- gsub(pattern="-",replacement="",x=names(extractSet))

#	Creates a tidy data set with the average of each variable for each activity 
#	and each subject. library(plyr) should be loaded, if not already.
library(plyr)
tidyData = ddply(extractSet, .(activity, subjectId), numcolwise(mean))

# 	Export the tidy Data set 
write.table(tidyData, file="tidyDataSet.txt")
