##funtion that does as the requirements have stated
run_analysis <- function() {

#load dependant libraries
library(zip)
library(dplyr)

##check to see if a directory called data exists, if not, create one
  if(!file.exists("./data")){dir.create("./data")}

##download and unzip the relevant files
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile = "./data/dataset.zip", mode = "wb")
  unzip("./data/dataset.zip", exdir = "./data")

##read out the datasets and merge training and test sets
##test set tables
  table1 <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
  table1 <- cbind(read.table("./data/UCI HAR Dataset/test/y_test.txt"), table1)
  table1 <- cbind(read.table("./data/UCI HAR Dataset/test/subject_test.txt"), table1)
##training set tables
  table2 <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
  table2 <- cbind(read.table("./data/UCI HAR Dataset/train/y_train.txt"), table2)
  table2 <- cbind(read.table("./data/UCI HAR Dataset/train/subject_train.txt"), table2)
##bind both tables
    table <- rbind(table1,table2)

##only keep the measurements of the mean and std values
  features <- read.table("./data/UCI HAR Dataset/features.txt")
  wantedidx <- grep("std|mean", features$V2)
  table <- table[,c(1,2,wantedidx+2)]

##set column names
  names(table) <- c("Volunteer", "activity", as.character(features$V2[wantedidx]))
  names(table) <- gsub("([[:lower:]])([[:upper:]])","\\1 \\2" ,names(table))
  names(table) <- gsub("^t","Time:" ,names(table))
  names(table) <- gsub("^f","Frequency:" ,names(table))
  names(table) <- gsub("Acc"," Acceleration" ,names(table))
  names(table) <- gsub("Gyro","Gyroscope" ,names(table))
  names(table) <- gsub("Freq","Frequency" ,names(table))
  names(table) <- gsub("()","" ,names(table))

##set activity names
  table$activity <- factor(table$activity)
  label <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
  levels(table$activity) <- label$V2
  levels(table$activity)<-tolower(levels(table$activity))
  levels(table$activity) <- gsub("_", " ", levels(table$activity))

##generate new dataset of means for each volunteer and action
  newtable <- group_by(table,Volunteer,activity)
  newtable <- summarise_all(newtable, mean)
  
##returns both datasets in a list with the first one named tidytable and the second one named newtable
  my_list <- list(tidytable = table, meanstable = newtable)
}