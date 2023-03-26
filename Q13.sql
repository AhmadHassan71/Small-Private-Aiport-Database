
--Q#13
SELECT DISTINCT o.O_ID,PERSON.P_Name,CORPORATION.C_Name
FROM Owner o
INNER JOIN owns ON owns.OwnerID = o.O_ID
Inner JOIN PERSON on Person.P_Ssn=o.P_Ssn
Inner JOIN CORPORATION on CORPORATION.C_ID=o.C_ID
INNER JOIN AIRPLANE a ON a.Reg# = owns.Reg#
JOIN Employee e ON e.E_ID = e.E_ID
JOIN SERVICE_RECORD s ON s.Service_Id = e.E_ID
JOIN PLANE_SERVICE p ON p.ServiceID = s.Service_Id
WHERE s.Work_Code IS NULL
group by o.O_ID,PERSON.P_Name,CORPORATION.C_Name
