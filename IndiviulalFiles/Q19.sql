--Q#19
SELECT hangar.Number, COUNT(AIRPLANE.Stored_In) as total_planes
FROM hangar
LEFT JOIN AIRPLANE ON hangar.Number = AIRPLANE.Stored_In
GROUP BY hangar.Number
