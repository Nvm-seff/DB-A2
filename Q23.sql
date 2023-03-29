/*Q23*/
SELECT OWNER.Ssn, OWNER.Name, COUNT(OWNS.Reg#) AS Total_Planes_Owned
FROM OWNER
LEFT JOIN OWNS ON OWNER.Ssn = OWNS.Ssn
GROUP BY OWNER.Ssn, OWNER.Name;
