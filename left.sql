--Select the first 50 characters of the description column with the alias short_desc

SELECT 
  -- Select the first 50 characters of description
  left(description, 50) AS short_desc
FROM 
  film AS f; 
