--Add a single space to the right or end of the first_name column.
--Add the characters < to the right or end of last_name column.
--Finally, add the characters > to the right or end of the email column.

-- Concatenate the first_name and last_name 
SELECT 
	rpad(first_name, LENGTH(first_name)+1) 
    || rpad(last_name, LENGTH(last_name)+2, ' <') 
    || rpad(email, LENGTH(email)+1, '>') AS full_email
FROM customer; 
