--Q#25
--Total number of pilots and employees in the airport
select count(*) from EMPLOYEE
select count(*) from PILOT;
/*
As simple as it may sound, query is important because it provides the total count of employees 
in the company. This information can be used for various purposes such as tracking employee growth, 
analyzing labor costs, and comparing employee counts across different departments or shifts.
*/

--most common service
SELECT top 1 (service_record.Work_Code), COUNT(*) AS times_done
FROM SERVICE_RECORD
GROUP BY SERVICE_RECORD.Work_Code
ORDER BY times_done DESC;
/*
This query finds the most common work code performed on planes 
by grouping the service_records table by the work code
and counting the number of services for each type. 
*/

--number of planes owned by persons
SELECT person.P_Name, COUNT(DISTINCT AIRPLANE.Reg#) AS num_planes
FROM PERSON
INNER JOIN OWNER ON OWNER.P_Ssn = PERSON.P_Ssn
INNER JOIN owns ON owns.OwnerID = owner.O_ID
INNER JOIN AIRPLANE ON AIRPLANE.Reg# = owns.Reg#
where OWNER.C_ID is NULL
GROUP BY PERSON.P_Name;


-- models of airplanes and their registered planes in service with capacity more than 300
select PLANE_TYPE.Model,AIRPLANE.Reg#,PLANE_TYPE.P_Capacity
from PLANE_TYPE
left join AIRPLANE on AIRPLANE.Of_Type = PLANE_TYPE.Model
where PLANE_TYPE.P_Capacity>300
group by AIRPLANE.Reg#,PLANE_TYPE.Model,PLANE_TYPE.P_Capacity;
