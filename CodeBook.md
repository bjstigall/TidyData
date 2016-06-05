## Assumptions
The files are downloaded and the UCI HAR Dataset directory is in your working directory.

## Data
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The data is divided into files.  The files are:
features.txt - List of all features.
activity_labels.txt - Links the class labels with their activity name.
subject_train.txt - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
subject_test.txt - Subject labels.
X_test.txt - Test set.
Y_test.txt - Test labels.
X_train.txt - Training set.
Y_train.txt - Training labels.

## Variables
featuresNames - features.txt data
activityLabels - activity_labels.txt data

subjectTrain - subject_train.txt data
subjectTest - subject_test.txt data

xTest  - X_test.txt data
xTrain - X_train.txt data

yTest - Y_test.txt data
yTrain - Y_train.txt data

mergeData - the loaded data merged into a dataset
meanAndStd - mean and standard devation data

meanAndStdWithNames - meanAndStd with column names added.
tidySet - The second tidy set to write out.

##Processing the Data
1.  All data files are read in.
2.  Column names are determined.
3.  Rows and columns are meged into one data set
4.  Mean and standard devation are computed.
4.  The tidy dataset is written out.

##License
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

