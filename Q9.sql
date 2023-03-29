/*Q9*/

SELECT p.Name, COUNT(DISTINCT a.OF_TYPE) AS 'Number of Planes'
FROM PILOT p
JOIN FLIES f ON p.Ssn = f.Ssn
JOIN AIRPLANE a ON f.Model = a.OF_TYPE
GROUP BY p.Name
ORDER BY COUNT(DISTINCT a.OF_TYPE) DESC;


