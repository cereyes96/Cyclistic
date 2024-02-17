-- First, we check the table does not exist and if it doesn't, BigQuery will proceed to create it

Drop table if exists my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023;

-- Then, we merge the tables for each month into one new table

Create table if not exists my-project-19297-401423.case_study_cyclist.divvy_tripdata_2023 AS (
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_01
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_02
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_03
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_04
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_05
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_06
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_07
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_08
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_09
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_10
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_11
  UNION ALL
  SELECT *
  FROM my-project-19297-401423.case_study_cyclist.divvy_tripdata_12
)