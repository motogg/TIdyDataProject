library(data.table)

# Load test
test_data = read.table("./test/X_test.txt")
test_label = readLines("./test/y_test.txt")
test_subject = readLines("./test/subject_test.txt")
# Load train
train_data = read.table("./train/X_train.txt")
train_label = readLines("./train/y_train.txt")
train_subject = readLines("./train/subject_train.txt")
# Load features
features = read.table("features.txt", stringsAsFactors = F)
additional_features = c("Activity", "Subject")


#form test and train dataframes
test = data.frame(test_data,label = test_label, subject = test_subject)
train = data.frame(train_data,label = train_label, subject = train_subject)

# Merge and rename dataframes
Data = rbind(train, test)
names(Data) = c(features[[2]], additional_features)

# Extracting measurements on mean and standard deviation along with acitivity and subject
Data = Data[, c(grep("mean\\()|std\\()", names(Data)), 562:563)] 

# Naming Activities with descriptive names
Data = transform(Data, Subject = factor(Subject) ,
                 Activity = factor(Activity, levels = c(1:6), 
                                   labels = c("WALKING","WALKING_UPSTAIRS",
                                              "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")))

# Labelling the dataset with descriptive names
names(Data) = gsub("\\.","",names(Data))
names(Data) = sub("^t","TimeDomain",names(Data))
names(Data) = sub("^f", "FrequencyDomain", names(Data))
names(Data) = sub("Acc","Acceleration ", names(Data))
names(Data) = sub("BodyBody", "Body", names(Data))
names(Data) = sub("Mag","Magnitude", names(Data))
names(Data) = sub("Gyro", "AngularVelocity ", names(Data))
names(Data) = sub("Jerk","Jerk ", names(Data))

Dnames = names(Data)
for (i in 1:ncol(Data)){
        
        if (grepl("mean", Dnames[i])){
                
                Dnames[i] = paste0(Dnames[i],"_Mean")
        }
        else if(grepl("std", Dnames[i])){
                
                Dnames[i] = paste0(Dnames[i],"_Sdev")
        }
}

names(Data) = Dnames

for (i in 1:ncol(Data)){
        
        if (grepl("X", Dnames[i])){
                
                Dnames[i] = paste0("X-Axis",Dnames[i])
        }
        else if(grepl("Y", Dnames[i])){
                
                Dnames[i] = paste0("Y-Axis",Dnames[i])
        }
        else if(grepl("Z", Dnames[i])){
                
                Dnames[i] = paste0("Z-Axis",Dnames[i])
        }
}

names(Data) = Dnames

names(Data) = sub("mean", "", names(Data))
names(Data) = sub("std", "", names(Data))
names(Data) = sub("\\()", "", names(Data))
names(Data) = sub(" X","", names(Data))
names(Data) = sub(" Y","", names(Data))
names(Data) = sub(" Z","", names(Data))
names(Data) = gsub(" ","",names(Data))


# Second Data set
Data2 = as.data.table(Data)
Data2= Data2[, lapply(.SD,mean), by = .(Activity,Subject)]
Data2 = as.data.frame(Data2)

# Write Second Data set to file
write.csv(Data2, "TidyData.csv", row.names = F)




