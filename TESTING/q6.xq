declare function  local:sort
  ( $seq as item()* )  as item()* {

   for $item in $seq
   order by $item
   return $item
 } ;



let $answer := 
(for $r in doc("resume.xml")//resume
        
	for $rs in $r//skill

	        for $y in doc("resume.xml")//resume
        
        		for $ys in $y//skill	
	
			where (not($r/@rID = $y/@rID)) and ($rs/@what =  $ys/@what) and ($rs/@level = $ys/@level)			
       		
       		 	return (
 			xs:string(<tuple> { local:sort(      		 
       		 	(xs:string($r/@rID),
       		 	xs:string($y/@rID)))
			} </tuple>))
)
(:
let $answer2 := for $x in distinct-values($answer)
				return <one>{substring-before(data($x),'')}</one>
:)

return (distinct-values($answer))
