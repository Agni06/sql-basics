--JOIN professors with universities on professors.university_id = universities.id, i.e., retain all records 
--where the foreign key of professors is equal to the primary key of universities.
--Filter for university_city = 'Zurich'.

-- Select all professors working for universities in the city of Zurich
SELECT professors.lastname, universities.id, universities.university_city
from professors
left join
ON professors.university_id = universities.id
where universities.university_city = 'Zurich';
