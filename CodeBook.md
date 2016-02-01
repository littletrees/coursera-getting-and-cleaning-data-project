# Code Book
This book describes the variables and the data in the tidy-1.txt file.

# Variables
* subject: 1 ~ 30
* activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Mean and standard deviation for each time measurement: 
* timeBodyAccMean-X
* timeBodyAccMean-Y
* timeBodyAccMean-Z
* timeBodyAccStdDev-X
* timeBodyAccStdDev-Y
* timeBodyAccStdDev-Z
* timeGravityAccMean-X
* timeGravityAccMean-Y
* timeGravityAccMean-Z
* timeGravityAccStdDev-X
* timeGravityAccStdDev-Y
* timeGravityAccStdDev-Z
* timeBodyAccJerkMean-X
* timeBodyAccJerkMean-Y
* timeBodyAccJerkMean-Z
* timeBodyAccJerkStdDev-X
* timeBodyAccJerkStdDev-Y
* timeBodyAccJerkStdDev-Z
* timeBodyGyroMean-X
* timeBodyGyroMean-Y
* timeBodyGyroMean-Z
* timeBodyGyroStdDev-X
* timeBodyGyroStdDev-Y
* timeBodyGyroStdDev-Z
* timeBodyGyroJerkMean-X
* timeBodyGyroJerkMean-Y
* timeBodyGyroJerkMean-Z
* timeBodyGyroJerkStdDev-X
* timeBodyGyroJerkStdDev-Y
* timeBodyGyroJerkStdDev-Z
* timeBodyAccMagMean
* timeBodyAccMagStdDev
* timeGravityAccMagMean
* timeGravityAccMagStdDev
* timeBodyAccJerkMagMean
* timeBodyAccJerkMagStdDev
* timeBodyGyroMagMean
* timeBodyGyroMagStdDev
* timeBodyGyroJerkMagMean
* timeBodyGyroJerkMagStdDev

Mean and standard deviation for each frequency measurement:
* freqBodyAccMean-X
* freqBodyAccMean-Y
* freqBodyAccMean-Z
* freqBodyAccStdDev-X
* freqBodyAccStdDev-Y
* freqBodyAccStdDev-Z
* freqBodyAccJerkMean-X
* freqBodyAccJerkMean-Y
* freqBodyAccJerkMean-Z
* freqBodyAccJerkStdDev-X
* freqBodyAccJerkStdDev-Y
* freqBodyAccJerkStdDev-Z
* freqBodyGyroMean-X
* freqBodyGyroMean-Y
* freqBodyGyroMean-Z
* freqBodyGyroStdDev-X
* freqBodyGyroStdDev-Y
* freqBodyGyroStdDev-Z
* freqBodyAccMagMean
* freqBodyAccMagStdDev
* freqBodyBodyAccJerkMagMean
* freqBodyBodyAccJerkMagStdDev
* freqBodyBodyGyroMagMean
* freqBodyBodyGyroMagStdDev
* freqBodyBodyGyroJerkMagMean
* freqBodyBodyGyroJerkMagStdDev

# Work done to get the tidy data
1. The features and activity labels are read in.
2. The variables inlcuding mean and standard deviation values are read in, others are excluded.
3. Train data sets are read in.
4. Test data sets are read in.
5. Train data and test are combined.
6. Varialbes names are reneamed to be more telling.
7. Mean values of each varaible for each activity and each subject are calculated.
8. Write data to tidy-1.txt.
