--Q#23
SELECT O_ID, COUNT(*) as Number_Of_Planes
from OWNER
join owns ON owns.OwnerID=OWNER.O_ID
group by O_ID
order by Number_Of_Planes desc;