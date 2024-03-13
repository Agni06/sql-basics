--Extract only the street address without the street number from the address column.
--Use functions to determine the starting and ending position parameters.

SELECT 
  -- Select only the street name from the address table
  SUBSTRING(address FROM POSITION(' ' IN address)+1 FOR LENGTH(address))
FROM 
  address;
