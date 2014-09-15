url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url=url,destfile="data.zip",mode="wb")
unzip("data.zip")
                        ##Before loading the data, unzip the data.zip

train<-read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
test<-read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
train.name<-read.table("UCI HAR Dataset/train/y_train.txt")
test.name<-read.table("UCI HAR Dataset/test/y_test.txt")
train.subject<-read.table("UCI HAR Dataset/train/subject_train.txt",stringsAsFactor=FALSE)
test.subject<-read.table("UCI HAR Dataset/test/subject_test.txt",stringsAsFactor=FALSE)
                        ##Load relevant data

train<-data.frame(train.subject,train.name,train)
test<-data.frame(test.subject,test.name,test)
total<-rbind(train,test)
feature<-read.table("UCI HAR Dataset/features.txt",header=FALSE,stringsAsFactor=FALSE)
name<-feature[,2]
name1<-c("subject","activity",name)
colnames(total)<-name1  ##Merge the table with feature names, subject and activity

position<-grep(c("mean[^Freq]()|std()"),name1)
position.activity<-c(1,2,position)
measure.mean.sd<-total[,position.activity] 
                        ##Get subset with all mean and std columns

activity.label<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactor=FALSE)
for (i in 1:nrow(measure.mean.sd)){
            for (n in 1:6){
            if (measure.mean.sd[i,2]==activity.label[n,1]){
                measure.mean.sd[i,2]<-activity.label[n,2]
            }   else n=n+1
            }
}                       ##Change the activity into activity labels

colnames(measure.mean.sd)<-tolower(colnames(measure.mean.sd))
colnames(measure.mean.sd)<-gsub("\\-","",colnames(measure.mean.sd))
col.name<-colnames(measure.mean.sd)
a<-gsub("^t","time.",col.name)
b<-gsub("^f","frequency.",a)
c<-gsub("body","body.",b)
d<-gsub("gravity","gravity.",c)
e<-gsub("acc","accelerometer.",d)
f<-gsub("gyro","gyroscope.",e)
g<-gsub("jerk","jerk.",f)
h<-gsub("std\\()","standarddeviation",g)
i<-gsub("mag","magnitude.",h)
j<-gsub("mean\\()","mean",i)
k<-gsub("x$",".xaxis",j)
l<-gsub("y$",".yaxis",k[3:68])
m<-gsub("z$",".zaxis",l)
n<-gsub("body.body.","body.",m)
name2<-c(k[1:2],n)
colnames(measure.mean.sd)<-name2
                       ##Label the data set with descriptive variable names
                       
library(reshape2)
tidy.data<-NA
for (i in 1:30){
        subject.sub<-subset(measure.mean.sd,measure.mean.sd$subject==i)
        names<-colnames(subject.sub)
        names<-names[-c(1:2)]
        datamelt<-melt(subject.sub,id=c("subject","activity"),measure.var=names)
        activityData<-dcast(datamelt,activity~variable,mean)
        subject<-rep(i,6)
        activityData<-data.frame(subject,activityData)
        tidy.data<-rbind(tidy.data,activityData)
}
        tidy.data<-tidy.data[-1,]
                        ##Create a new table named tidy.data with the average of 
                        ##each variable for each activity and each subject

write.table(tidy.data,"tidy.data.txt",row.name=FALSE,sep="\t")
