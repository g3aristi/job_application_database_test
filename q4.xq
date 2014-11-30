let $underqualified :=

for $posting in fn:doc("posting.xml")//posting

	for $postingSkill in $posting//reqSkill
		where not($postingSkill/../@pID = $underqualified)
		return $postingSkill/../@pID

return <unsatisfied> {distinct-values($result)} </unsatisfied>
