
library(plyr)
library(dplyr)

# Set the working directory
setwd("./UCI HAR Dataset/")

# load the trainig dataset
train_data <- read.delim("train/X_train.txt",sep="", header=FALSE)
train_labels <- read.delim("train/y_train.txt", sep = "", header=FALSE, col.names=c("activity_id"))
train_subjects <- read.table("train/subject_train.txt", header = FALSE, col.name=c("subject_id"))

# load the test dataset
test_data <- read.delim("test/X_test.txt",sep ="", header=FALSE)
test_labels <- read.delim("test/y_test.txt", sep = "", header = FALSE, col.names=c("activity_id"))
test_subjects <- read.table("test/subject_test.txt", header = FALSE, col.name=c("subject_id"))

# load the feature names vector
feature_names <- read.table("features.txt", header=FALSE, col.names = c("featureIndex", "featureName"))

# load the acitivity labels 
activity_labels <- read.table("activity_labels.txt", header=FALSE, col.names = c("activity_id","activity_label"))

# Assign the featureName from feature_names dataframe to the column names of train_data and test_data
names(train_data) <- feature_names$featureName
names(test_data) <- feature_names$featureName

# Merge the training and test data sets
train_test_data <- rbind(train_data, test_data)
train_test_lables <- rbind(train_labels,test_labels)
train_test_subjects <- rbind(train_subjects, test_subjects)

# join the train_test_lables and activity_labels data sets to get descriptive names
descriptive_train_test_labels <- join(train_test_lables,activity_labels)

# create a vector that contains the column names that are related to mean of the measurements
mean_columns <- names(train_test_data[grep("mean()",names(train_test_data),fixed = TRUE)])

# Create a vector that contains the column names that are related to the standard deviation of the measurements
std_columns <- names(train_test_data[grep("std()",names(train_test_data),fixed = TRUE)])

# combine mean_colums and std_columns
mean_std_columns <- c(mean_columns, std_columns)

# Select only mean and standard deviation columns from the train_test_data
train_test_mean_std_data <- train_test_data[mean_std_columns]

#Add activity labels and subject_ids and to the combined train and test data
descriptive_train_test_data <- cbind(train_test_mean_std_data, descriptive_train_test_labels["activity_label"], train_test_subjects)

#Create a grouped combined data set that is grouped by subject and activity
grouped_descriptive_data <- group_by(descriptive_train_test_data, activity_label, subject_id)

# Summarise the grouped_descriptive_data by calculating the means of each variable
summarised_descriptive_data <- summarise_each(grouped_descriptive_data,funs(mean))

# Save the tidy summarizied data set
write.table(summarised_descriptive_data,file="../summarized_tidy_data.txt",row.names = FALSE)
