with v_str as (select reverse(department_name) revdept from hr.departments where manager_id is null)
select substr(revdept,1,3) from v_str