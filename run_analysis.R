
        #load libraries
        
        library(dplyr)
        library(data.table)
        
        
        #read data into environment -- data must be downloaded into user's working directory 
{
        
        xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
        ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
        subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
        ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
        subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
        features <- read.table("./UCI HAR Dataset/features.txt")
        
        
}


{#append columns to subject and activity files to ease in lookups and reviewing the data 
        subtrain <- cbind(subtrain, subject = c("subject train"))
        subtest <- cbind(subtest, subject = c("subject test"))
        ytest <- cbind(ytest, activitytype = c("test activity"))
        ytrain <- cbind(ytrain, activitytype = c("train activity"))}

{
        
        #give descriptive activity names by looking up from activity labels file to the y files
        
        names(activitylabels) <- c("activity", "activitydesc")
        names(ytrain) <- c("activity", "activitytype")        
        names(ytest) <- c("activity", "activitytype")  
        names(subtest) <- c("subject", "subjectsource") 
        names(subtrain) <- c("subject", "subjectsource") 
        
        ytest <- join(ytest, activitylabels, by = "activity")
        ytrain <- join(ytrain, activitylabels, by = "activity")      
        
}

{#apply the features names to the appropriate observations 
        
        names(xtrain) <- features$V2
        names(xtest) <- features$V2 }

{    
        #join the subject files and the activity files with one another, then append to the x files
        
        train <- cbind(ytrain, subtrain)
        test <- cbind(ytest, subtest)
        totaltest <- cbind(test, xtest)
        totaltrain <- cbind(train, xtrain)
        
}

merged <- rbind(totaltest, totaltrain)
colnameindex <- as.character(colnames(merged))
x <- make.unique(colnameindex)
x <- as.data.frame(x)
names(merged) <- x$x


merged <- select(merged, contains("MEAN"), contains("mean"), contains("STD"), contains("subject"), contains("subjectsource"), contains("activity"), contains("activitytype"), contains("activitydesc"))

tidy <-  merged %>% group_by(subject, activitytype, activitydesc) %>% summarise_each(funs(mean))


write.table(tidy, file = "./tidy.txt", row.name=FALSE)

