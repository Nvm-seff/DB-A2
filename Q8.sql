--Q8-
SELECT o.Name, o.Phone
FROM Owner o
INNER JOIN Owns ow ON o.Ssn = ow.Ssn
INNER JOIN Airplane a ON ow.Reg# = a.Reg#
WHERE ow.Pdate >= DATEADD(month, -1, GETDATE())
