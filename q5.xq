
(:Returns half of resume:)

let $halfofResumes := 
(for $resume in doc("resume.xml")
return count($resume//resume)) div 2


(:
return the number of people who know that skill

let $skill := "Java"
let $lessThanHalf := count(for $resume in fn:doc("resume.xml")//resume
	where $resume//skill/@what = $skill
	return $resume/@rID)
return $lessThanHalf
:)



(: This is all of the skills $posting//reqSkill/@what:)

for $posting in fn:doc("posting.xml")//posting
		
			



	



			





