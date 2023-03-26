--Q#24
SELECT PILOT.Lic_No, COUNT(FLIES.OF_TYPE) as Num_Types_Planes_Auth
from PILOT
join FLIES ON flies.Lic_num=PILOT.Lic_No
group by PILOT.Lic_No
order by Num_Types_Planes_Auth desc;