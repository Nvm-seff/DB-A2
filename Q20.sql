--Q20--
SELECT OF_TYPE AS Model, COUNT(*) AS Total_Planes
FROM AIRPLANE
GROUP BY OF_TYPE
