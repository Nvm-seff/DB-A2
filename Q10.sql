--Q10-
SELECT TOP 1 Location, h.Capacity - SUM(f.Weight) AS AvailableSpace
FROM Hangar h
LEFT JOIN Airplane a ON h.Number = a.STORED_IN
LEFT JOIN PLANE_TYPE f ON a.OF_TYPE = f.Model
GROUP BY h.Location, h.Capacity
ORDER BY AvailableSpace desc;
