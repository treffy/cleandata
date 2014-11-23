## Original data 
### Source https://class.coursera.org/getdata-009/human_grading/view/courses/972587/assessments/3/submissions

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
 1.	Activity
 2.	Subject
 3.	Timed BodyAcc Mean by X
 4.	Timed BodyAcc Mean by Y
 5.	Timed BodyAcc Mean by Z
 6.	Timed BodyAcc SD by X
 7.	Timed BodyAcc SD by Y
 8.	Timed BodyAcc SD by Z
 9.	Timed GravityAcc Mean by X
10.	Timed GravityAcc Mean by Y
11.	Timed GravityAcc Mean by Z
12.	Timed GravityAcc SD by X
13.	Timed GravityAcc SD by Y
14.	Timed GravityAcc SD by Z
15.	Timed BodyAccJerk Mean by X
16.	Timed BodyAccJerk Mean by Y
17.	Timed BodyAccJerk Mean by Z
18.	Timed BodyAccJerk SD by X
19.	Timed BodyAccJerk SD by Y
20.	Timed BodyAccJerk SD by Z
21.	Timed BodyGyro Mean by X
22.	Timed BodyGyro Mean by Y
23.	Timed BodyGyro Mean by Z
24.	Timed BodyGyro SD by X
25.	Timed BodyGyro SD by Y
26.	Timed BodyGyro SD by Z
27.	Timed BodyGyroJerk Mean by X
28.	Timed BodyGyroJerk Mean by Y
29.	Timed BodyGyroJerk Mean by Z
30.	Timed BodyGyroJerk SD by X
31.	Timed BodyGyroJerk SD by Y
32.	Timed BodyGyroJerk SD by Z
33.	Timed BodyAccMag Mean
34.	Timed BodyAccMag SD
35.	Timed GravityAccMag Mean
36.	Timed GravityAccMag SD
37.	Timed BodyAccJerkMag Mean
38.	Timed BodyAccJerkMag SD
39.	Timed BodyGyroMag Mean
40.	Timed BodyGyroMag SD
41.	Timed BodyGyroJerkMag Mean
42.	Timed BodyGyroJerkMag SD
43.	FFT BodyAcc Mean by X
44.	FFT BodyAcc Mean by Y
45.	FFT BodyAcc Mean by Z
46.	FFT BodyAcc SD by X
47.	FFT BodyAcc SD by Y
48.	FFT BodyAcc SD by Z
49.	FFT BodyAccJerk Mean by X
50.	FFT BodyAccJerk Mean by Y
51.	FFT BodyAccJerk Mean by Z
52.	FFT BodyAccJerk SD by X
53.	FFT BodyAccJerk SD by Y
54.	FFT BodyAccJerk SD by Z
55.	FFT BodyGyro Mean by X
56.	FFT BodyGyro Mean by Y
57.	FFT BodyGyro Mean by Z
58.	FFT BodyGyro SD by X
59.	FFT BodyGyro SD by Y
60.	FFT BodyGyro SD by Z
61.	FFT BodyAccMag Mean
62.	FFT BodyAccMag SD
63.	FFT BodyBodyAccJerkMag Mean
64.	FFT BodyBodyAccJerkMag SD
65.	FFT BodyBodyGyroMag Mean
66.	FFT BodyBodyGyroMag SD
67.	FFT BodyBodyGyroJerkMag Mean
68.	FFT BodyBodyGyroJerkMag SD
