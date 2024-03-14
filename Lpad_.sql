--Now add a single space to the left or beginning of the last_name column using a different padding function than the first step.
--Use the || operator to concatenate the first_name column to the padded last_name.

-- Concatenate the first_name and last_name 
SELECT 
	first_name || lpad(last_name, LENGTH(last_name)+1) AS full_name
FROM customer; 
