--Then, find out how many unique values there are in the university_city column.

SELECT count(distinct(university_city)) 
FROM universities;
--Using the above steps, identify the candidate key by trying out different combination of columns.

select COUNT(distinct (firstname, lastname)) 
FROM professors;
