# clear all variables
rm(list=ls(all=TRUE))

##
## NOTE: This script assumes the working directory is the UCI HAR Dataset path
##

sourcepath <- file.path(".\\")

# needed libraries
library(dplyr)

featuresNames <- read.table(file.path(sourcepath, "features.txt"), head=FALSE)
activityLabels = read.table(file.path(sourcepath, "activity_labels.txt"), head=FALSE)

subjectTrain <- read.table(file.path(sourcepath, "train", "subject_train.txt"),header = FALSE)
subjectTest <- read.table(file.path(sourcepath, "test" , "subject_test.txt"),header = FALSE)

xTest  <- read.table(file.path(sourcepath, "test" , "X_test.txt" ),header = FALSE)
xTrain <- read.table(file.path(sourcepath, "train", "X_train.txt"),header = FALSE)

yTest <- read.table(file.path(sourcepath, "test" , "Y_test.txt" ),header = FALSE)
yTrain <- read.table(file.path(sourcepath, "train", "Y_train.txt"),header = FALSE)

colnames(xTrain) <- featuresNames[,2] 
colnames(yTrain) <-"activityId"
colnames(subjectTrain) <- "subjectId"

colnames(xTest) <- featuresNames[,2] 
colnames(yTest) <- "activityId"
colnames(subjectTest) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

mergeData <- rbind(cbind(yTrain, subjectTrain, xTrain), cbind(yTest, subjectTest, xTest))

colNames <- colnames(mergeData)

meanAndStdNames <- (grepl("activityId" , colNames) | 
                    grepl("subjectId" , colNames) | 
                    grepl("mean" , colNames) | 
                    grepl("std" , colNames) 
                   )

meanAndStd <- mergeData[ , meanAndStdNames == TRUE]

meanAndStdWithNames <- merge(meanAndStd, activityLabels,
                             by='activityId',
                             all.x=TRUE)

tidySet <- aggregate(. ~subjectId + activityId, meanAndStdWithNames, mean)
tidySet <- tidySet[order(tidySet$subjectId, tidySet$activityId),]

write.table(tidySet, "secondTidySet.txt", row.name=FALSE)


