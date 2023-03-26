--Q#14
SELECT DISTINCT c.C_Name,c.C_Phone
FROM OWNER o
JOIN OWNS ow ON o.O_ID = ow.OwnerID
JOIN CORPORATION c ON o.C_ID = c.C_ID
join AIRPLANE a ON ow.Reg# = a.Reg#
JOIN HANGAR h ON a.Stored_In = h.Number
WHERE c.C_Address = h.H_Location;