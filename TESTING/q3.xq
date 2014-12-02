for $posting in doc("posting.xml")//postings/posting

	for $s in $posting//reqSkill

	where $s/@importance = max($posting//reqSkill/@importance)

	return <Highest-importance> {$s/@what, $s/@importance} </Highest-importance>

(:
return ($posting//reqSkill/@what, max($posting//reqSkill/@importance))
:)
