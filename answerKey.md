## Answers expected for each of the queries

### Q1

This are the resumes with more than three skills listed
* attribute rID {"ID-2"}, <forename>James</forename>, 5

### Q2

Interviewers who provided no assessment of collegiality
* xs:untypedAtomic("ID-1"), xs:untypedAtomic("ID-3")

### Q3

Posting's highest importance report what the skill is and its importance. <br>
<b> Should also provide the name of the skill </b>
* 5, 3, 4, 5, 5, 3, 3, 3, 4

### Q4

Find postings whos required level was not met by any resume. Report the pID.<br>
<b>Should not have duplicates (ID-9) </b>
* xs:untypedAtomic("ID-2"),
* xs:untypedAtomic("ID-4"),
* xs:untypedAtomic("ID-5"),
* xs:untypedAtomic("ID-9"),
* xs:untypedAtomic("ID-9")

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
* attribute rID {"ID-9"},
* "|",
* attribute rID {"ID-9"},
* attribute rID {"ID-8"},
* "|"

### Q7

Among those resumes that list at least one skill, find pairs of resumes that list exactly the same
skills at exactly the same level. For each pair, report the two rIDs.

### Q8

Generate an XML document called report.xml that contains a summary report for each interview.
This includes the rID and name of the person interviewed, the position they were
interviewed for, their degree of match for the position, and their average score on all elements
of the assessment. Your XML output must validate against the DTD in file report.dtd.
