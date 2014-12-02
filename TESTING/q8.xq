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
		<who rID="{$rID/@rID}" forename="{$rID//forename}" surname="{$rID//surname}"></who>,
		<position>{data($pID/position)}</position>,
		<match>{$degreeOfMatch}</match>,
		<average>{$assAvg}</average>
	}</interview>)

}</report>

(:
<!ELEMENT report (interview*)>
<!ELEMENT interview (who, position, match, average)>
<!ELEMENT who EMPTY>
<!ATTLIST who rID CDATA #REQUIRED
              forename CDATA #REQUIRED
              surname CDATA #REQUIRED>
<!ELEMENT position (#PCDATA)>
<!ELEMENT match (#PCDATA)>
<!ELEMENT average (#PCDATA)>
:)
