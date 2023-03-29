--Q14--
SELECT o.Name, o.Phone
FROM Owner o
JOIN Owns ow ON o.Ssn = ow.Ssn
JOIN Airplane a ON ow.Reg# = a.Reg#
JOIN Corporation c ON c.Name = ow.C_Name
JOIN Hangar h ON c.Address = h.Location AND h.Number = a.STORED_IN
WHERE h.Location = o.Address
