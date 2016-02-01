library('reshape2')
setwd('/Users/littletrees/Documents/coursera_r/UCI HAR Dataset')

# read in features and activity labels
features <- read.table('./features.txt', header = FALSE)
activityLabels <- read.table('./activity_labels.txt', header = FALSE)

# select mean and std variables
featuresMeanStd <- grep('.*mean.*|.*std.*',features[,2])

# read in train data sets
subjectTrain <- read.table('./train/subject_train.txt', header = FALSE)
yTrain <- read.table('./train/y_train.txt', header = FALSE)
xTrain <- read.table('./train/X_train.txt', header = FALSE)[featuresMeanStd]
train <- cbind(subjectTrain, yTrain, xTrain)

# read in test data sets
subjectTest <- read.table('./test/subject_test.txt', header = FALSE)
yTest <- read.table('./test/y_test.txt', header = FALSE)
xTest <- read.table('./test/X_test.txt', header = FALSE)[featuresMeanStd]
test <- cbind(subjectTest, yTest, xTest)

# merge train and test data sets (mean and std measurements)
completeData <- rbind(train, test)

# rename variables
featuresMeanStd.names <- features[featuresMeanStd,2]
featuresMeanStd.names <- gsub('^(t)', 'time', featuresMeanStd.names)
featuresMeanStd.names <- gsub('^(f)', 'freq', featuresMeanStd.names)
featuresMeanStd.names <- gsub('-mean', 'Mean', featuresMeanStd.names)
featuresMeanStd.names <- gsub('-std', 'StdDev', featuresMeanStd.names)
featuresMeanStd.names <- gsub('[()]', '', featuresMeanStd.names)

# label variables
colnames(completeData) <- c('subject', 'activity', featuresMeanStd.names)

# get mean
completeData$activity <- factor(completeData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
completeData$subject <- as.factor(completeData$subject)

completeData.melted <- melt(completeData, id = c("subject", "activity"))
completeData.mean <- dcast(completeData.melted, subject + activity ~ variable, mean)

# write tidy data
write.table(completeData.mean, "tidy-1.txt", row.names = FALSE, quote = FALSE)