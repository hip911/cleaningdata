sub.tr <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/train/subject_train.txt",sep="",header=F)
sub.te <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/test/subject_test.txt",sep="",header=F)
x.tr <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/train/X_train.txt",sep="",header=F)
x.te <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/test/X_test.txt",sep="",header=F)
y.tr <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/train/y_train.txt",sep="",header=F)
y.te <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/test/y_test.txt",sep="",header=F)
colnames <- read.table("~/cleaningdata/UCI\ HAR\ Dataset/features.txt",sep="",header=F)

observations <- data.frame(row.names=1:10299) #empty collector dataset

files <- c("body_acc_x","body_acc_y","body_acc_z","body_gyro_x","body_gyro_y","body_gyro_z","total_acc_x","total_acc_y","total_acc_z")
for (i in files) {
  test.data <- read.table(paste("~/cleaningdata/UCI\ HAR\ Dataset/test/Inertial\ Signals/",i,"_test.txt",sep=""), header=F, sep="")
  train.data <- read.table(paste("~/cleaningdata/UCI\ HAR\ Dataset/train/Inertial\ Signals/",i,"_train.txt",sep=""), header=F, sep="")
  temp <- rbind(test.data,train.data)
  observations <- cbind(observations,temp)
}


final_data <- cbind(rbind(sub.tr,sub.te),rbind(y.tr,y.te),rbind(x.tr,x.te),observations)