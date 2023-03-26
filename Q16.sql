--q#16

select PERSON.P_Name,CORPORATION.C_Name, sum(SERVICE_RECORD.Hours) as Total_Num_Of_Hours
from EMPLOYEE
join  PERSON on EMPLOYEE.E_Ssn=PERSON.P_Ssn
join WORKS_ON on EMPLOYEE.E_ID=WORKS_ON.EmpID
join PLANE_SERVICE on PLANE_SERVICE.ServiceID=WORKS_ON.EmpID
join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
join AIRPLANE on AIRPLANE.Reg#=PLANE_SERVICE.Reg#
join OWNS on AIRPLANE.Reg#=OWNS.Reg#
join OWNER on owns.OwnerID=OWNER.O_ID
join CORPORATION on CORPORATION.C_ID=owner.C_ID
where C_Name= 'XYZ COMPANY'
group by PERSON.P_Name, C_Name
order by Total_Num_Of_Hours desc;
