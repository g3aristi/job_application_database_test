let $answer := for $r in doc("resume.xml")//resume
        
	for $rs in $r//skill

	        for $y in doc("resume.xml")//resume
        
        		for $ys in $y//skill	
	
			where (not($r/@rID = $y/@rID)) and ($rs/@what =  $ys/@what) and ($rs/@level = $ys/@level)
        
       		
       		 	return (
       		 	<tuple>{
       		 	<rID1>{data($r/@rID)}</rID1>,
       		 	<rID2>{data($y/@rID)}</rID2>
       		 	}</tuple>)
(:
let $answer2 := for $x in distinct-values($answer)
				return <one>{substring-before(data($x),'')}</one>
:)

return distinct-values($answer)