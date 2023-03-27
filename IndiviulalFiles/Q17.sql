--q#17

select distinct AIRPLANE.Reg#,AIRPLANE.Of_Type
from AIRPLANE
join OWNS on AIRPLANE.Reg#=OWNS.Reg#
join OWNER on OWNER.O_ID=owns.OwnerID 
join PLANE_SERVICE on PLANE_SERVICE.Reg#=AIRPLANE.Reg#
join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
join WORKS_ON on WORKS_ON.Service_Id=SERVICE_RECORD.Service_Id
join EMPLOYEE on WORKS_ON.EmpID=EMPLOYEE.E_ID
where OWNER.C_ID is null
and EMPLOYEE.E_Shift='Day';
