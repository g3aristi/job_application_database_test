let $underqualified :=

for $posting in fn:doc("posting.xml")//posting

	for $postingSkill in $posting//reqSkill

		for $resume in fn:doc("resume.xml")//resume

			for $resumeSkill in $resume//skill

				where ($resumeSkill/@what = $postingSkill/@what) and ($resumeSkill/@level > $postingSkill/@level)

				return $posting/@pID

let $dresult :=		

for $posting in fn:doc("posting.xml")//posting

	for $postingSkill in $posting//reqSkill

		where not($postingSkill/../@pID = $underqualified)
		
		return $postingSkill/../@pID

for $id in $dresult
	for $id2 in $dresult
		return ($id, $id2, "|")
(:return data($result) :)
