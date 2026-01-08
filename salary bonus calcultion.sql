select employee_id,first_name, last_name, salary,
case
    when salary <=50000 then salary + (salary * 0.05) 
    when salary > 50000 then salary + (salary* 0.07)
    end as 'New Salary'
from employee_salary
union
select employee_id,first_name, last_name, salary,
case
   when dept_id = 6 then salary+ (salary* 0.1)
   end as 'New Salary'
from employee_salary   
   


