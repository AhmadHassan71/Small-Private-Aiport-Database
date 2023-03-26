--Q#7
SELECT AIRPLANE.Of_Type, AIRPLANE.Reg#
FROM PLANE_SERVICE
INNER JOIN AIRPLANE ON PLANE_SERVICE.Reg# = AIRPLANE.Reg#
Join SERVICE_RECORD ON SERVICE_RECORD.Service_Id =PLANE_SERVICE.ServiceID
WHERE SERVICE_RECORD.Date >= DATEADD(WEEK, -1, GETDATE());
--Our data has no record of -1 week but we can change the time duration to determine its working
