#UCI CodeBook
This CodeBook describes the output of run_analysis.R script.  Tidy data is saved as tidy_data.txt.

The tidy data can be loaded like this:

   tidy_data <- data.table("tidy_data.txt")

Details on the original data set is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## Process
The training and test data is compiled into one table.

The data has been updated so only the mean and standard deviation for each measurement are included.   

The names have been updated from an ID to a human readable format.

## Final Column Names
*  
*  tbody-acceleration-mean-x 
*  tbody-acceleration-mean-y 
*  tbody-acceleration-mean-z 
*  tbody-acceleration-std-x 
*  tbody-acceleration-std-y 
*  tbody-acceleration-std-z 
*  tgravity-acceleration-mean-x 
*  tgravity-acceleration-mean-y 
*  tgravity-acceleration-mean-z 
*  tgravity-acceleration-std-x 
*  tgravity-acceleration-std-y 
*  tgravity-acceleration-std-z 
*  tbody-acceleration-mean-x 
*  tbody-acceleration-mean-y 
*  tbody-acceleration-mean-z 
*  tbody-acceleration-std-x 
*  tbody-acceleration-std-y 
*  tbody-acceleration-std-z 
*  tbody-mean-x 
*  tbody-mean-y 
*  tbody-mean-z 
*  tbody-std-x 
*  tbody-std-y 
*  tbody-std-z 
*  tbody-mean-x 
*  tbody-mean-y 
*  tbody-mean-z 
*  tbody-std-x 
*  tbody-std-y 
*  tbody-std-z 
*  tbody-acceleration-magnitude-mean 
*  tbody-acceleration-magnitude-std 
*  tgravity-acceleration-magnitude-mean 
*  tgravity-acceleration-magnitude-std 
*  tbody-acceleration-magnitude-mean 
*  tbody-acceleration-magnitude-std 
*  tbody-magnitude-mean 
*  tbody-magnitude-std 
*  tbody-magnitude-mean 
*  tbody-magnitude-std 
*  fbody-acceleration-mean-x 
*  fbody-acceleration-mean-y 
*  fbody-acceleration-mean-z 
*  fbody-acceleration-std-x 
*  fbody-acceleration-std-y 
*  fbody-acceleration-std-z 
*  fbody-acceleration-mean-x 
*  fbody-acceleration-mean-y 
*  fbody-acceleration-mean-z 
*  fbody-acceleration-std-x 
*  fbody-acceleration-std-y 
*  fbody-acceleration-std-z 
*  fbody-mean-x 
*  fbody-mean-y 
*  fbody-mean-z 
*  fbody-std-x 
*  fbody-std-y 
*  fbody-std-z 
*  fbody-acceleration-magnitude-mean 
*  fbody-acceleration-magnitude-std 
*  fbody-acceleration-magnitude-mean 
*  fbody-acceleration-magnitude-std 
*  fbody-magnitude-mean 
*  fbody-magnitude-std 
*  fbody-magnitude-mean 
*  fbody-magnitude-std 
*  subject 
*  activity
