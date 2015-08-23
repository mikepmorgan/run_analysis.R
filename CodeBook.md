# Code Book


##Base Assumption: User has downloaded the UCI Data Set and unzipped the data into their WD.

###Copying and pasting the script into R will result in the following steps being performed: 

1. The subject, x, and y files will be read to descriptive names for each of the train and test files. Additionally, the features abd activity labels files will be read in the environment. These will all be read as data.tables. 
2.  Columns are appended to the subject and y-axis files for identification purposes and ease of lookup. These identify whether the associated indexes are for a subject or an activity type, and additionally if they are training or testing variables. 
3.  Activity labels are appropriately named and then appended based on the ```join``` function. 
4.  For the observations (i.e. xtrain, xtest) the features labels are appropriately applied based on ```names```. 
5.  ```cbind``` is then used to join all of the train files together, and all of the test files together into files that are referred to as ```totaltest``` and ```totaltrain```. 
6.  These files are then joined together using ```rbind```. This new file, ```merged``` is given unique names using the ```make.unique``` command on an indexed vector. There are duplicate names in the features description, which are then made singular. 
7.  The merged file is reduced to contain just the columns needed for the final analysis, including columns for the mean, STD, and activity/subjects. This is done by using ```select``` from dplyr on any column that had MEAN, mean, std, or STD within the column name. Additionally, this pulled in the activity type (e.g. walking) the subject, and also activity description based on whether the activity was monitored during training or testing.
8.  A tidy data set is created using the ```group_by``` and ```summarise_each``` commands in dplyr. The file has 91 variables (some are unneeded, like the original activity index, but do not hamper the analysis) and 180 observations. 
9.  ```sub``` was used to clean up some of the column name issues, such as () and BodyBody. 
10.  ```write.table``` is used to output a file called "tidy.txt" to a user's working directory. 

The remaining columns in the tidy data file are only for the observations related to the standard deviation and the mean. 

The column names are below (copied from R): 

[1] "subject"                              "activitytype"                         "activitydesc"                        
 [4] "tBodyAcc_mean-X"                      "tBodyAcc_mean-Y"                      "tBodyAcc_mean-Z"                     
 [7] "tGravityAcc_mean-X"                   "tGravityAcc_mean-Y"                   "tGravityAcc_mean-Z"                  
[10] "tBodyAccJerk_mean-X"                  "tBodyAccJerk_mean-Y"                  "tBodyAccJerk_mean-Z"                 
[13] "tBodyGyro_mean-X"                     "tBodyGyro_mean-Y"                     "tBodyGyro_mean-Z"                    
[16] "tBodyGyroJerk_mean-X"                 "tBodyGyroJerk_mean-Y"                 "tBodyGyroJerk_mean-Z"                
[19] "tBodyAccMag_mean"                     "tGravityAccMag_mean"                  "tBodyAccJerkMag_mean"                
[22] "tBodyGyroMag_mean"                    "tBodyGyroJerkMag_mean"                "fBodyAcc_mean-X"                     
[25] "fBodyAcc_mean-Y"                      "fBodyAcc_mean-Z"                      "fBodyAcc_meanFreq-X"                 
[28] "fBodyAcc_meanFreq-Y"                  "fBodyAcc_meanFreq-Z"                  "fBodyAccJerk_mean-X"                 
[31] "fBodyAccJerk_mean-Y"                  "fBodyAccJerk_mean-Z"                  "fBodyAccJerk_meanFreq-X"             
[34] "fBodyAccJerk_meanFreq-Y"              "fBodyAccJerk_meanFreq-Z"              "fBodyGyro_mean-X"                    
[37] "fBodyGyro_mean-Y"                     "fBodyGyro_mean-Z"                     "fBodyGyro_meanFreq-X"                
[40] "fBodyGyro_meanFreq-Y"                 "fBodyGyro_meanFreq-Z"                 "fBodyAccMag_mean"                    
[43] "fBodyAccMag_meanFreq"                 "fBodyAccJerkMag_mean"                 "fBodyAccJerkMag_meanFreq"            
[46] "fBodyGyroMag_mean"                    "fBodyGyroMag_meanFreq"                "fBodyGyroJerkMag_mean"               
[49] "fBodyGyroJerkMag_meanFreq"            "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)"
[52] "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[55] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"                 "tBodyAcc_std-X"                      
[58] "tBodyAcc_std-Y"                       "tBodyAcc_std-Z"                       "tGravityAcc_std-X"                   
[61] "tGravityAcc_std-Y"                    "tGravityAcc_std-Z"                    "tBodyAccJerk_std-X"                  
[64] "tBodyAccJerk_std-Y"                   "tBodyAccJerk_std-Z"                   "tBodyGyro_std-X"                     
[67] "tBodyGyro_std-Y"                      "tBodyGyro_std-Z"                      "tBodyGyroJerk_std-X"                 
[70] "tBodyGyroJerk_std-Y"                  "tBodyGyroJerk_std-Z"                  "tBodyAccMag_std"                     
[73] "tGravityAccMag_std"                   "tBodyAccJerkMag_std"                  "tBodyGyroMag_std"                    
[76] "tBodyGyroJerkMag_std"                 "fBodyAcc_std-X"                       "fBodyAcc_std-Y"                      
[79] "fBodyAcc_std-Z"                       "fBodyAccJerk_std-X"                   "fBodyAccJerk_std-Y"                  
[82] "fBodyAccJerk_std-Z"                   "fBodyGyro_std-X"                      "fBodyGyro_std-Y"                     
[85] "fBodyGyro_std-Z"                      "fBodyAccMag_std"                      "fBodyAccJerkMag_std"                 
[88] "fBodyGyroMag_std"                     "fBodyGyroJerkMag_std"                 "subjectsource"                       
[91] "activity"
