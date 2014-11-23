## Original data 
Source https://class.coursera.org/getdata-009/human_grading/view/courses/972587/assessments/3/submissions

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Original data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Local copy in repository folder **UCI HAR Dataset**

Please refer to **./UCI HAR Dataset/README.md** for original data description.

## Target clean data
Contains averages of *mean()* and *std()* values grouped by activity and subject. Stored in **cleanData.txt**

## Cleaning Steps

1. Load feature mapping from **UCI HAR Dataset/features.txt**
2. Trim it by only keeping features containing *std()* and *mean()* in their names
3. Load activity mapping from **./UCI HAR Dataset/activity_labels.txt**
4. Load points from train set **./UCI HAR Dataset/train/X_train.txt**
5. Load points from train set **./UCI HAR Dataset/test/X_test.txt**
6. Concatenate rows using *rbind(...)* function
7. Filter based on trimmed features
8. Load subject IDs from train set **./UCI HAR Dataset/train/subject_train.txt**
9. Load subject IDs from train set **./UCI HAR Dataset/test/subject_test.txt**
10. Concatenate rows using *rbind(...)* function
11. Load activity IDs from train set **./UCI HAR Dataset/train/y_train.txt**
12. Load activity IDs from train set **./UCI HAR Dataset/test/y_test.txt**
13. Concatenate rows using *rbind(...)* function
14. Convert IDs to descriptive activity names from activity map
13. Concatenate activity, subject and points data using *cbind(...)* function
14. Generate descriptive labels and attach them to data table
15. Prepare data.table package (will install if does not already included)
16. Convert data.frame to data.table (for next steps)
17. Extract means grouped by activity and subject 
18. Sort result by activity and subject 
19. Record resulting clean data set to a file **./cleanData.txt**
20. Return an in-memory copy for potential processing

## Resulting columns (numbered)
* Activity
* Subject
* Timed BodyAcc Mean by X
* Timed BodyAcc Mean by Y
* Timed BodyAcc Mean by Z
* Timed BodyAcc SD by X
* Timed BodyAcc SD by Y
* Timed BodyAcc SD by Z
* Timed GravityAcc Mean by X
* Timed GravityAcc Mean by Y
* Timed GravityAcc Mean by Z
* Timed GravityAcc SD by X
* Timed GravityAcc SD by Y
* Timed GravityAcc SD by Z
* Timed BodyAccJerk Mean by X
* Timed BodyAccJerk Mean by Y
* Timed BodyAccJerk Mean by Z
* Timed BodyAccJerk SD by X
* Timed BodyAccJerk SD by Y
* Timed BodyAccJerk SD by Z
* Timed BodyGyro Mean by X
* Timed BodyGyro Mean by Y
* Timed BodyGyro Mean by Z
* Timed BodyGyro SD by X
* Timed BodyGyro SD by Y
* Timed BodyGyro SD by Z
* Timed BodyGyroJerk Mean by X
* Timed BodyGyroJerk Mean by Y
* Timed BodyGyroJerk Mean by Z
* Timed BodyGyroJerk SD by X
* Timed BodyGyroJerk SD by Y
* Timed BodyGyroJerk SD by Z
* Timed BodyAccMag Mean
* Timed BodyAccMag SD
* Timed GravityAccMag Mean
* Timed GravityAccMag SD
* Timed BodyAccJerkMag Mean
* Timed BodyAccJerkMag SD
* Timed BodyGyroMag Mean
* Timed BodyGyroMag SD
* Timed BodyGyroJerkMag Mean
* Timed BodyGyroJerkMag SD
* FFT BodyAcc Mean by X
* FFT BodyAcc Mean by Y
* FFT BodyAcc Mean by Z
* FFT BodyAcc SD by X
* FFT BodyAcc SD by Y
* FFT BodyAcc SD by Z
* FFT BodyAccJerk Mean by X
* FFT BodyAccJerk Mean by Y
* FFT BodyAccJerk Mean by Z
* FFT BodyAccJerk SD by X
* FFT BodyAccJerk SD by Y
* FFT BodyAccJerk SD by Z
* FFT BodyGyro Mean by X
* FFT BodyGyro Mean by Y
* FFT BodyGyro Mean by Z
* FFT BodyGyro SD by X
* FFT BodyGyro SD by Y
* FFT BodyGyro SD by Z
* FFT BodyAccMag Mean
* FFT BodyAccMag SD
* FFT BodyBodyAccJerkMag Mean
* FFT BodyBodyAccJerkMag SD
* FFT BodyBodyGyroMag Mean
* FFT BodyBodyGyroMag SD
* FFT BodyBodyGyroJerkMag Mean
* FFT BodyBodyGyroJerkMag SD
