--Q#9
SELECT PERSON.P_Name,count(FLIES.OF_TYPE)
FROM PILOT
inner join PERSON on PILOT.Pi_Ssn = PERSON.P_Ssn
inner join FLIES on PILOT.Lic_No = FLIES.Lic_num
group by P_Name, Lic_No