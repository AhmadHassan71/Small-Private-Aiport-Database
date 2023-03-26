--q#12
select PLANE_TYPE.Model,avg(SERVICE_RECORD.Hours) as Avg_Num_Of_Maintenance_Hours
from PLANE_TYPE
inner join AIRPLANE on PLANE_TYPE.Model=AIRPLANE.Of_Type
inner join PLANE_SERVICE on AIRPLANE.Reg#=PLANE_SERVICE.Reg#
inner join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
group by PLANE_TYPE.Model
order by Avg_Num_Of_Maintenance_Hours desc;
