
--During the initial analysis performed in Excel, we noticed several trends regarding the days of the week in which more rides were registered, the average ride length for each month, and the most used bike type. Now, we are going to perform a similar analysis, this time with the whole year's data in one table.

--We are going to start with the amount of trips per month

SELECT 
  month,
  member_casual,
  COUNT(ride_id) AS total_trips
FROM
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY
  month, member_casual
ORDER BY
  member_casual, total_trips DESC;

SELECT
  member_casual,
  COUNT(ride_id) AS total_trips
FROM
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY
  member_casual
Order by
  total_trips;

--The total amount of rides for members was 2,738,451, being August the month with most amount of rides, summing a total of 344,227.
--For the casual riders, the total amount of rides was 1,504,481, being July the month with the most amount of rides, summing a total of 240,833.

--Now, let's find out which day of the week accumulates the most amount of rides during the whole year.

SELECT 
  day_of_week,
  member_casual, 
  COUNT(ride_id) AS total_trips
FROM 
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY 
  day_of_week, member_casual
ORDER BY 
  member_casual, total_trips DESC;

--It seems that, for casual riders,Saturday was the day in which the most trips were registered, summing a total of 304,655. As for the members, it was Wednesday with a total of 443,236 trips.

--Next, lets calculate the average ride length per month.

SELECT 
  month, 
  member_casual, 
  AVG(ride_length) AS avg_ride_duration
FROM 
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY 
  month, member_casual
ORDER BY
  member_casual, avg_ride_duration DESC;

--Here we see that July was the month with the biggest average ride duration for both casual riders and members.
--Let's check this for each day of the week

SELECT 
  day_of_week, 
  member_casual, 
  AVG(ride_length) AS avg_ride_duration
FROM 
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY 
  day_of_week, member_casual
ORDER BY
  member_casual, avg_ride_duration DESC;

--For both, casual riders and members, Sunday was the day with the largest average ride duration, followed by Saturday in both cases.

--Lastly, let's see the bike type usage.

SELECT 
  member_casual, rideable_type, 
  COUNT(*) AS total_trips
FROM 
  my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023_cleaned
GROUP BY 
  member_casual, rideable_type
ORDER BY 
  member_casual, total_trips DESC;

--The data shows that both types of riders preferred the classic bikes.