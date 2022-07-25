with v_strrev as (select department_name dept from hr.departments)
select replace(sys_connect_by_path(substr (dept, level*-1, 1), '|'), '|') rev_str
from  v_strrev
where  connect_by_isleaf = 1
connect by prior dept = dept                 
and prior sys_guid() is not null 
and level <= length(dept); 

