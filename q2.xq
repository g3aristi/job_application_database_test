distinct-values(for $interview in doc("interview.xml")//interview
where empty($interview//collegiality)
return $interview/@sID)
