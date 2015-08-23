# Code Book


##Base Assumptions
*User has downloaded the UCI Data Set and Unzipped the Data



###Copying and pasting the script into R will result in the following steps being performed: 

1. The subject, x, and y files will be read to descriptive names for each of the train and test files. Additionally, the features abd activity labels files will be read in the environment. These will all be read as data.tables. 
2.  Columns are appended to the subject and y-axis files for identification purposes and ease of lookup. These identify whether the associated indexes are for a subject or an activity type, and additionally if they are training or testing variables. 
3.  Activity labels are then appended based on ```join
