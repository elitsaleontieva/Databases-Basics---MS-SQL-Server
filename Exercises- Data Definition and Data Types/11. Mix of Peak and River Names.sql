SELECT PeakName, RiverName,
LOWER(CONCAT(PeakName,SUBSTRING(RiverName,2,(LEN(RiverName)-1)))) AS Mix --we skip "l" from lena- "ena"
FROM Peaks,Rivers
WHERE RIGHT (PeakName,1)=LEFT(RiverName,1)
ORDER BY Mix
--Banski Suhodol;	Lena	;banski suhodol+ena
--FROM THE FIRST ONE GET THE FIRST CHARACTER- 'L' FROM RIGHT; FROM THE LAST ONE GET 'L' FROM LEFT
