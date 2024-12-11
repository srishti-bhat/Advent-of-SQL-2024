select 
c.name
,w.wishes ->> 'first_choice' AS primary_wish 
,w.wishes ->> 'second_choice' As backup_wish 
,w.wishes -> 'colors' ->> 0 AS favorite_color 
,json_array_length(w.wishes -> 'colors') AS color_count
,CASE 
WHEN t.difficulty_to_make = 1 THEN 'Simple Gift'
WHEN t.difficulty_to_make = 2 THEN 'Moderate Gift'
WHEN t.difficulty_to_make>=3 THEN 'Complex Gift'  END AS gift_complexity 
,CASE 
 WHEN t.category ='outdoor' then 'Outside Workshop' 
 WHEN t.category = 'educational' then 'Learning Workshop' 
 ELSE 'General Workshop' END AS workshop_assignment
from children c
inner join wish_lists w on w.child_id = c.child_id
left join toy_catalogue t on t.toy_name = w.wishes->>'first_choice'
order by name ASC
limit 5