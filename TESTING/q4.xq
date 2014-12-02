let $underqualified :=

for $posting in fn:doc("posting.xml")//posting

	for $postingSkill in $posting//reqSkill

		for $resume in fn:doc("resume.xml")//resume

			for $resumeSkill in $resume//skill

				where ((($resumeSkill/@what = $postingSkill/@what) and ($postingSkill/@level > max(doc("resume.xml")//skill[./@what = $postingSkill/@what]/@level))) or (not(doc("resume.xml")//skill[./@what = $postingSkill/@what])))

				return $posting/@pID

return <unsatisfied> {distinct-values($underqualified)} </unsatisfied>
