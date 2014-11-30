let $underqualified := 

for $posting in fn:doc("posting.xml")//posting

	for $postingSkill in $posting//reqSkill

		for $resume in fn:doc("resume.xml")//resume

			for $resumeSkill in $resume//skill

				where ($resumeSkill/@what = $postingSkill/@what) and ($resumeSkill/@level < $postingSkill/@level)

				return $posting/@pID
		

(:May want to make distinct:)
for $posting in fn:doc("posting.xml")//posting
	distint-values(for $postingSkill in $posting//reqSkill

		where not($postingSkill/../@pID = $underqualified)
		
		return $postingSkill/../@pID)
