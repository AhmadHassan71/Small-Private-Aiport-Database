--Q#4
SELECT C.C_Name, C.C_Address
FROM CORPORATION C
JOIN OWNS o ON c.C_ID = o.OwnerID
JOIN AIRPLANE a ON o.Reg# = a.Reg#
JOIN PLANE_TYPE p ON p.Model = a.Of_Type
WHERE p.P_Capacity>200;