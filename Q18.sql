--Q18--
SELECT DISTINCT o.Name, o.Address
FROM OWNER o
INNER JOIN OWNS os ON o.Ssn = os.Ssn
INNER JOIN AIRPLANE a ON os.Reg# = a.Reg#
INNER JOIN CORPORATION c ON c.Name = (
  SELECT c2.Name
  FROM CORPORATION c2
  INNER JOIN OWNS os2 ON c2.Name = os2.C_name
  INNER JOIN AIRPLANE a2 ON os2.Reg# = a2.Reg#
  WHERE a2.OF_TYPE = a.OF_TYPE AND os2.Pdate >= DATEADD(month, -1, GETDATE())
)
WHERE c.Name <> NULL