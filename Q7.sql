
/*Q7*/
SELECT a.Reg#, p.Name AS Owner, t.Model
FROM AIRPLANE AS a
JOIN OWNS AS o ON a.Reg# = o.Reg#
JOIN OWNER AS p ON o.Ssn = p.Ssn
JOIN PLANE_TYPE AS t ON a.OF_TYPE = t.Model
JOIN PLANE_SERVICE AS s ON a.Reg# = s.Reg#
JOIN SERVICE AS m ON s.Service_id = m.ServiceID
WHERE m.Date >= DATEADD(day, -7, GETDATE())

