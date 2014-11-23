# This script should work even if the original data is not in your working directory
# It reads the files directly from the web, unzip them, stores the ones that are needed and creates and saves the tidy data
# Thanks for stopping by
# First read the data from internet

##Open connection
temp <- tempfile()
##Download file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp)
##Unzip file
file<-unzip(temp)
##Print unzip to see files and extract the needed ones
file
##Extract the needed ones
test_raw_data <- read.table(file[15])
train_raw_data <- read.table(file[27])
features_vector <- read.table(file[2])
test_labels <- read.table(file[16])
train_labels <- read.table(file[28])
subject_test<-read.table(file[14])
subject_train<-read.table(file[26])
(activity_labels <-read.table(file[1])
##Close connection
unlink(temp)

#Before merging, let's create a variable to distinguish cases from the train or test files
#Notice that the 'environment' tab gives the number of cases effortlessly
test_id <- c(10001:12947) #there are 2,947 cases in the test dataset
train_id <- c(20001:27352) #there are 7,352 cases in the train dataset
##Append the id variable, the training labels and the subject numbers in the last column of both datasets
test_with_labels<-cbind(test_raw_data, test_id, test_labels, subject_test)
train_with_labels<-cbind(train_raw_data, train_id, train_labels, subject_train)

#The README file mentions that the feature vector applies to both, the train and test datasets.
#We assume that those features are displayed in the same order and, thus, we merge the rows (creating a long dataset).

##First we assign column names using the feature_vector
colnames(test_with_labels) <- features_vector[,2]
colnames(train_with_labels) <- features_vector[,2]
##Now merge data
One_data_set<-rbind(test_with_labels,train_with_labels)
##Assign label to id variable, training label and subject number
colnames(One_data_set)[562]<- c("Source_ID")
colnames(One_data_set)[563]<- c("Activity")
colnames(One_data_set)[564]<- c("Subject_No")

#Now we eliminate all variables that are not mean or standard deviation.

##First, let us create a binary vector with the wanted variables
###Note that the features_info file informs that mean() stands for mean calculations (brackets and slashes needed to avoid meanFreq)
###Mean and weighted average have different interpretations. We only keep unweighted mean (mean())
###The grepl function is used
mean_features <- grepl("mean\\(\\)",features_vector[,2])
std_features <- grepl("std\\(\\)",features_vector[,2])
###Merge the 2 vectors. Recall that TRUE or FALSE = TRUE
vars_to_keep = mean_features | std_features
###We also want to keep Source_ID, training label and subject number
vars_to_keep = c(vars_to_keep, TRUE, TRUE, TRUE)
summary(vars_to_keep) ###Notice that there are 69 variables total to keep. 66 from the assignment, 1 cause I strongly believe in knowing the source of info

##Extract only the measurements on the mean and standard deviation
only_meanstd_data <- One_data_set[,(vars_to_keep==TRUE)]

#Now to tidy up the names a bit

##Make syntactically valid names, as described in https://stat.ethz.ch/R-manual/R-devel/library/base/html/make.names.html
colnames(only_meanstd_data) <- make.names(colnames(only_meanstd_data),unique = TRUE)
##Eliminate ..
colnames(only_meanstd_data)<-gsub("\\.\\.","",colnames(only_meanstd_data))
##Swap . with _
colnames(only_meanstd_data)<-gsub("\\.","_",colnames(only_meanstd_data))
##Make mean and std more notorious
colnames(only_meanstd_data)<-gsub("mean","MEAN",colnames(only_meanstd_data))
colnames(only_meanstd_data)<-gsub("std","STD",colnames(only_meanstd_data))

#Final step, to write up the tidy variable

##We calculate the mean for each factor first
###We use aggregate function
###Notice that if applied correctly, the mean for each factor makes sense so we can pass those values also
###At this point we get rid of the id variable, is no longer needed
pre_tidy_data <- aggregate(only_meanstd_data[,c(1:66,68,69)], by = list(only_meanstd_data$Activity, only_meanstd_data$Subject_No), FUN = "mean")

##Now we have to clean this pre tidy data
###First, eliminate Group.1 and Group.2, we have Activity and Subject_No instead
pre_tidy_data$Group.1 <- NULL
pre_tidy_data$Group.2 <- NULL

##Finally, assign values to the Activity variable
pre_tidy_data$Activity <- factor(pre_tidy_data$Activity, levels = activity_labels[,1], labels = activity_labels[,2])

##Habemus tidy data
tidy_data <- pre_tidy_data

##Write it up
write.table(tidy_data, file = "Mean_results_per_participant.txt", row.names = FALSE)
