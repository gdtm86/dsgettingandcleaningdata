# dsgettingandcleaningdata
Data Science - Getting and Cleaning Data final project

dsgettingandcleaningdata project contains the following files in the project's main github directory
* README.md
* CookBook.md
* run_analysis.R

### README.md
README.md file gives the general instructions on how to use the CookBook.md and run the analysis using run_analysis.R program

### CookBook.md
CookBook.md file describes the various steps performed to clean and transform the data, variable names and summary choices made

### run_analysis.R
This is the main R script that performs the cleaning and transformation of the data by summarizing the raw data by calculating mean of all the variables for each activity and each subject

#### Note: current directory that you are running the script from using the step 3 below should have the raw dataset donwloaded and unzipped into a directory called ('UCI HAR Dataset') 

### Steps to perform the analysis
1. switch to a directory on your machine where you would like to perform the analysis and save the tidy dataset
2. Download the raw data - wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. unzip the raw data into 'UCI HAR Dataset' - unzip getdata-projectfiles-UCI HAR Dataset.zip
4. download the github repository of dsgettingcleaningdata using command 'git clone https://github.com/gdtm86/dsgettingandcleaningdata.git'
5. open the R console
6. source('./dsgettingandcleaningdata/run_analysis.R')
7. Once the script runs with no errors, tidy dataset is saved in the current directory in a text file named  'summarized_tidy_data.txt'
