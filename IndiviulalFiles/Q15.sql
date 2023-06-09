
--Q#15
SELECT DISTINCT PERSON.P_Name AS pilot_name
FROM PILOT AS p
Join PERSON ON p.Pi_Ssn = PERSON.P_Ssn 
Join FLIES On p.Lic_No = FLIES.Lic_num
Join AIRPLANE on FLIES.OF_TYPE = AIRPLANE.Of_Type
Join PLANE_SERVICE on AIRPLANE.Reg# = PLANE_SERVICE.Reg#
Join SERVICE_RECORD on PLANE_SERVICE.ServiceID = SERVICE_RECORD.Service_Id
where SERVICE_RECORD.Work_Code is not null;
