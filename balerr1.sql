SELECT BATCACTYR, BATCACTMN, BATCTRCDE,   
BATCBATCH, SUM(POSTAMT01)                 
FROM LA7DTA/GTRNPF WHERE BATCCOY='2' AND  
BATCBRN='10' AND BATCACTYR= &YEAR  AND    
BATCACTMN= &MONTH      AND                
GENLCDE='BALANCEERROR97'                  
GROUP BY BATCACTYR, BATCACTMN, BATCTRCDE, 
BATCBATCH HAVING                          
SUM(POSTAMT01)<>0 ORDER BY BATCBATCH      