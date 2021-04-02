select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e 
inner join titles as t
ON e.emp_no = t.emp_no
where (birth_date between '1952-01-01' AND '1955-12-31')
order by emp_no;

select * from retirement_titles;

drop table unique_titles;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, t.title
INTO unique_titles
from employees as e
inner join titles as t
ON e.emp_no = t.emp_no
where (e.birth_date between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;

select * from unique_titles
limit 10;

select count(emp_no) as "count", title
into retiring_titles
from unique_titles
group by title
order by "count" desc;

select * from retiring_titles