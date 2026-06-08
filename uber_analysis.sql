USE uber_db;

-- 1. Total Demand at City vs Airport
SELECT `Pickup point`, COUNT(`Request id`) AS Total_Requests 
FROM uber_data 
GROUP BY `Pickup point`;

-- 2. Which 'Time Slot' has the highest overall demand?
SELECT `Time Slot`, COUNT(`Request id`) AS Demand 
FROM uber_data 
GROUP BY `Time Slot`
 ORDER BY Demand DESC;

-- 3. 'No Cars Available' count specifically at the AIRPORT
SELECT `Time Slot`, COUNT(`Request id`) AS Airport_Unavailability 
FROM uber_data 
WHERE `Pickup point` = 'Airport' AND Status = 'No Cars Available' 
GROUP BY `Time Slot` 
ORDER BY Airport_Unavailability DESC;

-- 4. Hourly Demand Trend (Kisko kab sabse zyada cab chahiye?)
SELECT `Request Hour`, COUNT(`Request id`) AS Hourly_Requests 
FROM uber_data
GROUP BY `Request Hour`
ORDER BY `Request Hour` ASC;

-- 5. Status distribution for Morning Slot
SELECT Status, COUNT(`Request id`) AS Count 
FROM uber_data 
WHERE `Time Slot` = 'Morning'
 GROUP BY Status;

-- 6. Status distribution for Evening Slot
SELECT Status, COUNT(`Request id`) AS Count 
FROM uber_data
 WHERE `Time Slot` = 'Evening' 
 GROUP BY Status;

-- 7. Demand on Weekdays (Monday to Friday check)
SELECT `Request Weekday`, COUNT(`Request id`) AS Daily_Demand 
FROM uber_data
 GROUP BY `Request Weekday`
  ORDER BY Daily_Demand DESC;

-- 8. Airport Pickup Gap (Unfulfilled requests at Airport)
SELECT `Time Slot`, COUNT(`Request id`) AS Airport_Gap 
FROM uber_data 
WHERE `Pickup point` = 'Airport' AND Status != 'Trip Completed' 
GROUP BY `Time Slot`
 ORDER BY Airport_Gap DESC;

-- 9. Percentage of demand met (Total Success Rate)
SELECT 
    (SELECT COUNT(*) FROM uber_data WHERE Status = 'Trip Completed') * 100.0 / 
    (SELECT COUNT(*) FROM uber_data) AS Success_Percentage;