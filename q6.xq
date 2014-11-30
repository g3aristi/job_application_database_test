let $a :=

for $r in doc("resume.xml")//resume
        
	for $rs in $r//skill

	        for $y in doc("resume.xml")//resume
        
        		for $ys in $y//skill	
	
			where (not($r/@rID = $y/@rID)) and ($rs/@what =  $ys/@what) and ($rs/@level = $ys/@level)
        
       		 	return ($r/@rID, $y/@rID)

for $i in $a

return ($i, "|")
