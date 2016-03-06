##STEP ZERO: LOAD LIBRARIES
library(dplyr)


##STEP ONE: MERGE THE TRAINING & TEST SETS

##Import the test data
x_test <- fread("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
subject_test <- fread("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
y_test <- fread("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

##Create a single test data table
test_data <- cbind(x_test, y_test, subject_test)

##Import the training data
x_train <- fread("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
subject_train <- fread("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
y_train <- fread("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

##Create a single training data table
train_data <- cbind(x_train, y_train, subject_train)

##Bind the two data sets together and convert into a data frame
grouped_data <- rbind(train_data, test_data)
grouped_data <- tbl_df(grouped_data)


##STEP THREE: USE DESCRIPTIVE NAMES FOR THE ACTIVITIES

##Import the features & add the subject and activity titles
features <- fread("./UCI HAR Dataset/features.txt", header = FALSE)
features$V2 <- gsub("[()-]","", features$V2)
add_features <- data.frame(V1 = c(1,2),V2 = c("Subject", "Activity"))

##Add the column labels to the 
features <- rbind(features, add_features)
colnames(grouped_data) <- features$V2
#grouped_data <- grouped_data %>% rename(Activity = V2)

##ADD THE ACTIVITY NAMES
activity <- fread("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
activity <- tbl_df(activity)
grouped_data <- full_join(grouped_data, activity, by = c('Activity' = 'V1'))

#Remove the numeric activity column but keep the descriptive activity column (rename to 'activity')
grouped_data$Activity <- NULL
grouped_data <- rename(grouped_data, Activity = V2)

##STEP TWO: EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STD
cols_of_interest <- grep(".*mean.*|.*std.*", colnames(grouped_data), value = TRUE)
cols_of_interest[80] <- "Subject" 
cols_of_interest[81] <- "V2" 
reduced_data <- grouped_data[,cols_of_interest]

##STEP FOUR: APPROPRIATELY LABEL THE VARIABLE NAMES
names(reduced_data) <- gsub("std", "_Std_", names(reduced_data))
names(reduced_data) <- gsub("mean", "_Mean_", names(reduced_data))
names(reduced_data) <- gsub("Acc", "Accelerator_", names(reduced_data))
names(reduced_data) <- gsub("Mag", "Magnitude_", names(reduced_data))
names(reduced_data) <- gsub("Gyro", "Gyroscope_", names(reduced_data))
names(reduced_data) <- gsub("^t", "time_", names(reduced_data))
names(reduced_data) <- gsub("^f+", "frequency_", names(reduced_data))
names(reduced_data) <- gsub("Body", "Body_", names(reduced_data))
names(reduced_data) <- gsub("Gravity", "Gravity_", names(reduced_data))

##FINAL: CLEAN DATA OUTPUT
tidy_data <- tbl_df(reduced_data)

write.table(tidy_data, "tidy_data.txt")

##STEP FIVE: CREATE A MEAN OF EVERY COLUMN BY PARTICIPANT AND ACTIVITY

calc_data <- tidy_data %>%
	group_by(Subject, V2) %>%
	summarise_each(funs(mean))
write.table(calc_data, "calc_data.txt")