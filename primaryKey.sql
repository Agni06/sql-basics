--add PK


ALTER TABLE organizations
RENAME COLUMN organization TO id;

-- Make id a primary key
ALTER TABLE organizations
ADD CONSTRAINT organization_pk PRIMARY KEY (id);


-- Rename the university_shortname column to id
alter table universities
rename university_shortname to id;

-- Make id a primary key
alter table universities
add constraint university_pk primary key (id);
;
