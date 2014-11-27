for $resume in doc("resume.xml")//resumes/resume
where count($resume//skill) > 3
return 

($resume/@rID,
$resume/identification/name/forename,
count($resume//skill))


