###Load libraries to be used in data cleaning

library(dplyr)
library(tidyr)

### Read training and test data files into R

trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

featurenames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

activitylbls <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

### Merge the datasets

merge_train <- cbind(subtrain,trainx,trainy)
merge_test <- cbind(subtest, testx, testy)
mergealldata <- rbind(merge_train, merge_test)

###Rename variables with descriptive names

colnames(mergealldata) <- c("subject_id", featurenames$V2, "activity_id")
colnames(activitylbls) <- c("activity_id", "activity_name")

### Extract measurements on mean and std for each sample

##create column name variable for extraction by matching
matchnames <- c("subject_id", featurenames$V2, "activity_id")

features_mean_std <- mergealldata[, grepl("subject_id|activity_id|mean|std", matchnames)]

### Merge data by `activity_id` to match the descriptive names given in activitylabls 

feature_actnamed <- merge(features_mean_std, activitylbls, by = "activity_id")

##remove old acitivity_id column
feature_actnamed$"activity_id" = NULL

## Create new dataset with the average of each variable for each activity and each subject.

avg_act_sub <- aggregate(. ~ subject_id + activity_name, feature_actnamed, FUN = mean)
avg_act_sub <- arrange(unique_act_sub, subject_id, activity_name)

###Write tidy dataset to text file
write.table(avg_act_sub, "week4.txt", row.names = FALSE)
