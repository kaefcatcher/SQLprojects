SELECT p1.name as p1n, p2.name as p2n, p1.address as common_address
from person as p1
join person as p2
on p1.address=p2.address and p1.id > p2.id
order by 1,2,3

