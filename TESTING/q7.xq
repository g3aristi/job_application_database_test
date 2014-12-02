(: pskill holds all the skills asked for in postings:)
let $pskill :=

	for $skill in distinct-values(doc("posting.xml")//reqSkill/@what)

	return $skill

(: rskill holds all the skills in all resumes :)
(:let $rskill :=

	for $skill in doc("q7resume.xml")//skill

	return $skill/@what
:)
(: table  contains resumes that list the skill asked in a posting:) 

let $table := 

for $x in doc("resume.xml")//resume

	for $sx in $x//skill

		for $y in $pskill
	
		where $y = $sx/@what

		return (<skill>{$sx/@what} {$sx/@level} {$x/@rID}</skill>)

(: dt holds all the distinct skills that met the posting skill requiremnts:)
let $dt := distinct-values($table/@what)

(: nr contains the name of the skill and how many resumes list the skill asked by a posting :)
let $nr1 := 

	for $x in $dt

	return (<skill name="{$x}"> <count level="1" n="{count($table[(@what eq $x) and (@level eq "1")])}"></count></skill>)

let $nr2 :=

        for $x in $dt

        return (<skill name="{$x}"> <count level="2" n="{count($table[(@what eq $x) and (@level eq "2")])}"></count></skill>)

let $nr3 :=

        for $x in $dt

        return (<skill name="{$x}"> <count level="3" n="{count($table[(@what eq $x) and (@level eq "3")])}"></count></skill>)

let $nr4 :=

        for $x in $dt

        return (<skill name="{$x}"> <count level="4" n="{count($table[(@what eq $x) and (@level eq "4")])}"></count></skill>)

let $nr5 :=

        for $x in $dt

        return (<skill name="{$x}"> <count level="5" n="{count($table[(@what eq $x) and (@level eq "5")])}"></count></skill>) 

(: Unorganize answer where is ordered by level not by language :)
let $u := <skills> {$nr1} {$nr2} {$nr3} {$nr4} {$nr5} </skills>

(: Distinct languages :)
let $ud := distinct-values($u//skill/@name)

let $da :=
	
	for $ld in $ud
	
		for $l in $u//skill
	
		where $ld = $l/@name 
	
		return ($l)

(: organized answer :)
let $oa :=

for $i in (1 to count($ud))

return 
	<skill name="{$ud[$i]}">
	
	{for $b in $da
	
	where $b/@name = $ud[$i]
	
	return $b/count}
	</skill>

return <skills>{$oa}</skills>
