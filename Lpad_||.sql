--Add a single space to the end or right of the first_name column using a padding function.
--Use the || operator to concatenate the padded first_name to the last_name column.

-- Concatenate the padded first_name and last_name 
SELECT 
	RPAD(first_name, LENGTH(first_name)+1) || last_name AS full_name
FROM customer;
