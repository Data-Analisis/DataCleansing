# Set Working Directory
setwd("D:\\DataScience\\DataCleansing\\Assignment\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset")

# Read the files needed into seperate Data frames
xTrain <- read.table("train/X_train.txt", header=FALSE)
subjectTrain <- read.table("train/subject_train.txt", header=FALSE)
yTrain <- read.table("train/Y_train.txt", header=FALSE)

xTest <- read.table("test/X_test.txt", header=FALSE)
subjectTest <- read.table("test/subject_test.txt", header=FALSE)
yTest <- read.table("test/Y_test.txt", header=FALSE)

features <- read.table("features.txt", header=FALSE)
activityLabels <- read.table("activity_labels.txt", header=FALSE)

## Step 3 - done here 
yTest[,1] <- factor(yTest[,1], levels = activityLabels[,1],  labels = activityLabels[,2])
yTrain[,1] <- factor(yTrain[,1], levels = activityLabels[,1],  labels = activityLabels[,2])

#rbind
headers <-cbind(t(features[2]), "Subject", "Activity")
dataTrain <- cbind(xTrain, subjectTrain, yTrain)
dataTest <- cbind(xTest, subjectTest, yTest)

allData <- rbind(dataTrain, dataTest)
names(allData) <- headers

### Step 2 limit columns with mean/Activity/Subject/std ###

columnsToInclude <- grep("mean|std|Activity|Subject", headers) 
finalDataSet <- allData[,columnsToInclude]

### Step 4 - Manually replace the headers as part of data cleansing
names(finalDataSet) <- gsub("BodyBody", "Body", names(finalDataSet))
names(finalDataSet) <- gsub("tBody", "Time of Body ", names(finalDataSet))
names(finalDataSet) <- gsub("tGravity", "Time of Gravity ", names(finalDataSet))
names(finalDataSet) <- gsub("fBody", "Frequency of Body ", names(finalDataSet))

names(finalDataSet) <- gsub("Acc", "Accelerometer ", names(finalDataSet))
names(finalIDataSet) <- gsub("Gyro", "Gyroscope ", names(finalDataSet))
names(finalDataSet) <- gsub("Mag", "Magnitude ", names(finalDataSet))
names(finalDataSet) <- gsub("Jerk", "Jerk ", names(finalDataSet))

names(finalDataSet) <- gsub("-", "", names(finalDataSet))

names(finalDataSet) <- gsub("meanFreq\\(\\)X", "x Mean Frequency", names(finalDataSet))
names(finalDataSet) <- gsub("meanFreq\\(\\)Y", "Y Mean Frequency", names(finalDataSet))
names(finalDataSet) <- gsub("meanFreq\\(\\)Z", "Z Mean Frequency", names(finalDataSet))

names(finalDataSet) <- gsub("std\\(\\)X", "X Standard Deviation", names(finalDataSet))
names(finalDataSet) <- gsub("std\\(\\)Y", "Y Standard Deviation", names(finalDataSet))
names(finalDataSet) <- gsub("std\\(\\)Z", "Z Standard Deviation", names(finalDataSet))

names(finalDataSet) <- gsub("mean\\(\\)X", "x Mean", names(finalDataSet))
names(finalDataSet) <- gsub("mean\\(\\)Y", "Y Mean", names(finalDataSet))
names(finalDataSet) <- gsub("mean\\(\\)Z", "Z Mean", names(finalDataSet))

names(finalDataSet) <- gsub("meanFreq\\(\\)", "Mean Frequency", names(finalDataSet))
names(finalDataSet) <- gsub("mean\\(\\)", "Mean", names(finalDataSet))
names(finalDataSet) <- gsub("std\\(\\)", "Standard Deviation", names(finalDataSet))

names(finalDataSet)
### Step 5 -- Generate tidy data set
dataSplitBySubjectActivities <- split(finalDataSet, list(finalDataSet$Subject, finalDataSet$Activity))
aggregatedData <- t(sapply(dataSplitBySubjectActivities, function(x) colMeans(x[1:79])))
write.csv(file="TidyDataSet", x=aggregatedData)

