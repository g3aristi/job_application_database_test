## Answers expected for each of the queries after adding q7.xq

### Q1

This are the resumes with more than three skills listed
* attribute rID {"ID-2"},
<forename>James</forename>,
5,
* attribute rID {"ID-11"},
<forename>Joe</forename>,
5,
* attribute rID {"ID-12"},
<forename>Joe</forename>,
4

### Q2

Interviewers who provided no assessment of collegiality
* xs:untypedAtomic("ID-1"), xs:untypedAtomic("ID-3")

### Q3

Posting's highest importance report what the skill is and its importance. <br>
<b> Should also provide the name of the skill </b>
* 5, 3, 4, 5, 5, 3, 3, 3, 4, 5

### Q4

Find postings whos required level was not met by any resume. Report the pID.<br>
<b>Should not have duplicates (ID-9) </b>
* xs:untypedAtomic("ID-2"),
* xs:untypedAtomic("ID-4"),
* xs:untypedAtomic("ID-5"),
* xs:untypedAtomic("ID-9"),
* xs:untypedAtomic("ID-9"),
* xs:untypedAtomic("ID-10"),
* xs:untypedAtomic("ID-10"),
* xs:untypedAtomic("ID-10"),
* xs:untypedAtomic("ID-10"),
* xs:untypedAtomic("ID-10")

### Q5

Find postings that have a required skill such that (a) fewer than half the resumes include that
skill or (b) of the resumes that include the skill, fewer than half list it at a level above 3. (This
is an inclusive or; postings that satisfy both (a) and (b) should be included.) Report the pID.
*

### Q6

Among those resumes that list at least one skill, find pairs of resumes that list exactly the same
skills at exactly the same level. For each pair, report the two rIDs. <br>
<b> Should be uni-directional, so 8,9 = 9,8. therefore should only report 8,9 </b>
* attribute rID {"ID-8"},
attribute rID {"ID-9"},
"|",
* attribute rID {"ID-9"},
attribute rID {"ID-8"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-11"},
attribute rID {"ID-15"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-12"},
attribute rID {"ID-15"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-14"},
"|",
* attribute rID {"ID-13"},
attribute rID {"ID-15"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-14"},
attribute rID {"ID-15"},
"|",
* attribute rID {"ID-15"},
attribute rID {"ID-11"},
"|",
* attribute rID {"ID-15"},
attribute rID {"ID-12"},
"|",
* attribute rID {"ID-15"},
attribute rID {"ID-13"},
"|",
* attribute rID {"ID-15"},
attribute rID {"ID-14"},
"|"

### Q7

Among those resumes that list at least one skill, find pairs of resumes that list exactly the same
skills at exactly the same level. For each pair, report the two rIDs.
<b> To see organized version [Tskills](https://github.com/g3aristi/job_application_database_test/blob/master/Tskills.xml)</b>

* <skills><skill name="C"><count level="1" n="0"/><count level="2" n="1"/><count level="3" n="0"/><count level="4" n="0"/>
<count level="5" n="1"/></skill><skill name="SQL"><count level="1" n="0"/><count level="2" n="0"/><count level="3" n="0"/>
<count level="4" n="0"/><count level="5" n="1"/></skill><skill name="Java"><count level="1" n="1"/><count level="2" n="0"/>
<count level="3" n="0"/><count level="4" n="0"/><count level="5" n="1"/></skill><skill name="Assembly">
<count level="1" n="0"/><count level="2" n="1"/><count level="3" n="0"/><count level="4" n="0"/><count level="5" n="0"/>
</skill><skill name="Cobol"><count level="1" n="0"/><count level="2" n="1"/><count level="3" n="0"/><count level="4" n="0"/>
<count level="5" n="0"/></skill><skill name="HTML"><count level="1" n="0"/><count level="2" n="0"/><count level="3" n="0"/>
<count level="4" n="1"/><count level="5" n="1"/></skill><skill name="CSS"><count level="1" n="0"/><count level="2" n="0"/>
<count level="3" n="0"/><count level="4" n="1"/><count level="5" n="1"/></skill><skill name="JavaScript">
<count level="1" n="0"/><count level="2" n="0"/><count level="3" n="1"/><count level="4" n="1"/><count level="5" n="0"/>
</skill><skill name="PHP"><count level="1" n="0"/><count level="2" n="2"/><count level="3" n="0"/><count level="4" n="0"/>
<count level="5" n="0"/></skill><skill name="Haskell"><count level="1" n="0"/><count level="2" n="0"/>
<count level="3" n="0"/><count level="4" n="0"/><count level="5" n="1"/></skill><skill name="Prolog"><count level="1" n="0"/>
<count level="2" n="0"/><count level="3" n="0"/><count level="4" n="0"/><count level="5" n="2"/>
</skill><skill name="MATLAB"><count level="1" n="0"/><count level="2" n="0"/><count level="3" n="0"/>
<count level="4" n="0"/><count level="5" n="3"/></skill><skill name="R"><count level="1" n="0"/><count level="2" n="0"/>
<count level="3" n="0"/><count level="4" n="0"/><count level="5" n="4"/></skill><skill name="Xquery"><count level="1" n="0"/>
<count level="2" n="0"/><count level="3" n="0"/><count level="4" n="0"/><count level="5" n="5"/></skill></skills>

### Q8

Generate an XML document called report.xml that contains a summary report for each interview.
This includes the rID and name of the person interviewed, the position they were
interviewed for, their degree of match for the position, and their average score on all elements
of the assessment. Your XML output must validate against the DTD in file report.dtd.
