#Getting & Cleaning Data Assignment: CodeBook

###Introduction
This CodeBook was written for the Coursera Getting & Cleaning Data course, part of the broader Data Science Specialization.

This codebook will address:

1. The raw data
2. The transformations conducted 
3. The variables of the tidy data

###The Raw Data
The source data was collected from the [UCI Machine Learning website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data itself was collected from 30 test subjects aged between 19-48 years of age with each subject performing one of six actions (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) whilst wearing a smartphone on their waist.

For details of pre-processing of the data please refer to the [UCI Machine Learning website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

###The Transformations Conducted
To turn the raw data into something easily managable the following transactions occured:

#####Manual Transactions
1. Downloaded the raw data set
2. Unzip the data and locate into a working directory (./data)

#####Transactions that occur in R
3. Load relevant libraries
4. Load test, training & subject data sets into tables
5. Load variable names file into tables
6. Load activity file into data frame
7. Combine test and train tables using rbind
8. Replace the id's of activities with their descriptive names
9. Applied the variable names to the combined data set
10. Reduced the columns of interest to those only containing a STD or MEAN measurement
11. Tidied up the variable names to make them more human readable

#####Creating the Outputs
12. Output a tidy_data.txt file
13. Calculate the mean of each measurement, grouped by test subject and activity
14. Output a calc_data.txt file

###The Variables of the Tidy Data
[1] "time_Body_Accelerator_Mean_X"                           
 [2] "time_Body_Accelerator_Mean_Y"                           
 [3] "time_Body_Accelerator_Mean_Z"                           
 [4] "time_Body_Accelerator_Std_X"                            
 [5] "time_Body_Accelerator_Std_Y"                            
 [6] "time_Body_Accelerator_Std_Z"                            
 [7] "time_Gravity_Accelerator_Mean_X"                        
 [8] "time_Gravity_Accelerator_Mean_Y"                        
 [9] "time_Gravity_Accelerator_Mean_Z"                        
[10] "time_Gravity_Accelerator_Std_X"                         
[11] "time_Gravity_Accelerator_Std_Y"                         
[12] "time_Gravity_Accelerator_Std_Z"                         
[13] "time_Body_Accelerator_Jerk_Mean_X"                       
[14] "time_Body_Accelerator_Jerk_Mean_Y"                       
[15] "time_Body_Accelerator_Jerk_Mean_Z"                       
[16] "time_Body_Accelerator_Jerk_Std_X"                        
[17] "time_Body_Accelerator_Jerk_Std_Y"                        
[18] "time_Body_Accelerator_Jerk_Std_Z"                        
[19] "time_Body_Gyroscope_Mean_X"                             
[20] "time_Body_Gyroscope_Mean_Y"                             
[21] "time_Body_Gyroscope_Mean_Z"                             
[22] "time_Body_Gyroscope_Std_X"                              
[23] "time_Body_Gyroscope_Std_Y"                              
[24] "time_Body_Gyroscope_Std_Z"                              
[25] "time_Body_Gyroscope_Jerk_Mean_X"                         
[26] "time_Body_Gyroscope_Jerk_Mean_Y"                         
[27] "time_Body_Gyroscope_Jerk_Mean_Z"                         
[28] "time_Body_Gyroscope_Jerk_Std_X"                          
[29] "time_Body_Gyroscope_Jerk_Std_Y"                          
[30] "time_Body_Gyroscope_Jerk_Std_Z"                          
[31] "time_Body_Accelerator_Magnitude_Mean_"                  
[32] "time_Body_Accelerator_Magnitude_Std_"                   
[33] "time_Gravity_Accelerator_Magnitude_Mean_"               
[34] "time_Gravity_Accelerator_Magnitude_Std_"                
[35] "time_Body_Accelerator_JerkMagnitude_Mean_"              
[36] "time_Body_Accelerator_JerkMagnitude_Std_"               
[37] "time_Body_Gyroscope_Magnitude__Mean_"                    
[38] "time_Body_Gyroscope_Magnitude_Std_"                     
[39] "time_Body_Gyroscope_JerkMagnitude_Mean_"                
[40] "time_Body_Gyroscope_JerkMagnitude_Std_"                 
[41] "frequency_Body_Accelerator_Mean_X"                      
[42] "frequency_Body_Accelerator_Mean_Y"                      
[43] "frequency_Body_Accelerator_Mean_Z"                      
[44] "frequency_Body_Accelerator_Std_X"                       
[45] "frequency_Body_Accelerator_Std_Y"                       
[46] "frequency_Body_Accelerator_Std_Z"                       
[47] "frequency_Body_Accelerator_Mean_FreqX"                  
[48] "frequency_Body_Accelerator_Mean_FreqY"                  
[49] "frequency_Body_Accelerator_Mean_FreqZ"                  
[50] "frequency_Body_Accelerator_Jerk_Mean_X"                  
[51] "frequency_Body_Accelerator_Jerk_Mean_Y"                  
[52] "frequency_Body_Accelerator_Jerk_Mean_Z"                  
[53] "frequency_Body_Accelerator_Jerk_Std_X"                   
[54] "frequency_Body_Accelerator_Jerk_Std_Y"                   
[55] "frequency_Body_Accelerator_Jerk_Std_Z"                   
[56] "frequency_Body_Accelerator_Jerk_Mean_FreqX"              
[57] "frequency_Body_Accelerator_Jerk_Mean_FreqY"              
[58] "frequency_Body_Accelerator_Jerk_Mean_FreqZ"              
[59] "frequency_Body_Gyroscope_Mean_X"                        
[60] "frequency_Body_Gyroscope_Mean_Y"                        
[61] "frequency_Body_Gyroscope_Mean_Z"                        
[62] "frequency_Body_Gyroscope_Std_X"                         
[63] "frequency_Body_Gyroscope_Std_Y"                         
[64] "frequency_Body_Gyroscope_Std_Z"                         
[65] "frequency_Body_Gyroscope_Mean_FreqX"                    
[66] "frequency_Body_Gyroscope_Mean_FreqY"                    
[67] "frequency_Body_Gyroscope_Mean_FreqZ"                    
[68] "frequency_Body_Accelerator_Magnitude_Mean_"             
[69] "frequency_Body_Accelerator_Magnitude_Std_"              
[70] "frequency_Body_Accelerator_Magnitude_Mean_Freq"         
[71] "frequency_Body_Body_Accelerator_JerkMagnitude_Mean_"    
[72] "frequency_Body_Body_Accelerator_JerkMagnitude_Std_"     
[73] "frequency_Body_Body_Accelerator_JerkMagnitude_Mean_Freq"
[74] "frequency_Body_Body_Gyroscope_Magnitude_Mean_"          
[75] "frequency_Body_Body_Gyroscope_Magnitude_Std_"           
[76] "frequency_Body_Body_Gyroscope_Magnitude_Mean_Freq"      
[77] "frequency_Body_Body_Gyroscope_JerkMagnitude_Mean_"      
[78] "frequency_Body_Body_Gyroscope_JerkMagnitude_Std_"       
[79] "frequency_Body_Body_Gyroscope_JerkMagnitude_Mean_Freq"  
[80] "Subject"                                                 
[81] "Activity"
