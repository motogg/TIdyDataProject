# Steps to Generating Tidy Dataset

1. The "X_test.txt" data set, the "subject_test.txt" dataset, and the "y_test.txt" data set were combined into a        dataframe. The "X_train.txt" data set, the "subject_train.txt" dataset, and the "y_train.txt" data set were also     combined into a dataframe.

2. The resulting data frames were merged together with a rowbind. This resulted in a dataframe named "Data" with       10299 records, and 563 Variables.

3. The "features.txt" file was read and was used to name the "Data" dataset, along with User-defined names; Activity    and Subject for the Activites and Subjects respectively. 

4. The Activity variable was converted to a factor afterwards, and the levels were named according to the activities    specified in "activities_label.txt" file. The Subject variable was also converted to a factor

5. From the "Data" dataset, the measurements with their mean values and standard deviations were extracted using the    grepl function for indexing the variables that should be included

5. All measurement variables were afterwards named by descriptive names using the sub and gsub functions. Also, for    loops combined with grepl were used.

7. With the Variables Appropriately named, The Resulting Dataset was summarized by finding the mean of all             measurement variables by Activity and Subject Variables repectively. This was achieved by converting the            dataframe to a datatable.


