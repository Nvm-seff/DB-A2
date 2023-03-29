/*Q17*/
SELECT DISTINCT a.Reg#, a.OF_TYPE
FROM AIRPLANE a
WHERE a.Reg# NOT IN (
  SELECT o.Reg#
  FROM OWNS o
  JOIN CORPORATION c ON o.C_name = c.Name
) AND a.Reg# NOT IN (
  SELECT s.Reg#
  FROM SERVICE s
  JOIN MAINTAINS m ON s.ServiceID = m.ServiceID
  JOIN EMPLOYEE e ON m.Ssn = e.Ssn
  WHERE e.Shift = 'day'
);
