#Course Project

During the course project an R-script was created in order to extract a tidy dataset. The raw dataset contained different observations regarding 6 different activities that 30 different individuals performed. The raw dataset was stored in two different datasets. The tidy dataset summarizes the data for some of the variables for each activity per individual in one single database The document gives a bird's eye view of the process. The commented script and the codebook contain more detailed information.


##How was the script created?

The script was created by following the instruction of the assignment, although in a slightly different order. For the sake of clarity, the steps are described in the order in which the assignment presented them.


###Merging the training and the test sets to create one data set.

To merge the datasets:

1. The internet file was read.
Notice that the script reads the file directly from the link, thus it is not necessary to have the zip file stored in the working directory.

2. The necessary variables were extracted and stored as tables:
  1. The test data, its labels and the file with the info about the subjects in the test set.
  2. The train data, its labels and the file with the info about the subjects in the train set.
  3. The activity labels dataset
  4. The features vector.

3. The sets in 2i were merged attaching columns. Same for the sets in 2ii. They represented info about the same type of cases (train and test).
4. The sets of 3 were merged by attaching rows.


###Extracting only the measurements on the mean and standard deviation for each measurement.

The measures ending with mean() or std(), along with the subject and activity info were kept. The rest of the variables were discarded. I believe that this makes sense because other variables, like the ones ending in meanFreq() are conceptually different and thus would need a different table in order for them to by tidy and the assignment only asked for One table, so ;)

The end result was that 66 measurements were kept.


###Using descriptive activity names to name the activities in the data set

The features vector that was extracted from 2iv was used to label the columns. The activity and subject variables were labeled manually. In both cases the colnames function was used.


###Labeling appropriately the data set with descriptive variable names

The names above used illegal characters in R. Those characters were removed through the gsub function. Additionally, the dots were replaced with underscores. No additional changes were made. As mentioned in the Codebook document, I am not an expert on the topic and would have done a disservice by changing the names of the variables because I do not understand what they represent.

Additionally, the labels for the factors of the activity variable were added.


###creating a second, independent tidy data set with the average of each variable for each activity and each subject.

This was achieved by using the aggregate function. The function used the Activity and Subject_No vatiables as factors. It attaches the factors again, thus they were removed manually.

Finally, the tidy data was created using the assignment's technique: through the write.table command.


##Why does the result is a Tidy Data?

Here is how I justify that Mean_results_per_participant.txt is a tidy dataset. The steps are taken from "The Components of Tidy Data" file from the first week of class' notes.

###Each variable measured is in one column

From the beginning, the raw data contained one variable per column.

###Each different observation is in one different row

The tidy data is a summary of measurements of 30 participants performing 6 activities. Thus it should contain 180 cases (rows), which is the case.

###There is one table for each kind of variable

There is only one table which represents the mean of the means and standard deviation of what the devices recorded.

