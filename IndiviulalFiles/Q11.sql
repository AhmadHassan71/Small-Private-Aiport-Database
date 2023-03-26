--q#11

select corporation.C_ID,CORPORATION.C_Name, count(OWNS.Reg#) as Num_Of_Planes
from CORPORATION 
inner join owner on CORPORATION.C_ID=OWNER.C_ID
inner join OWNS on Owner.O_ID=OWNS.OwnerID
group by Corporation.C_ID, CORPORATION.C_Name, Owns.Reg#
order by Num_Of_Planes desc;