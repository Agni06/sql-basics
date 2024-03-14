--Add a professor_id column with integer data type to affiliations, and 
--declare it to be a foreign key that references the id column in professors.

-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id integer REFERENCES professors (id);
