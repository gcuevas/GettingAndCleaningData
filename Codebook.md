#CODEBOOK
##1 - Summary Choices
For each activity (6) and each person in the study (30), the mean for certain variables was calculated. Those variables are the ones related to the Mean or Standard deviation of the measures. Weighted means (ie MeanFreq) and other means were not included. They were not included because they are conceptually different.
Thus, the dataset contains 180 cases (rows). Each case represents an activity performed by an individual. Two variables have been included at the end of the dataset to distinguish the activity (Activity) and the individual (Subject_No). When another user takes this dataset to modify it, s/he will usually append the new variables at the end. Thus, it makes sense that the identifier variables be at the end because they are usually the variables that a user creating new variables would want to see the most. That is especially true if the user wants to use (God forbids) Excel or SPSS.

##2 – Experimental Design
None

##3 – List of variables in the dataset
Below you will find the list of variables and information about them. Notice that I am not an expert on the topic. I would have done a disservice by changing the names of the variables because I do not understand what they represent. I only tidy them up by removing illegal characters in R. My null understanding carries over to the description of the variables. Please forgive me for that. Finally, I could not find the units in which the variables were measured. Given that they talk about acceleration, they might be in m/sec^2, but I am not sure about it.
Variables in the order in which they appear in the tidy data set (from left to right):

#####tBodyAcc_MEAN_X
Mean of the linear acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyAcc_MEAN_Y
Mean of the linear acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyAcc_MEAN_Z
Mean of the linear acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyAcc_STD_X
Standard deviation of the linear acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyAcc_STD_Y
Standard deviation of the linear acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyAcc_STD_Z
Standard deviation of the linear acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tGravityAcc_MEAN_X
Mean of the linear acceleration for the X  Gravitational motion component in the Time domain  - Unknown units

#####tGravityAcc_MEAN_Y
Mean of the linear acceleration for the Y  Gravitational motion component in the Time domain  - Unknown units

#####tGravityAcc_MEAN_Z
Mean of the linear acceleration for the Z  Gravitational motion component in the Time domain  - Unknown units

#####tGravityAcc_STD_X
Standard deviation of the linear acceleration for the X  Gravitational motion component in the Time domain  - Unknown units

#####tGravityAcc_STD_Y
Standard deviation of the linear acceleration for the Y  Gravitational motion component in the Time domain  - Unknown units

#####tGravityAcc_STD_Z
Standard deviation of the linear acceleration for the Z  Gravitational motion component in the Time domain  - Unknown units

#####tBodyAccJerk_MEAN_X
Mean of the Jerk  linear acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyAccJerk_MEAN_Y
Mean of the Jerk  linear acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyAccJerk_MEAN_Z
Mean of the Jerk  linear acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyAccJerk_STD_X
Standard deviation of the Jerk  linear acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyAccJerk_STD_Y
Standard deviation of the Jerk  linear acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyAccJerk_STD_Z
Standard deviation of the Jerk  linear acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyGyro_MEAN_X
Mean of the angular acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyGyro_MEAN_Y
Mean of the angular acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyGyro_MEAN_Z
Mean of the angular acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyGyro_STD_X
Standard deviation of the angular acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyGyro_STD_Y
Standard deviation of the angular acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyGyro_STD_Z
Standard deviation of the angular acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_MEAN_X
Mean of the Jerk  angular acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_MEAN_Y
Mean of the Jerk  angular acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_MEAN_Z
Mean of the Jerk  angular acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_STD_X
Standard deviation of the Jerk  angular acceleration for the X Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_STD_Y
Standard deviation of the Jerk  angular acceleration for the Y Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerk_STD_Z
Standard deviation of the Jerk  angular acceleration for the Z Body motion component in the Time domain  - Unknown units

#####tBodyAccMag_MEAN
Mean of the Magnitude linear acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyAccMag_STD
Standard deviation of the Magnitude linear acceleration for the Body motion component in the Time domain  - Unknown units

#####tGravityAccMag_MEAN
Mean of the Magnitude linear acceleration for the Angular motion component in the Time domain  - Unknown units

#####tGravityAccMag_STD
Standard deviation of the Magnitude linear acceleration for the Angular motion component in the Time domain  - Unknown units

#####tBodyAccJerkMag_MEAN
Mean of the Jerk Magnitude linear acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyAccJerkMag_STD
Standard deviation of the Jerk Magnitude linear acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyGyroMag_MEAN
Mean of the Magnitude angular acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyGyroMag_STD
Standard deviation of the Magnitude angular acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerkMag_MEAN
Mean of the Jerk Magnitude angular acceleration for the Body motion component in the Time domain  - Unknown units

#####tBodyGyroJerkMag_STD
Standard deviation of the Jerk Magnitude angular acceleration for the Body motion component in the Time domain  - Unknown units

#####fBodyAcc_MEAN_X
Mean of the linear acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyAcc_MEAN_Y
Mean of the linear acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyAcc_MEAN_Z
Mean of the linear acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyAcc_STD_X
Standard deviation of the linear acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyAcc_STD_Y
Standard deviation of the linear acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyAcc_STD_Z
Standard deviation of the linear acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_MEAN_X
Mean of the Jerk  linear acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_MEAN_Y
Mean of the Jerk  linear acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_MEAN_Z
Mean of the Jerk  linear acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_STD_X
Standard deviation of the Jerk  linear acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_STD_Y
Standard deviation of the Jerk  linear acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyAccJerk_STD_Z
Standard deviation of the Jerk  linear acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_MEAN_X
Mean of the angular acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_MEAN_Y
Mean of the angular acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_MEAN_Z
Mean of the angular acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_STD_X
Standard deviation of the angular acceleration for the X Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_STD_Y
Standard deviation of the angular acceleration for the Y Body motion component in the Frequency domain  - Unknown units

#####fBodyGyro_STD_Z
Standard deviation of the angular acceleration for the Z Body motion component in the Frequency domain  - Unknown units

#####fBodyAccMag_MEAN
Mean of the Magnitude linear acceleration for the Body motion component in the Frequency domain  - Unknown units

#####fBodyAccMag_STD
Standard deviation of the Magnitude linear acceleration for the Body motion component in the Frequency domain  - Unknown units

#####fBodyBodyAccJerkMag_MEAN
Mean of the Jerk Mag linear acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####fBodyBodyAccJerkMag_STD
Standard deviation of the Jerk Mag linear acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####fBodyBodyGyroMag_MEAN
Mean of the Magnitude angular acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####fBodyBodyGyroMag_STD
Standard deviation of the angular acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####fBodyBodyGyroJerkMag_MEAN
Mean of the Jerk Magnitude angular acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####fBodyBodyGyroJerkMag_STD
Standard deviation of the Jerk Magnitude angular acceleration for the Body motion component in the Frequency domain - Compound measure- Unknown units

#####Activity
Is the variable that describes the performed activities the 30 people of the experiment performed. The info does not change from the raw data. The codes for this variable are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
Units - Activities

#####Subject_No
Is the person who performed those activities, from subject 1 to subject 30. - Units: People
