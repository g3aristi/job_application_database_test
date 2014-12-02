let $da :=

	for $interview in doc("interview.xml")//interview

	where not($interview//collegiality)

	return $interview/@sID

return <noCol> {distinct-values($da)} </noCol>
