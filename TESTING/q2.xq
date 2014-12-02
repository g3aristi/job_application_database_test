let $da :=

	for $interview in doc("interview.xml")//interview

	where empty($interview//collegiality)

	return $interview/@sID

return <noCol> {distinct-values($da)} </noCol>
