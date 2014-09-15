##Course Project--Getting and Cleaning Data

####Source: Human Activity Recognition Using Smartphones Dataset Version 1.0 (UCI HAR Dataset)

==================================================================
Original auther information:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - University degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================
Introduction of the dataset used in this R script:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

======================================
#####Data used in this R script come from dataset UCI HAR Dataset and its aim is to create a new tidy dataset containing the average of each variable for each activity and each subject(see detail in CodeBook.md).

======================================
Files used in this project:

- activity_labels.txt
- features.txt
- test/subject_test.txt
- test/X_test.txt
- test/y_test.txt
- train/subject_train.txt
- train/X_train.txt
- train/y_train.txt

=========================================
Software:

- R 3.1.1
- RStudio
- system: windows 7

=========================================
The course of the R script:

- download the data set(zip) and unzip it
- using read.table() to load all the files above
- merge all the tables into one large table, with column names as features.txt and another two as "subject" and "activity", as requested
- subset only the measurements on the mean and standard deviation for each measurement, as requested
- rename the column "activity" according to the file activity_labels.txt, i.e. use descriptive activity names to name the activities in the data set, as requested
- appropriately label the data set with descriptive variable names so that these names could be human readable,using gsub(). As requested
- create a second, independent tidy data set with the average of each variable for each activity and each subject using functions from reshape2 package. As requested
- resulting dataset named "tidy.data.txt"

=========================================
Short introduction to the output result "tidy.data.txt":
   
#####The output is a table with 6(activity) * 30(subject) rows and 68(66 variables including measurements on the mean and standard deviation for each measurement & 2 IDs for "subject" and "activity") columns.


