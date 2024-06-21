
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

**Note:**
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

**Note:** 15% of start and end station columns contain NULL data, instead of removing all null data, I prefered to follow Mode operation  to fill the NULL values 

**Data Visualization**

Step 1: Customer Type Distribution

Using Quarter 1 2023 data, I began by visualizing the distribution of customer types. Understanding the composition of annual members and casual riders is a pivotal starting point of analysis.
 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/a2dbbcd9-ea52-4b6b-aea3-8e7b69644e45)

Step 2: Rides by Ride type

In this dataset, we have three types of ride types( Classic, electric, and docked bikes).

Here, I performed data transformation in Tableau by creating a calculated field
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/8b72b90e-a98a-4a4b-8c59-5e7979d05279)

 
Electric bikes were preferred over classic bikes by both customer groups and Docked bikes were the least used, with no occurrences among annual members. 
 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/696174a4-b67e-4fae-9b9c-028e10399889)

Step 3: Distinct count start and stations

Total number of unique start station are 1,039 and end stations are 1,059

 ![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/2b53828f-bffd-4182-a0e8-dedba113e686)


Step 4: Most Active Start Stations
The Top 10 most active start stations for each group, providing insights into where rides commonly start from. Ellis Ave & 60th St was the most active start station for both annual and casual riders.

 
 ![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/f2701c17-966f-496e-87f1-b3b4121a43fa)
 ![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/c05c72e8-d2d8-4dbe-8537-8f9958e0371b)


 
Step 5: Top routes

The leading route for both annual and casual riders was Ellis Ave & 60th St — University Ave & 57th St 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/a6f6d649-2cbd-421a-956e-c3af3825c11e)

 

Step 6: Week-over-week total analysis by ride type
 Electric and  classic bike riders of both customers are high during every second week of every month
 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/c410491d-b0b4-4d2b-af3c-4f6460a19c98)


Step 7:  Top 10 Stations Month-over-Month Analysis by Ride Type
•	The highest number of annual members and casual riders who ride an electric bike starts from Ellis Ave & 60th St throughout the first quarter.
•	The lowest number of annual members and casual riders who ride an electric bike starts from Ellis Ave & 55th St throughout the first quarter.

 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/16a969fb-709d-48f2-914d-7f55b7380a0e)


Step 8: Most Active End Stations
The Top 10 most active start stations for each group, providing insights into where rides commonly start from.  University Ave& 57th St was the most active start station for both annual and casual riders.
 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/12c8368f-336b-4de0-a32d-65aa5757418d)
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/bd853701-9d39-4494-95bf-eea75615daf8)


 
Step 9: Analyzing which rider type meets the average number of rides each month

The annual members who ride electric and classic meet the average number of rides each month
 
![image](https://github.com/rushmiithasri/Google-DataAnalytics-casestudy/assets/67082247/a171a172-5655-4617-8144-f2eb482a8cc1)



