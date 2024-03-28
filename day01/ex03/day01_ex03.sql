SELECT order_date as action_date,person_id from person_order
UNION
SELECT visit_date,person_id from person_visits
ORDER by action_date ASC,person_id DESC