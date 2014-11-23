run_analysis <- function() {
  # load feature mapping
  features = read.table("./UCI HAR Dataset/features.txt");
  features = features[grep(pattern = "std\\(\\)|mean\\(\\)", features[,2]),];  

  # load activity mapping
  activity_map = read.table("./UCI HAR Dataset/activity_labels.txt");
  
  # load points from train and test sets
  points = read.table("./UCI HAR Dataset/train/X_train.txt");
  points = rbind(points, read.table("./UCI HAR Dataset/test/X_test.txt"));
  # filter and take only mean and std values
  points = points[,features[,1]]; 
  
  # load subject ids from train and test sets
  subjects = read.table("./UCI HAR Dataset/train/subject_train.txt");
  subjects = rbind(subjects, read.table("./UCI HAR Dataset/test/subject_test.txt"));

  # load subject ids from train and test sets
  activity = read.table("./UCI HAR Dataset/train/y_train.txt");
  activity = rbind(activity, read.table("./UCI HAR Dataset/test/y_test.txt"));
  # use descriptive activity names
  activity = as.vector(activity_map[as.matrix(activity),2]); 
  
  # combine subject, activity and points into 1 table
  cleanData = cbind(activity, points);
  cleanData = cbind(subjects, cleanData);
  
  # create proper labels
  labels = as.vector(c("Subject","Activity"));
  labels = append(labels, as.vector(features[,2]));
  labels = sub(pattern = "^t", "Timed ", labels);
  labels = sub(pattern = "^f", "FFT ", labels);
  labels = sub(pattern = "\\-mean\\(\\)\\-", " Mean by ", labels);
  labels = sub(pattern = "\\-std\\(\\)\\-", " SD by ", labels);
  labels = sub(pattern = "\\-mean\\(\\)", " Mean", labels);
  labels = sub(pattern = "\\-std\\(\\)", " SD", labels);
  
  # attach labels to table
  colnames(cleanData) <- labels;
  
  # load data.table package (install if was not found)
  if(!require(data.table)) {
    install.packages(data.table);
    library(data.table)
  }
  # convert data.frame to data.table
  DT <- data.table(cleanData);
  
  # extract means grouped and sorted by subject and activity
  DT <- DT[,lapply(.SD,mean),by=list(Activity,Subject)];
  DT <- DT[order(Activity,Subject)];
  
  # record clean data set to a file
  write.table(DT, "./cleanData.txt", row.name=FALSE);
  
  #return an in-memory copy for potential processing
  DT
}