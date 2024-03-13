--Find the number of characters in the description column with the alias desc_len.
SELECT 
  -- Select the title and description columns
  title,
  description,
  -- Determine the length of the description column
  char_length(description) AS desc_len -- length(description)
FROM film;
