
## DAY 1 CHALLENGE

Create a report showing what gifts children want, with difficulty ratings and categorization.

The primary wish will be the first choice

The secondary wish will be the second choice

You can presume the favorite color is the first color in the wish list

Gift complexity can be mapped from the toy difficulty to make. Assume the following:

- Simple Gift = 1
- Moderate Gift = 2
- Complex Gift >= 3

We assign the workshop based on the primary wish's toy category. Assume the following:

- outdoor = Outside Workshop
- educational = Learning Workshop
- all other types = General Workshop

Order the list by name in ascending order.

Your answer should limit its return to only 5 rows

In the inputs below provide one row per input in the format, with no spaces and comma separation:

- name,primary_wish,backup_wish,favorite_color,color_count,gift_complexity,workshop_assignment

You can achieve this by setting the following in your psql before running your query.

\pset format unaligned

\pset fieldsep ','