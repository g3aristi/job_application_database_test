for $posting in doc("posting.xml")//postings/posting


return max($posting//reqSkill/@importance)