# Getting and Cleaning Data Week 4 Project
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set following lessons on Coursera Getting and Cleaning Data Course. 
The goal is to prepare tidy data that can be used for later analysis. 


# Details on the Data Set
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.The data linked below represents data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Link to the original data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

# Content of the Repository 
1. run_analysis.R :R script that generates a tidy data set from the _Human Activity Recognition Using Smartphones Data Set. The following tasks are performed: 

       a. Merges the training and the test sets to create one data set.

       b. Extracts only the measurements on the mean and standard deviation for each measurement. 

       c. Uses descriptive activity names to name the activities in the data set

       d. Labels the data set with descriptive variable names. 

       e. From the data set in step 4, creates a  tidy data set with the average of each variable for each activity and each subject..
 
 2. tidydata.txt : a tidy data set with unique identifiers subject and activity, with 180 observations and 81 variables including subject_id and activity_name

 3. CodeBook.md : a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
 
 4. README.md: explains how all of the scripts work and how they are connected.
