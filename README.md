## Readme

Coursera 'Getting and Cleaning Data' 
Course project Readme-file

The run_analysis.R file requires the unzipped data folder "UCI HAR Dataset" to be in the working directory, without any adjustments or additions made to it.


In the next part, for each part of the script it is explained how it contributes to come to the required tidy data set from the raw data provided in the UCI HAR Dataset

First, the 'dplyr' package is loaded into the working environment, as some functions of it are required in the script.

    library(dplyr)

Next, the file names are looked up, the required files are selected and stored in a variable. Also a vector with names to store the data sets in is created.

    fileNames<-list.files("UCI HAR Dataset",recursive=T)
    fileNames<-fileNames[c(1,2,14,15,16,26,27,28)]
    fileNames<-paste("UCI HAR Dataset/", fileNames, sep="")

    dataNames<-c("acLabels","features","subTest","Xtest","Ytest",
                    "subTrain","Xtrain","Ytrain")

With the following loop, each required file is read into the working environment and labeled accordingly.

    for (i in 1:8) {
        label = dataNames[i]
        file  = fileNames[i]
        assign(label, read.table(file))
        }

Next, the raw measurement data is joined together for the test and training sets. Also the activity labels from the Y_test en Y_train files and subject identification numbers are coupled to the corresponding measurement data. The resulting data set is stored in mData2.

    mData<-rbind(Xtest,Xtrain)
    Ys<-rbind(Ytest,Ytrain)
    subs<-rbind(subTest,subTrain)

    mData2<-cbind(subs,Ys,mData)

A vector for the column names is constructed, partially based on the information in the features.txt file, and attached to the intermediate data set 'mData2'.

    colnames(mData2)<-c("SubjectID","Activity",as.character(features[,2]))

Next, first a preselection is made to remove the columns with a duplicated column name from the intermediate data set 'mData2', since the select command from dplyr cannot handle duplicated column names. This can be done safely since the duplicated columns do not contain any required data on mean or standard deviation from the measured data.
Then, only the required columns with data on the mean and standard deviation of each measured variable is extracted from the intermediate data set 'mData3'. This data set is stored in 'mData4'.

    ufeat<-!duplicated(features[2])
    mData3<-subset(mData2,select = ufeat)
    mData4<-select(mData3,SubjectID, Activity,contains("mean("),contains("std"))

Next, the numbers 1 to 6 in the Activity column are replaced with their corresponding activity name, according to the activity_labels.txt file.

    acs<-c("Walking","WalkingUpstairs","WalkingDownstairs","Sitting",
            "Standing","Laying")
    for (n in 1:6) {
        mData4$Activity<-replace(mData4$Activity,mData4$Activity==n,acs[n])
        }

Next, the variables are labeled ppropriately with descriptive variable names. Therefore abbreviations are spelled out and unwanted characters like "(", ")" and "-" are removed. In order to improve readability due to the length of the variable names, variable names are written in camelCase. More information on the variables can be found in the Codebook.md file.

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

From the resulting tidy data set, for each combination of person and activity, the average value of each variable is calculated and written to a new, tidy data set called 'tidy_data_2'.

    tidy_data_2 <-  mData4 %>% 
                    group_by(SubjectID,Activity) %>% 
                    summarise_each(funs(mean))

Finally, the resulting tidy data set is written to a txt-file called 'tidydata.txt'. 

    write.table(tidy_data_2, file="tidydata.txt",row.names = FALSE)

Now a tidy data set is obtained, with each row containing one observation, each column containing one variable, and each variable appropriately labeled.


*End of Readme file*