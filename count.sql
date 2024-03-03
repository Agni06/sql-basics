-- returns total no: of item count from a column.
select count(c1) from t1;

--count with All columns

select count(*) from t1;

--count only unique values

select count(distinct c1) from t1;
 --ex:
SELECT COUNT(film_id) AS count_film_id
FROM reviews;

--
select count(language) as count_languages, count(country) as count_countries from films;

--

select Count(distinct country) as count_distinct_countries from films;
