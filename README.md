# Coursera: Getting and Cleaning Data Project
**Student**: Janick Reales

The purpose of this project was to apply what I learned and the ability to go from a row data set to a tidy one. 

### Steps and notes

The following steps are performed when running the [run_analysis.R](https://github.com/jarealess/Getting_and_Cleaning_Data/blob/master/run_analysis.R) script 

1. Reading the files from the `train` and `test` directories and storing them into R environment. For this project I didn't include the files contained in the `Inertial Signals` directory. Find more information about the read files in the codeBook.Rmd.
2. The second step was to join each train and test data for each data set. So, I merged the *subject* data, the *X* data and *y* data into three data frames called *subject*, *X* and *y*.
3. The following step was to assign the name to each variable included the previous data sets. The variable contained in the subject data set was called "subject", the one contained in the y data set was called "activity" and the X data set variables were named using the names included within the `features.txt` file.
4. All of the three data frames were put into another single data frame called "samsung_data". 
5. The project required to name each activity so I did it in this step using the `factor()` function and assining to each activity from 1 to 6 a name based on the file `activity_labels.txt`. 
6. From the previous data set I got a new one called **samsung_tidy_data** where each variable was averaged for each activity and each subject. 

The output of the script is a "*csv*" file called "samsung_tidy_data.csv". This file was stored in a wide format, because this is more aproximate to what the project required to do. 

You can find more information about each data frame in the codeBook.Rmd file.
