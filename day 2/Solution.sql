
WITH COMBINED_TABLES AS
(select *,CHR(value) from letters_a 
where 
CHR(value) ~* '[a-z !\",\(\)\-\.:;?]'

UNION ALL

select *,CHR(value) from letters_b b
WHERE
CHR(value) ~* '[a-z !\",\(\)\-\.:;?]'
)

SELECT string_agg(CHR(value),'') FROM COMBINED_TABLES


