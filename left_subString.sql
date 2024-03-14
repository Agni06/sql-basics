--Extract the characters to the left of the @ of the email column in the customer table and alias it as username.
--Now use SUBSTRING to extract the characters after the @ of the email column and alias the new derived field as domain.


SELECT
  -- Extract the characters to the left of the '@'
  LEFT(email, POSITION('@' IN email)-1) AS username,
  -- Extract the characters to the right of the '@'
  SUBSTRING(email FROM POSITION('@' IN email)+1 FOR LENGTH(email)) AS domain
FROM customer;
