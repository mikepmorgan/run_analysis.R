# Code Book


##Base Assumption: User has downloaded the UCI Data Set and unzipped the data into their WD.

The remaining columns in the tidy data file are only for the observations related to the standard deviation and the mean. 

Additionally, these observations are split by activity type. Activity type denotes if a given activity (e.g. ```SITTING``` by subject 2) was observed during training, or during testing. Activitydesc indicates what the activity is, for instance, walking, sitting, or walking up or down the stairs. The ```subject``` column is the observed participant in the studies, and ```subjectsource``` is whether the subject was sourced from training or testing. 

The remaining observations are: 

1. mean: Mean value
2. std: Standard deviation

Other keys and unit notes: 

(Please note: I could have easily changed the columns to be the longer name. However, I found the long-form column names to be very clunky and not helpful. I think it is easier to just know what acc or gyro stands for rather than dealing with very long column names.) 

1. Acc = acceleration from the accelerometer (total acceleration) and the estimated body acceleration
2. Gyro = Triaxial Angular velocity from the gyroscope
3. Leading "t" = Time domain unit 
4. Leading "f" = Frequency domain siginals unit 

The column names are below (copied from R): 

[1] "subject"                 

 [2] "activitytype"           
 
 [3] "activitydesc"          
 
 [4] "tBodyAcc_mean-X"       
 
 [5] "tBodyAcc_mean-Y"     
 
 [6] "tBodyAcc_mean-Z"       
 
 [7] "tGravityAcc_mean-X"       
 
 [8] "tGravityAcc_mean-Y"       
 
 [9] "tGravityAcc_mean-Z"    
 
[10] "tBodyAccJerk_mean-X"      

[11] "tBodyAccJerk_mean-Y"     

[12] "tBodyAccJerk_mean-Z"    

[13] "tBodyGyro_mean-X"      

[14] "tBodyGyro_mean-Y"    

[15] "tBodyGyro_mean-Z"      

[16] "tBodyGyroJerk_mean-X"    

[17] "tBodyGyroJerk_mean-Y"   

[18] "tBodyGyroJerk_mean-Z"   

[19] "tBodyAccMag_mean"      

[20] "tGravityAccMag_mean"     

[21] "tBodyAccJerkMag_mean"    

[22] "tBodyGyroMag_mean"       

[23] "tBodyGyroJerkMag_mean"     

[24] "fBodyAcc_mean-X"          

[25] "fBodyAcc_mean-Y"       

[26] "fBodyAcc_mean-Z"       

[27] "fBodyAcc_meanFreq-X"       

[28] "fBodyAcc_meanFreq-Y"   

[29] "fBodyAcc_meanFreq-Z"     

[30] "fBodyAccJerk_mean-X"   

[31] "fBodyAccJerk_mean-Y"       

[32] "fBodyAccJerk_mean-Z"      

[33] "fBodyAccJerk_meanFreq-X"    

[34] "fBodyAccJerk_meanFreq-Y"    

[35] "fBodyAccJerk_meanFreq-Z"   

[36] "fBodyGyro_mean-X"   

[37] "fBodyGyro_mean-Y"  

[38] "fBodyGyro_mean-Z"   

[39] "fBodyGyro_meanFreq-X"   

[40] "fBodyGyro_meanFreq-Y"    

[41] "fBodyGyro_meanFreq-Z"   

[42] "fBodyAccMag_mean"   

[43] "fBodyAccMag_meanFreq"       

[44] "fBodyAccJerkMag_mean"       

[45] "fBodyAccJerkMag_meanFreq"  

[46] "fBodyGyroMag_mean"        

[47] "fBodyGyroMag_meanFreq"     

[48] "fBodyGyroJerkMag_mean"     

[49] "fBodyGyroJerkMag_meanFreq"   

[50] "angle(tBodyAccMean,gravity)"      

[51] "angle(tBodyAccJerkMean),gravityMean)"

[52] "angle(tBodyGyroMean,gravityMean)"    

[53] "angle(tBodyGyroJerkMean,gravityMean)"

[54] "angle(X,gravityMean)"      

[55] "angle(Y,gravityMean)"        

[56] "angle(Z,gravityMean)"     

[57] "tBodyAcc_std-X"        

[58] "tBodyAcc_std-Y"        

[59] "tBodyAcc_std-Z"     

[60] "tGravityAcc_std-X"     

[61] "tGravityAcc_std-Y"   

[62] "tGravityAcc_std-Z"          

[63] "tBodyAccJerk_std-X"        

[64] "tBodyAccJerk_std-Y"      

[65] "tBodyAccJerk_std-Z"     

[66] "tBodyGyro_std-X"          

[67] "tBodyGyro_std-Y"       

[68] "tBodyGyro_std-Z"         

[69] "tBodyGyroJerk_std-X"     

[70] "tBodyGyroJerk_std-Y"    

[71] "tBodyGyroJerk_std-Z"    

[72] "tBodyAccMag_std"        

[73] "tGravityAccMag_std"    

[74] "tBodyAccJerkMag_std"   

[75] "tBodyGyroMag_std"     

[76] "tBodyGyroJerkMag_std" 

[77] "fBodyAcc_std-X"      

[78] "fBodyAcc_std-Y"      

[79] "fBodyAcc_std-Z"      

[80] "fBodyAccJerk_std-X"   

[81] "fBodyAccJerk_std-Y"     

[82] "fBodyAccJerk_std-Z"    

[83] "fBodyGyro_std-X"          

[84] "fBodyGyro_std-Y"   

[85] "fBodyGyro_std-Z"         

[86] "fBodyAccMag_std"        

[87] "fBodyAccJerkMag_std"     

[88] "fBodyGyroMag_std"       

[89] "fBodyGyroJerkMag_std"   

[90] "subjectsource"         

[91] "activity"

