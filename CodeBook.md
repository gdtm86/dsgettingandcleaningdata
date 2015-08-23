# CodeBook for Human Activity Recognition dataset

## Study design

### Download the Raw dataset

Url to download the raw data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Steps to download the dataset

1. wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. unzip getdata-projectfiles-UCI HAR Dataset.zip
3. This creates a directory called 'UCI HAR Dataset'

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

Following files are used in the analysis

* X_train.txt
* y_train.txt
* subject_train.txt
* X_test.txt
* y_test.txt
* subject_test.txt
* activity_labels.txt
* features.txt


### Psuedocode to create the tidy dataset
