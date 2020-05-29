
## reading training data
subject_train <- read.table("train/subject_train.txt", header = FALSE)
X_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header = FALSE)


## reading test data
subject_test <- read.table("test/subject_test.txt", header = FALSE)
X_test <- read.table("test/X_test.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)


## reading the features file; I'll use it later
features <- read.table("features.txt", header=FALSE) ###features


## combining training and test data for each file
subject <- rbind(subject_train, subject_test)
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)


## naming each data frame
names(subject) <- "subject"
names(y) <- "activity"
names(X) <- features$V2


## combining all three dataframes into the same data frame
samsung_data <- cbind(subject, y, X)


## getting columns with mean and std
MeanStdColumns <- grep("mean\\(\\)|std\\(\\)", names(samsung_data)) ## extacting columns positions
samsung_data <- samsung_data[ ,c(1,2,MeanStdColumns)]    ## filtering dataframe


## naming the activities
## for this we have that 1:WALKING, 2:WALKING_UPSTAIRS, 3:WALKING_DOWNSTAIRS, 4:SITTING, 5:STANDING, 6:LAYING
samsung_data$activity <- factor(samsung_data$activity, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
                                                                 "SITTING", "STANDING", "LAYING"))

## last data frame: average of each variable for each activity and each subject
library(dplyr)
samsung_tidy_data <- samsung_data %>% group_by(subject, activity) %>% summarise_all(funs(mean))


## writing a CSV file with the tidy data
write.csv(samsung_tidy_data, "samsung_tidy_data.csv", row.names=FALSE)


