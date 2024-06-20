
SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
 FROM [bike-data-2023].[dbo].[202301]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM [bike-data-2023].[dbo].[202302]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
FROM [bike-data-2023].[dbo].[202303]