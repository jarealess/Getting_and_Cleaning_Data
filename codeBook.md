# **Code Book**

This *code book* will be used to describe the calculated variables gotten while getting a tidy dataset from the *Human Activity Recognition Using Smartphones Data Set*. 

### Needed Files

* `subject_train.txt`: file with each subject's ID from the training set. There are 30 subjects, so the ID's vary from 1 to 30. `subject_test.txt`: file with each subject's ID from the test set. There are 30 subjects, so the ID's vary from 1 to 30.
* `X_train.txt`: Training set. 
* `X_test.txt`: Test set. 
* `y_train.txt`: Training labels. 
* `y_test.txt`: Test labels. 
* `features.txt`: List of all features.
* `activity_labels.txt`: Links the class labels with their activity name.


### Created data sets

* `subject_train`: A 7352x1 data frame containing the data from the *subject_train.txt* file. 
* `subject_test`: A 2947x1 data frame containing the data from the *subject_test.txt* file.
* `subject`: A 10299x1 data frame resulted from combining the *subject_train* and *subject_test* data frames. 
* X_train`: A 7352x561 data frame which stored the data from the *X_train.txt* file.
* `X_test`: A 2947x561 data frame which stored the data from the *X_test.txt* file.
* `X`: A 10299x561 data frame product of the combination of *X_train* and *X_test* datasets.
* `y_train`: A 7352x1 data frame containing the data from the *y_train.txt* file.
* `y_train`: A 2947x1 data frame containing the data from the *y_test.txt* file.
* `y`: A 10299x1 data frame resulted from combining the *sy_train* and *y_test* datasets. 
* `MeanStdColumns`: A variable used to store the column names on measurements on the mean and the standard deviation. 
* `samsung_data`: A 10299x68 data frame resulted from combining *subject*, *y*, *X* data frames and extracting only the measurements on the mean and the standard deviation.
* `samsung_tidy_data`: The final 180x68 data frame which was obtained after taking the average of each variable for each activity and subject.



