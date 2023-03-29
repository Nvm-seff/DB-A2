--Q6--
SELECT TOP 5 e.Name, SUM(s.Hours) AS Total_Maintenance_Hours
FROM EMPLOYEE e
INNER JOIN MAINTAINS m ON e.Ssn = m.Ssn
INNER JOIN SERVICE s ON m.ServiceID = s.ServiceID
GROUP BY e.Name
ORDER BY Total_Maintenance_Hours DESC;
