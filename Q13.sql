/*Q13*/
SELECT DISTINCT o.Name
FROM OWNS o
JOIN AIRPLANE a ON o.Reg# = a.Reg#
JOIN PLANE_SERVICE ps ON a.Reg# = ps.Reg#
JOIN SERVICE s ON ps.Service_id = s.ServiceID
JOIN MAINTAINS m ON s.ServiceID = m.ServiceID
JOIN EMPLOYEE e ON m.Ssn = e.Ssn
JOIN PERSON p ON e.Ssn = p.Ssn
JOIN PLANE_TYPE pt ON a.OF_TYPE = pt.Model
WHERE pt.Model = m.Work_code AND e.Shift = 'day'

