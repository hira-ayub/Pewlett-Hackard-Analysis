-- Deliverable 1: The Number of Retiring Employees by Title

select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e 
inner join titles as t
ON e.emp_no = t.emp_no
where (birth_date between '1952-01-01' AND '1955-12-31')
order by emp_no;

select * from retirement_titles
limit 10;

-- Distinct on to retrieve the first occurrence of the employee number 

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, t.title
INTO unique_titles
from employees as e
inner join titles as t
ON e.emp_no = t.emp_no
where (e.birth_date between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;

select * from unique_titles
limit 10;

-- Cunt & Sort

select count(emp_no) as "count", title
into retiring_titles
from unique_titles
group by title
order by "count" desc;

select * from retiring_titles

-- Deliverable 2: The Employees Eligible for the Mentorship Program
select distinct on (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, dp.from_date,dp.to_date, t.title
into mentorship_eligibilty
from employees as e 
inner join  dept_emp as dp
ON e.emp_no = dp.emp_no
inner join titles as t
on e.emp_no = t.emp_no
where (t.to_date ='9999-01-01')
      	and (e.birth_date between '1965-01-01' and '1965-12-31')
	 order by emp_no;
	 
select * from mentorship_eligibilty
limit 10;

