with
v_loclist as (select loc.city loc_city from hr.employees emp,hr.departments dept,hr.locations loc
where emp.department_id = dept.department_id(+) and dept.location_id = loc.location_id(+))
select loc_city as "Şehir İsmi",count(*) "Çalışan Sayısı"
from v_loclist
group by loc_city 

------With Olmadan Yazım Tarzı------
select loc.city "Şehir İsmi",count(*) "Çalışan Sayısı"
from hr.employees emp,hr.departments dept,hr.locations loc
where emp.department_id=dept.department_id(+) and dept.location_id=loc.location_id(+)
group by loc.city