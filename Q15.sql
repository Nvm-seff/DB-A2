/*Q15*/
SELECT DISTINCT p.Name
FROM PILOT p
JOIN PLANE_TYPE pt ON p.Lic_num = pt.Model
JOIN SERVICE s ON pt.Model = s.Of_type
JOIN MAINTAINS m ON s.ServiceID = m.ServiceID
WHERE m.Ssn = p.Ssn
