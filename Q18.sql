--q#18

select CORPORATION.C_Name,CORPORATION.C_Address
from CORPORATION
join OWNER on OWNER.C_ID=CORPORATION.C_ID
join OWNS o1 on OWNER.O_ID=o1.OwnerID
join owns o2 on OWNER.O_ID=o2.OwnerID
join AIRPLANE a1 on o1.Reg#= a1.Reg#
join airplane a2 on o2.Reg#=a2.Reg#
where a1.Of_Type=a2.Of_Type
and o1.Pdate>DATEADD(month,-1,GETDATE());
