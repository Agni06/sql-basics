--Rename the organization column in affiliations to organization_id.

-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id integer REFERENCES professors (id);

-- Rename the organization column to organization_id
alter table affiliations
rename organization TO organization_id;
