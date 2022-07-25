with v_str as (select department_name from hr.departments where manager_id is null)
select substr(department_name,5,1) from v_str


------With olmadan Yazım Tarzı--------
select substr(department_name,5,1) from hr.departments where manager_id is null 
