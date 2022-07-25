with
v_emp as (select first_name,last_name,department_id,salary from hr.employees emp),
v_dept as (select department_id,max(salary) as max_sal from hr.employees group by department_id)
select v_emp.first_name,v_emp.last_name,v_dept.max_sal "Ücret"
from v_emp,v_dept
where v_emp.department_id(+)=v_dept.department_id and
v_emp.salary(+)=v_dept.max_sal;



