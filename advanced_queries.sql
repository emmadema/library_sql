-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.

-- SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.

-- SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.

-- SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.

-- SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'Albert Camus';
--  id |     name     | nationality | birth_year | id |     title     | publication_date | author_id 
-- ----+--------------+-------------+------------+----+---------------+------------------+-----------
--   7 | Albert Camus | France      |       1913 | 58 | The Stranger  |             1942 |         7
--   7 | Albert Camus | France      |       1913 | 59 | The Plague    |             1947 |         7
--   7 | Albert Camus | France      |       1913 | 60 | The Fall      |             1956 |         7
--   7 | Albert Camus | France      |       1913 | 61 | A Happy Death |             1971 |         7
--   7 | Albert Camus | France      |       1913 | 62 | The First Man |             1995 |         7
-- (5 rows)

-- Find out how many books written before 1980 were by authors not from the US.

-- SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE publication_date < 1980 AND nationality!='United States of America' ;

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.

-- library=# SELECT * FROM authors WHERE name LIKE 'J%';
--  id |       name        |       nationality        | birth_year 
-- ----+-------------------+--------------------------+------------
--   2 | J.K. Rowling      | United Kingdom           |       1965
--   3 | James Baldwin     | United States of America |       1924
--   4 | Jorge Luis Borges | Argentina                |       1899
-- (3 rows)

-- library=# SELECT * FROM authors WHERE name ILIKE 'J%';
--  id |       name        |       nationality        | birth_year 
-- ----+-------------------+--------------------------+------------
--   2 | J.K. Rowling      | United Kingdom           |       1965
--   3 | James Baldwin     | United States of America |       1924
--   4 | Jorge Luis Borges | Argentina                |       1899
-- (3 rows)

-- Find all books whose titles contain 'the'.

-- SELECT * FROM books WHERE title LIKE '%the%';
