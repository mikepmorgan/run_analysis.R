# Code Book


##Base Assumption: User has downloaded the ```UCI Data``` Set and unzipped the data into their WD.

###Copying and pasting the script into R will result in the following steps being performed: 

1. The subject, x, and y files will be read to descriptive names for each of the train and test files. Additionally, the features abd activity labels files will be read in the environment. These will all be read as data.tables. 
2.  Columns are appended to the subject and y-axis files for identification purposes and ease of lookup. These identify whether the associated indexes are for a subject or an activity type, and additionally if they are training or testing variables. 
3.  Activity labels are appropriately named and then appended based on the ```join``` function. 
4.  For the observations (i.e. xtrain, xtest) the features labels are appropriately applied based on ```names```. 
5.  ```cbind``` is then used to join all of the train files together, and all of the test files together into files that are referred to as ```totaltest``` and ```totaltrain```. 
6.  These files are then joined together using ```rbind```. This new file, ```merged``` is given unique names using the ```make.unique``` command on an indexed vector. There are duplicate names in the features description, which are then made singular. 
7.  The merged file is reduced to contain just the columns needed for the final analysis, including columns for the mean, STD, and activity/subjects.
8.  A tidy data set is created using the ```group_by``` and ```summarise_each``` commands in dplyr. The file has 91 variables (some are unneeded, like the original activity index, but do not hamper the analysis) and 180 observations. 
9.  ```write.table``` is used to putpul a file called "tidy.txt" to a user's working directory. 
