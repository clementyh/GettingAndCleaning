Feature Selection 
=================
The data has been editted to give a more concise and readble names for each of the variables used

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Full Feature List 
=================

 [1] "Volunteer"                                                        
 [2] "activity"                                                         
 [3] "Time: Body  Acceleration-mean()-X"                                
 [4] "Time: Body  Acceleration-mean()-Y"                                
 [5] "Time: Body  Acceleration-mean()-Z"                                
 [6] "Time: Body  Acceleration-std()-X"                                 
 [7] "Time: Body  Acceleration-std()-Y"                                 
 [8] "Time: Body  Acceleration-std()-Z"                                 
 [9] "Time: Gravity  Acceleration-mean()-X"                             
[10] "Time: Gravity  Acceleration-mean()-Y"                             
[11] "Time: Gravity  Acceleration-mean()-Z"                             
[12] "Time: Gravity  Acceleration-std()-X"                              
[13] "Time: Gravity  Acceleration-std()-Y"                              
[14] "Time: Gravity  Acceleration-std()-Z"                              
[15] "Time: Body  Acceleration Jerk-mean()-X"                           
[16] "Time: Body  Acceleration Jerk-mean()-Y"                           
[17] "Time: Body  Acceleration Jerk-mean()-Z"                           
[18] "Time: Body  Acceleration Jerk-std()-X"                            
[19] "Time: Body  Acceleration Jerk-std()-Y"                            
[20] "Time: Body  Acceleration Jerk-std()-Z"                            
[21] "Time: Body Gyroscope-mean()-X"                                    
[22] "Time: Body Gyroscope-mean()-Y"                                    
[23] "Time: Body Gyroscope-mean()-Z"                                    
[24] "Time: Body Gyroscope-std()-X"                                     
[25] "Time: Body Gyroscope-std()-Y"                                     
[26] "Time: Body Gyroscope-std()-Z"                                     
[27] "Time: Body Gyroscope Jerk-mean()-X"                               
[28] "Time: Body Gyroscope Jerk-mean()-Y"                               
[29] "Time: Body Gyroscope Jerk-mean()-Z"                               
[30] "Time: Body Gyroscope Jerk-std()-X"                                
[31] "Time: Body Gyroscope Jerk-std()-Y"                                
[32] "Time: Body Gyroscope Jerk-std()-Z"                                
[33] "Time: Body  Acceleration Mag-mean()"                              
[34] "Time: Body  Acceleration Mag-std()"                               
[35] "Time: Gravity  Acceleration Mag-mean()"                           
[36] "Time: Gravity  Acceleration Mag-std()"                            
[37] "Time: Body  Acceleration Jerk Mag-mean()"                         
[38] "Time: Body  Acceleration Jerk Mag-std()"                          
[39] "Time: Body Gyroscope Mag-mean()"                                  
[40] "Time: Body Gyroscope Mag-std()"                                   
[41] "Time: Body Gyroscope Jerk Mag-mean()"                             
[42] "Time: Body Gyroscope Jerk Mag-std()"                              
[43] "Frequencyuency: Body  Acceleration-mean()-X"                      
[44] "Frequencyuency: Body  Acceleration-mean()-Y"                      
[45] "Frequencyuency: Body  Acceleration-mean()-Z"                      
[46] "Frequencyuency: Body  Acceleration-std()-X"                       
[47] "Frequencyuency: Body  Acceleration-std()-Y"                       
[48] "Frequencyuency: Body  Acceleration-std()-Z"                       
[49] "Frequencyuency: Body  Acceleration-mean Frequency()-X"            
[50] "Frequencyuency: Body  Acceleration-mean Frequency()-Y"            
[51] "Frequencyuency: Body  Acceleration-mean Frequency()-Z"            
[52] "Frequencyuency: Body  Acceleration Jerk-mean()-X"                 
[53] "Frequencyuency: Body  Acceleration Jerk-mean()-Y"                 
[54] "Frequencyuency: Body  Acceleration Jerk-mean()-Z"                 
[55] "Frequencyuency: Body  Acceleration Jerk-std()-X"                  
[56] "Frequencyuency: Body  Acceleration Jerk-std()-Y"                  
[57] "Frequencyuency: Body  Acceleration Jerk-std()-Z"                  
[58] "Frequencyuency: Body  Acceleration Jerk-mean Frequency()-X"       
[59] "Frequencyuency: Body  Acceleration Jerk-mean Frequency()-Y"       
[60] "Frequencyuency: Body  Acceleration Jerk-mean Frequency()-Z"       
[61] "Frequencyuency: Body Gyroscope-mean()-X"                          
[62] "Frequencyuency: Body Gyroscope-mean()-Y"                          
[63] "Frequencyuency: Body Gyroscope-mean()-Z"                          
[64] "Frequencyuency: Body Gyroscope-std()-X"                           
[65] "Frequencyuency: Body Gyroscope-std()-Y"                           
[66] "Frequencyuency: Body Gyroscope-std()-Z"                           
[67] "Frequencyuency: Body Gyroscope-mean Frequency()-X"                
[68] "Frequencyuency: Body Gyroscope-mean Frequency()-Y"                
[69] "Frequencyuency: Body Gyroscope-mean Frequency()-Z"                
[70] "Frequencyuency: Body  Acceleration Mag-mean()"                    
[71] "Frequencyuency: Body  Acceleration Mag-std()"                     
[72] "Frequencyuency: Body  Acceleration Mag-mean Frequency()"          
[73] "Frequencyuency: Body Body  Acceleration Jerk Mag-mean()"          
[74] "Frequencyuency: Body Body  Acceleration Jerk Mag-std()"           
[75] "Frequencyuency: Body Body  Acceleration Jerk Mag-mean Frequency()"
[76] "Frequencyuency: Body Body Gyroscope Mag-mean()"                   
[77] "Frequencyuency: Body Body Gyroscope Mag-std()"                    
[78] "Frequencyuency: Body Body Gyroscope Mag-mean Frequency()"         
[79] "Frequencyuency: Body Body Gyroscope Jerk Mag-mean()"              
[80] "Frequencyuency: Body Body Gyroscope Jerk Mag-std()"               
[81] "Frequencyuency: Body Body Gyroscope Jerk Mag-mean Frequency()"    
