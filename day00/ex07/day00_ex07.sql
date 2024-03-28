SELECT id,name,
case
    when (person.age BETWEEN 10 and 20) then 'interval #1'
    when (person.age BETWEEN 20 and 24) then 'interval #2'
    else 'interval #3'
end as interval_info 
from person     
ORDER BY interval_info ASC