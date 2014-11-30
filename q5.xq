
(:Returns half of resume:)

let $halfofResumes := 
(for $resume in fn:doc("resume.xml")
return count($resume//resume)) div 2

(:
return the number of people who know that skill

let $skill := "Java"
let $lessThanHalf := count(for $resume in fn:doc("resume.xml")//resume
	where $resume//skill/@what = $skill
	return $resume/@rID)

:)

let $postings := fn:doc("posting.xml")//posting
let $resumes := fn:doc("resume.xml")//resume


for $posting in $postings
	for $skill in $posting//reqSkill

		where 

		count($resumes//skill[@what = $skill/@what and @level > 3]) > 0 and 
		count($resumes//skill[@what = $skill/@what and @level > 3]) < count($resumes//skill[@what = $skill/@what])

		or 

		
		count($resumes//skill[@what = $skill/@what]) < $halfofResumes


return $posting//@pID
		


	

(:
where (count($resumes//skill[@what = $skill/@what and @level > 3]) OR )
:)



	



			





