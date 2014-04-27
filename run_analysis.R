files <- c("body_acc_x")#,"body_acc_y","body_acc_z","body_gyro_x","body_gyro_y","body_gyro_z","total_acc_x","total_acc_y","total_acc_z")
for (i in files) {
  test.data <- read.table(paste("~/cleaningdata/dataset/test/Inertial\ Signals/",i,"_test.txt",sep=""), header=F, sep="")
  train.data <- read.table(paste("~/cleaningdata/dataset/train/Inertial\ Signals/",i,"_train.txt",sep=""), header=F, sep="")
  temp <- rbind(test.data,train.data)
  end <- colMeans(temp)
}
#test.data <- read.table("~/cleaningdata/dataset/test/Inertial\ Signals/body_acc_x_test.txt", header=F, sep="")
#train.data <- read.table("~/cleaningdata/dataset/train/Inertial\ Signals/body_acc_x_train.txt", header=F, sep="")