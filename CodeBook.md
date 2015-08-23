# CodeBook for Human Activity Recognition dataset

## Study design

### Download the Raw dataset

Url to download the raw data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Steps to download the dataset

1. wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. unzip getdata-projectfiles-UCI HAR Dataset.zip
3. This creates a directory called 'UCI HAR Dataset'

#### Overview of the raw dataset

Directory structure of 'UCI HAR Dataset'

Directory structure:
```
├── UCI HAR Dataset/
│   ├── README.txt
│   ├── activity_labels.txt
│   ├── features.txt
│   ├── features_info.txt
│   ├── train
│   │   ├── X_train.txt
│   │   ├── y_train.txt
│   │   ├── subject_train.txt
│   │   ├── Inertial Signals
│   │   │   ├── body_acc_x_train.txt
│   │   │   ├── body_acc_y_train.txt
│   │   │   ├── body_acc_z_train.txt
│   │   │   ├── total_acc_y_train.txt
│   │   │   ├── total_acc_x_train.txt
│   │   │   ├── total_acc_z_train.txt
│   │   │   ├── body_gyro_x_train.txt
│   │   │   ├── body_gyro_y_train.txt
│   │   │   ├── body_gyro_z_train.txt
│   ├── test
│   │   ├── X_test.txt
│   │   ├── y_test.txt
│   │   ├── subject_test.txt
│   │   ├── Inertial Signals
│   │   │   ├── body_acc_x_test.txt
│   │   │   ├── body_acc_y_test.txt
│   │   │   ├── body_acc_z_test.txt
│   │   │   ├── total_acc_y_test.txt
│   │   │   ├── total_acc_x_test.txt
│   │   │   ├── total_acc_z_test.txt
│   │   │   ├── body_gyro_x_test.txt
│   │   │   ├── body_gyro_y_test.txt
│   │   │   ├── body_gyro_z_test.txt
```

Check the README.txt and features_info.txt files for further details about this dataset. 

Following files from 'UCI HAR Dataset' are used in the analysis

* X_train.txt
* y_train.txt
* subject_train.txt
* X_test.txt
* y_test.txt
* subject_test.txt
* activity_labels.txt
* features.txt

### Psuedocode to create the tidy dataset

1. Load the training and test dataset (X_train.txt and X_test.txt)
2. Load the training and test labels (y_train.txt and y_test.txt)
3. Load the training and test subject datasets (subject_train.txt and subject_test.txt)
4. Load the features.txt file to get 561 feature names
5. Load the activity labels from activity_lables.txt
6. Merge the training and test data
7. Merge the training and test lables
8. Merge the training and test subjects
9. Add descriptive variable names to the merged test and train data by adding the feature names as the column names.
10. Add descriptive activity lables [STANDING, SITTING, LAYING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS] to the training and test lables by joining with the activity lables dataframe - (used plyr package's join command)
11. Select only columns that have measurement's mean() and std() of each measurement
12. Add descriptive activity lables and subject_ids to the combined train and test dataset by joining the dataframes by cbind
13. Use dplyr packages' group_by method to group the descriptive combined dataset by 'activity_labe 

### Variables in the tidy dataset

1. "activity_label" 
2. "subject_id" 
3. "tBodyAcc-mean()-X" 
4. "tBodyAcc-mean()-Y" 
5. "tBodyAcc-mean()-Z" 
6. "tGravityAcc-mean()-X" 
7. "tGravityAcc-mean()-Y" 
8. "tGravityAcc-mean()-Z" 
9. "tBodyAccJerk-mean()-X" 
10. "tBodyAccJerk-mean()-Y" 
11. "tBodyAccJerk-mean()-Z" 
12. "tBodyGyro-mean()-X" 
13. "tBodyGyro-mean()-Y" 
14. "tBodyGyro-mean()-Z" 
15. "tBodyGyroJerk-mean()-X" 
16. "tBodyGyroJerk-mean()-Y" 
17. "tBodyGyroJerk-mean()-Z" 
18. "tBodyAccMag-mean()" 
19. "tGravityAccMag-mean()" 
20. "tBodyAccJerkMag-mean()" 
21. "tBodyGyroMag-mean()" 
22. "tBodyGyroJerkMag-mean()" 
23. "fBodyAcc-mean()-X" 
24. "fBodyAcc-mean()-Y" 
25. "fBodyAcc-mean()-Z" 
26. "fBodyAccJerk-mean()-X" 
27. "fBodyAccJerk-mean()-Y" 
28. "fBodyAccJerk-mean()-Z" 
29. "fBodyGyro-mean()-X" 
30. "fBodyGyro-mean()-Y" 
31. "fBodyGyro-mean()-Z" 
32. "fBodyAccMag-mean()" 
33. "fBodyBodyAccJerkMag-mean()" 
34. "fBodyBodyGyroMag-mean()" 
35. "fBodyBodyGyroJerkMag-mean()" 
36. "tBodyAcc-std()-X" 
37. "tBodyAcc-std()-Y" 
38. "tBodyAcc-std()-Z" 
39. "tGravityAcc-std()-X" 
40. "tGravityAcc-std()-Y" 
41. "tGravityAcc-std()-Z" 
42. "tBodyAccJerk-std()-X" 
43. "tBodyAccJerk-std()-Y" 
44. "tBodyAccJerk-std()-Z" 
45. "tBodyGyro-std()-X" 
46. "tBodyGyro-std()-Y" 
47. "tBodyGyro-std()-Z" 
48. "tBodyGyroJerk-std()-X" 
49. "tBodyGyroJerk-std()-Y" 
50. "tBodyGyroJerk-std()-Z" 
51. "tBodyAccMag-std()" 
52. "tGravityAccMag-std()" 
53. "tBodyAccJerkMag-std()" 
54. "tBodyGyroMag-std()" 
55. "tBodyGyroJerkMag-std()" 
56. "fBodyAcc-std()-X" 
57. "fBodyAcc-std()-Y" 
58. "fBodyAcc-std()-Z" 
59. "fBodyAccJerk-std()-X" 
60. "fBodyAccJerk-std()-Y" 
61. "fBodyAccJerk-std()-Z" 
62. "fBodyGyro-std()-X" 
63. "fBodyGyro-std()-Y" 
64. "fBodyGyro-std()-Z" 
65. "fBodyAccMag-std()" 
66. "fBodyBodyAccJerkMag-std()" 
67. "fBodyBodyGyroMag-std()" 
68. "fBodyBodyGyroJerkMag-std()"

### Units of Columns 1-68 in tidy dataset
* Column 1 has the activity labels. [STANDING, SITTING, LAYING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]
* Column 2 has the subject id. [1-30]
* Columns [3-68] contain the average of the mean() and standard-deviation() for each measurement. Features/Variables are normalized and values are bounded within [-1,1].
