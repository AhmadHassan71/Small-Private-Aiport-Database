--Q#10

select top 1(HANGAR.Number),HANGAR.H_Location, max(HANGAR.H_Capacity) as h
from HANGAR
group by Hangar.Number, HANGAR.H_Location 
order by h desc;
