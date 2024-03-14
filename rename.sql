--Rename the university_shortname column to university_id in professors.

-- Rename the university_shortname column
ALTER TABLE professors
rename column university_shortname to university_id;
