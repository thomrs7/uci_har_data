#install.packages("dplyr")}
library(dplyr)
#install.packages("tidyr")}
library(tidyr)

setwd('./R/uci_har_data/')

# Get the data if you dont have it
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="raw/har.zip", method="curl")
unzip("raw/har.zip", exdir="./")



# training data
train_x <- read.table("UCI HAR Dataset/train/X_train.txt", comment.char="")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subject"))
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activity"))
train_data <- cbind(train_x, train_subject, train_y)

# test data
test_x <- read.table("UCI HAR Dataset/test/X_test.txt", nrows=2947, comment.char="")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subject"))
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activity"))
test_data <- cbind(test_x, test_subject, test_y)

# merge both train and test data
data <- rbind(train_data, test_data)

#  mean and standard deviation
feature_list <- read.table("UCI HAR Dataset/features.txt", col.names = c("id", "name"))
features <- c(as.vector(feature_list[, "name"]), "subject", "activity")

# filter only features that has mean or std in the name
filtr_ft_ids <- grepl("mean|std|subject|activity", features) & !grepl("meanFreq", features)
filtered_data = data[, filtr_ft_ids]

# descriptive activity names to name the activities in the data set
labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("id", "name"))
for (i in 1:nrow(labels)) {
    filtered_data$activity[filtered_data$activity == labels[i, "id"]] <- as.character(labels[i, "name"])
}

# make feature names more human readble
filtered_names <- features[filtr_ft_ids]
filtered_names <- gsub("\\(\\)", "", filtered_names)
filtered_names <- gsub("Acc", "-acceleration", filtered_names)
filtered_names <- gsub("Mag", "-Magnitude", filtered_names)
filtered_names <- gsub("(Jerk|Gyro)", "", filtered_names)
filtered_names <- gsub("BodyBody", "body", filtered_names)
filtered_names <- tolower(filtered_names)
names(filtered_data) <- filtered_names

#save it
write.table(tbl_df(filtered_data) , file="tidy_data.txt", row.name=FALSE)


