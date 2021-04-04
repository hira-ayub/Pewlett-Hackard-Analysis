# Pewlett-Hackard-Analysis
 
# Overview

In this Assignment we are creating reports to determine the determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program.
These reports will help the company to prepare for the "silver tsunami" as many employees are reaching retirement.

# Results: 

First, we created a report to see the number of employees retiring by title. We combined two tables to get our result by filtering on the birth date between 1952 & 1955. We also used the Distinct On function to include the current title.

- The report identified that 90,398 employees will be eligible for retirement.
- Senior Engineer & Senior Staff & Engineer are the top 3 titles where the number of employees retiring are higher.  

[retiring_title](retiring_titles.PNG)

The next step was to be prepared to fill all those positions through a mentorship program. We combined the tables and filtered to a list that contained current employees who were born between January 1, 1965 and December 31, 1965 and are still with the company by using the to_date column.
- The report established a list of 1,549 employees that would be eligible for the mentorship program.
# Summary: 
The information has given us insight into the future of the company to develop more understanding about how to build a sustainable company with filling the retirement position accordingly.   
The mentorship program is a good idea but is currently only for the staff members that were born in 1965. As the retirement number is way higher than the mentorship program the company needs to change the born year criteria to fill more positions.


