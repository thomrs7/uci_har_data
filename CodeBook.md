#UCI CodeBook
This CodeBook describes the output of run_analysis.R script.  Tidy data is saved as tidy_data.txt.

The tidy data can be loaded like this:

   tidy_data <- data.table("tidy_data.txt")

Details on the original data set is here, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The training and test data is compiled into one table.

The data has been updated so only the mean and standard deviation for each measurement are included.

The names have been updated from an ID to a human readable format.


