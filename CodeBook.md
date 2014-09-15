##Code Book for run_analysis.R
===============================
Introduction:

Data used in this R script come from dataset UCI HAR Dataset and contain only the measurements on the mean and standard deviation for each measurement.

The output tidy data includes the average of each variable for each activity and each subject. 

===============================
Feature names:

 [1] "subject"                                                           
 [2] "activity"                                                          
 [3] "time.body.accelerometer.mean.xaxis"                                
 [4] "time.body.accelerometer.mean.yaxis"                                
 [5] "time.body.accelerometer.mean.zaxis"                                
 [6] "time.body.accelerometer.standarddeviation.xaxis"                   
 [7] "time.body.accelerometer.standarddeviation.yaxis"                   
 [8] "time.body.accelerometer.standarddeviation.zaxis"                   
 [9] "time.gravity.accelerometer.mean.xaxis"                             
[10] "time.gravity.accelerometer.mean.yaxis"                             
[11] "time.gravity.accelerometer.mean.zaxis"                             
[12] "time.gravity.accelerometer.standarddeviation.xaxis"                
[13] "time.gravity.accelerometer.standarddeviation.yaxis"                
[14] "time.gravity.accelerometer.standarddeviation.zaxis"                
[15] "time.body.accelerometer.jerk.mean.xaxis"                           
[16] "time.body.accelerometer.jerk.mean.yaxis"                           
[17] "time.body.accelerometer.jerk.mean.zaxis"                           
[18] "time.body.accelerometer.jerk.standarddeviation.xaxis"              
[19] "time.body.accelerometer.jerk.standarddeviation.yaxis"              
[20] "time.body.accelerometer.jerk.standarddeviation.zaxis"              
[21] "time.body.gyroscope.mean.xaxis"                                    
[22] "time.body.gyroscope.mean.yaxis"                                    
[23] "time.body.gyroscope.mean.zaxis"                                    
[24] "time.body.gyroscope.standarddeviation.xaxis"                       
[25] "time.body.gyroscope.standarddeviation.yaxis"                       
[26] "time.body.gyroscope.standarddeviation.zaxis"                       
[27] "time.body.gyroscope.jerk.mean.xaxis"                               
[28] "time.body.gyroscope.jerk.mean.yaxis"                               
[29] "time.body.gyroscope.jerk.mean.zaxis"                               
[30] "time.body.gyroscope.jerk.standarddeviation.xaxis"                  
[31] "time.body.gyroscope.jerk.standarddeviation.yaxis"                  
[32] "time.body.gyroscope.jerk.standarddeviation.zaxis"                  
[33] "time.body.accelerometer.magnitude.mean"                            
[34] "time.body.accelerometer.magnitude.standarddeviation"               
[35] "time.gravity.accelerometer.magnitude.mean"                         
[36] "time.gravity.accelerometer.magnitude.standarddeviation"            
[37] "time.body.accelerometer.jerk.magnitude.mean"                       
[38] "time.body.accelerometer.jerk.magnitude.standarddeviation"          
[39] "time.body.gyroscope.magnitude.mean"                                
[40] "time.body.gyroscope.magnitude.standarddeviation"                   
[41] "time.body.gyroscope.jerk.magnitude.mean"                           
[42] "time.body.gyroscope.jerk.magnitude.standarddeviation"              
[43] "frequency.body.accelerometer.mean.xaxis"                           
[44] "frequency.body.accelerometer.mean.yaxis"                           
[45] "frequency.body.accelerometer.mean.zaxis"                           
[46] "frequency.body.accelerometer.standarddeviation.xaxis"              
[47] "frequency.body.accelerometer.standarddeviation.yaxis"              
[48] "frequency.body.accelerometer.standarddeviation.zaxis"              
[49] "frequency.body.accelerometer.jerk.mean.xaxis"                      
[50] "frequency.body.accelerometer.jerk.mean.yaxis"                      
[51] "frequency.body.accelerometer.jerk.mean.zaxis"                      
[52] "frequency.body.accelerometer.jerk.standarddeviation.xaxis"         
[53] "frequency.body.accelerometer.jerk.standarddeviation.yaxis"         
[54] "frequency.body.accelerometer.jerk.standarddeviation.zaxis"         
[55] "frequency.body.gyroscope.mean.xaxis"                               
[56] "frequency.body.gyroscope.mean.yaxis"                               
[57] "frequency.body.gyroscope.mean.zaxis"                               
[58] "frequency.body.gyroscope.standarddeviation.xaxis"                  
[59] "frequency.body.gyroscope.standarddeviation.yaxis"                  
[60] "frequency.body.gyroscope.standarddeviation.zaxis"                  
[61] "frequency.body.accelerometer.magnitude.mean"                       
[62] "frequency.body.accelerometer.magnitude.standarddeviation"          
[63] "frequency.body.accelerometer.jerk.magnitude.mean"             
[64] "frequency.body.accelerometer.jerk.magnitude.standarddeviation"                                         
[65] "frequency.body.gyroscope.magnitude.mean"                      
[66] "frequency.body.gyroscope.magnitude.standarddeviation"         
[67] "frequency.body.gyroscope.jerk.magnitude.mean"                 
[68] "frequency.body.gyroscope.jerk.magnitude.standarddeviation" 

===============================
Brief description:

- The output is a table with 6(activity)*30(subject) rows and 68(66 variables including  measurements on the mean and standard deviation for each measurement & 2 ids for "subject" and "activity") columns. 

- For each subject, all 66 variables are used to calculate their mean values separately per activity, i.e. each row represents 66 mean values of variables of one subject in one activity

===============================
Details:

   - xaxis/yaxis/zaxis: the features selected for this database come from the accelerometer and gyroscope 3-axial signals. Used to denote 3-axial signals in the X, Y and Z directions.

   - subject: a group of 30 volunteers within an age bracket of 19-48 years

   - activity: activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
   - prefix 'time': time domain signals (captured at a constant rate of 50 Hz, then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise) 
 
   - prefix 'frequency': frequency domain signals

   - body/gravity: the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz

   - jerk: the body linear acceleration and angular velocity were derived in time to obtain Jerk signals

   - magnitude:the magnitude of these three-dimensional signals were calculated using the Euclidean norm 

   - mean/standarddeviation: mean() and sd() functions used in raw signals by original dataset 



