--Q4--
SELECT c.Name, c.Address
FROM CORPORATION c
INNER JOIN OWNS o ON c.Name = o.C_name
INNER JOIN AIRPLANE a ON o.Reg# = a.Reg#
INNER JOIN PLANE_TYPE p ON a.OF_TYPE = p.Model
WHERE p.Capacity > 200;