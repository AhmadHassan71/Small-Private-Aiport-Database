--Q#21
SELECT PLANE_SERVICE.Reg#, COUNT(*) as Total_Services
from SERVICE_RECORD
join PLANE_SERVICE ON PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
group by PLANE_SERVICE.Reg#
order by total_services desc;