--Q12--
SELECT pt.Model, AVG(s.Hours) AS AvgMaintenanceHours
FROM Plane_Type pt
JOIN Airplane a ON pt.Model = a.OF_TYPE
JOIN Service s ON a.Reg# = s.Reg#
GROUP BY pt.Model
