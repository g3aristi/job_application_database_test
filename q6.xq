let $oneskill := 

	for $skill in doc("resume.xml")//skill

	return $skill

return $oneskill
