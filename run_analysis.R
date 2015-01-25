## Run_analysis.R
## Getting and Cleaning Data Course project script

## You should create one R script called run_analysis.R that does the following. 

# Merges the training and the test sets to create one data set.
library(dplyr)

fileNames<-list.files("UCI HAR Dataset",recursive=T)
fileNames<-fileNames[c(1,2,14,15,16,26,27,28)]
fileNames<-paste("UCI HAR Dataset/", fileNames, sep="")

dataNames<-c("acLabels","features","subTest","Xtest","Ytest",
             "subTrain","Xtrain","Ytrain")

for (i in 1:8) {
    label = dataNames[i]
    file  = fileNames[i]
    assign(label, read.table(file))
    }

mData<-rbind(Xtest,Xtrain)
Ys<-rbind(Ytest,Ytrain)
subs<-rbind(subTest,subTrain)

mData2<-cbind(subs,Ys,mData)

colnames(mData2)<-c("SubjectID","Activity",as.character(features[,2]))

# Extracts only the measurements on the mean and standard deviation for 
# each measurement. 

ufeat<-!duplicated(features[2])
mData3<-subset(mData2,select = ufeat)
mData4<-select(mData3,SubjectID, Activity,contains("mean("),contains("std"))

# Uses descriptive activity names to name the activities in the data set
acs<-c("Walking","WalkingUpstairs","WalkingDownstairs","Sitting",
       "Standing","Laying")
for (n in 1:6) {
    mData4$Activity<-replace(mData4$Activity,mData4$Activity==n,acs[n])
    }

# Appropriately labels the data set with descriptive variable names. 
colnms<-names(mData4)
colnms<-gsub("-mean()","Mean",colnms,fixed=TRUE)
colnms<-gsub("-std()","StDev",colnms,fixed=TRUE)
colnms<-gsub("-X","InXdirection",colnms,fixed=TRUE)
colnms<-gsub("-Y","InYdirection",colnms,fixed=TRUE)
colnms<-gsub("-Z","InZdirection",colnms,fixed=TRUE)
colnms<-gsub("BodyBody","Body",colnms,fixed=TRUE)
colnms<-gsub("Mag","Magnitude",colnms,fixed=TRUE)
colnms<-gsub("tBody","timesignalBody",colnms,fixed=TRUE)
colnms<-gsub("tGravity","timesignalGravity",colnms,fixed=TRUE)
colnms<-gsub("fBody","frequencysignalBody",colnms,fixed=TRUE)
colnms<-gsub("Acc","Acceleration",colnms,fixed=TRUE)
colnms<-gsub("Gyro","AngularVelocity",colnms,fixed=TRUE)

colnames(mData4)<-colnms

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

tidy_data_2 <-  mData4 %>% 
                group_by(SubjectID,Activity) %>% 
                summarise_each(funs(mean))

## Write tidy data set to txt-file

write.table(tidy_data_2, file="tidydata.txt",row.names = FALSE)
