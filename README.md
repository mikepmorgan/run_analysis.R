# Getting and Cleaning Data Project


The repo ```run_analysis.R``` contains the code needed to run the file. The code is predicated on a user having downloaded the UCI HAR Dataset into their working directory, and having unzipped the files. 

The ```Code Book``` describes the variables that result from a run of the code, so a user can understand the output. It also shows the colnames output from R so a user can understand the measures being evaluated (e.g mean, st, etc). 

There are also notes within the R file for what the code is doing, as it is doing it. 

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


Finally, the ```tidy``` data has been pushed to GitHub as its own file. 


