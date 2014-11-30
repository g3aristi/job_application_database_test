<report>{
let $interviews := doc("interview.xml")//interview
let $resumes := doc("resume.xml")//resume
let $postings := doc("posting.xml")//posting

for $interview in $interviews
	let $rID := $resumes[@rID = $interview/@rID]
	let $pID := $postings[@pID = $interview/@pID]

	let $matchingSkills := sum($pID//reqSkill[@what = $rID//skill/@what and $rID//skill/@level >= $pID//reqSkill/@level]/@importance)
	let $unmatchingSkills := sum($pID//reqSkill[not(@what = $rID//skill/@what)]/@importance)
	let $underQualified := sum($pID//reqSkill[@what = $rID//skill/@what and $rID//skill/@level < $pID//reqSkill/@level]/@importance)


	let $degreeOfMatch := op:double-subtract(op:double-subtract($matchingSkills, $unmatchingSkills), $underQualified)
	
	let $assColleg := if($interview/collegiality) then sum($interview//collegiality) else 0

	let $assAnswer := if($interview//answers)then 
				sum($interview//answer) else 0
			

	let $assTech := sum($interview//techProficiency)
	let $assComm := sum($interview//communication)
	let $assEnth := sum($interview//enthusiasm)

	let $numElem := count(($interview//answer) except ($interview/answers/*))
				 + count($interview//techProficiency)
				 + count($interview//communication)
				 + count($interview//enthusiasm)


	let $assAvg := ($assColleg + $assAnswer + $assTech + $assComm + $assEnth) div $numElem


	
	return 	(

	<interview>{
		<person rID="{$rID/@rID}" Firstname="{$rID//forename}" LastName="{$rID//surname}"></person>,
		<position>{data($pID/position)}</position>,
		<degreeOfMatch>{$degreeOfMatch}</degreeOfMatch>,
		<assessmentAverage>{$assAvg}</assessmentAverage>
	}</interview>)

}</report>

