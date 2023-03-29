/*Q11*/
SELECT C.Name, COUNT(O.Reg#) AS Num_Planes_Owned
FROM CORPORATION C
LEFT JOIN OWNS O ON C.Name = O.C_name
GROUP BY C.Name
ORDER BY Num_Planes_Owned DESC;
