/*Q19*/
SELECT H.Number, COUNT(A.Reg#) AS Total_Planes
FROM HANGAR H LEFT JOIN AIRPLANE A
ON H.Number = A.STORED_IN
GROUP BY H.Number;