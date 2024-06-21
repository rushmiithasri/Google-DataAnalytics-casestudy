
# Google Data Analytics Case study - Cyclistic bike -2023

### Here I'm using cyclistic 2023 data to do Data analytics Case study


----------------------------------------------------------------------------------------------
# 2023 Quarter1 Analysis

This is a capstone project as a part of my Google Data Analytics Professional certificate course.

For the Analysis I will be using cyclisitic-dataset-2023-Q1-data which can be [download here](https://divvy-tripdata.s3.amazonaws.com/index.html)

Tools used during Analysis
	1) Excel
 	2) Tableau
	3) SQL Server Maangement studio
	
## Prepare data for exploration


Step1:Downloaded January ,Feburary, march data 

Step2: Combined all the three months data into one table by using SQL Server Management studio by selecting required columns for Analysis.

step3: Here I considered following coulums data to perform analysis.

        column names:    ride_id, rideable_type, started_at,ended_at,start_station_name,end_station_name, member_causal

## Process the data

 In process phase, I'm using Excel to identify null values and duplicates.

After, combing all three months data,  Total number of rows are 6,39,424

Null values count in the dataset



+ Here in this dataset,
  	+ 14% null values for start_station_name which is 88,104 rows out of 6,39,424 rows.
  	+ 15% null values for end_station_name which is 93,016 rows out of 6,39,424 rows.
+  Mode is the one of the best criteria to fill the null for categorical data.
+ By inserting pivot table for both start_station_name and end_station_name
	+ we got highest frequency **start_station_name** as _"University Ave & 57th St"_ -**Frequency value[5908]**
   	+ we got highest frequency **end_station_name** as _"University Ave & 57th St"_ -**Frequency value[5908]**

[NOTE]
For both columns, highest frequency values is same which is **University Ave & 57th St**. Replacing all the null values of both columns with same value which doesn't make sense.
What I did here is 
	+ I have concated both start_station_name and end_station_name column to a new_column [Trip]
	+ By inserting pivot table for Trip data ,
		+ Both column values NULL, NULL - 40,233
		+ we got highest frequency for **Ellis Ave & 60th St, University Ave & 57th St** trip which is 2022
 

  + As we have both column values Null,Null are 40,233. By performing mode operation I'm filling null values with highest frequency value which is  **Ellis Ave & 60th St, University Ave & 57th St**
	+ Start_station_name: out of 88104 null value rows, I have filled data for 40,233 with value **Ellis Ave & 60th St**
	+ End_station_name: out of 93,106 null value rows, I have filled data for 40,233 with value  **University Ave & 57th St**
+ We have almost **93%** of dataset with values and I'm excluding remaining 7% data where we have Null value for only one column either in start_station_name or end_station_name.

  Note: 15% of start and end station columns contain NULL data, instead of removing all null data, I prefered to follow Mode operation and fill the NUll values with highest frequency value.

