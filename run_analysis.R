#       Coursera Getting and Cleaning Data Course Project
#       
#       This script file "run_analysis.R", that can be run as long as the Samsung data is in the working directory,
#       will perform the following steps:
#       1.Merges the training and the test sets to create one data set.
#       2.Extracts only the measurements on the mean and standard deviation for each measurement.
#       3.Uses descriptive activity names to name the activities in the data set
#       4.Appropriately labels the data set with descriptive variable names.
#       5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#
#       First, we read in the data from files. 

features = read.table("features.txt")
activityLabels  = read.table("activity_labels.txt")
# convert variable names to lowercase
activityLabels$V2 = tolower(activityLabels$V2)


subjectTest<-read.table("test\\subject_test.txt")   
XTest<-read.table("test\\X_test.txt")
yTest<-read.table("test\\y_test.txt")
#activityTest<-merge(yTest,activityLabels,by.x="V1",by.y="V1",all=TRUE)

colnames(subjectTest) = "subjectId"
colnames(yTest) = "activity"
colnames(XTest) = features[,2]

subjectTrain<-read.table("train\\subject_train.txt")
XTrain<-read.table("train\\X_train.txt")
yTrain<-read.table("train\\y_train.txt")

colnames(subjectTrain) = "subjectId"
colnames(yTrain) = "activity"
colnames(XTrain) = features[,2]

trainSet = cbind(subjectTrain, yTrain, XTrain)
testSet = cbind(subjectTest, yTest, XTest)
fullSet = rbind(testSet, trainSet)

extractSet<-fullSet[,grep("subjectId|activity|mean|std",colnames(fullSet))] 

extractSet = merge(extractSet,activityLabels,by.x="activity",by.y="V1",all=TRUE)
extractSet$activity<-extractSet$V2
extractSet<-extractSet[,1:81]

# tidy up variable names
names(extractSet) <- gsub(pattern="^t",replacement="time",x=names(extractSet))
names(extractSet) <- gsub(pattern="^f",replacement="freq",x=names(extractSet))
names(extractSet) <- gsub(pattern="-mean",replacement="Mean",x=names(extractSet))
names(extractSet) <- gsub(pattern="-std",replacement="StdDev",x=names(extractSet))
names(extractSet) <- gsub(pattern="BodyBody",replacement="Body",x=names(extractSet))
names(extractSet) <- gsub(pattern="\\()",replacement="",x=names(extractSet))

tidyData = ddply(extractSet, .(activity, subjectId), numcolwise(mean))

# Export the tidyData set 
write.table(tidyData, file="tidyData.txt")
