-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors

-- SELECT * FROM authors;

-- Get just the name and birth year of all authors

--	SELECT name, birthyear FROM authors;

-- Get all authors born in the 20th centruy or later

-- SELECT * FROM authors WHERE birth_year >='1900';

-- Get all authors born in the USA

-- SELECT * FROM authors WHERE nationality = 'United States of America';

-- Get all books published on 1985

-- SELECT * FROM books WHERE publication_date = '1985';

-- Get all books published before 1989

-- SELECT * FROM books WHERE publication_date < '1989';

-- Get just the title of all books.

-- SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been

-- SELECT publication_date  FROM books WHERE title= 'A Dance with Dragons';  

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)

-- SELECT * FROM books WHERE title LIKE '%the%';

-- Add yourself as an author

-- INSERT INTO authors VALUES (9, 'Emma DeMango', 'Italian', 1991);

-- Add two books that you'd like to write (you can hard-code your id as the author id)

--   library=# INSERT INTO books VALUES (100, 'Cat Diary', 2020, 9);
-- INSERT 0 1
-- library=# INSERT INTO books VALUES (101, 'Cat are Cool', 2025, 9);
-- INSERT 0 1

-- Update one of your books to have a new title

-- UPDATE books SET title = 'dogs' WHERE title = 'Cat Diary';

-- Delete your books

--library=# DELETE FROM books where title = 'dogs';
-- DELETE 1
-- library=# DELETE FROM books where title = 'Cat are Cool';
-- DELETE 1

-- Delete your author entry
-- DELETE FROM authors where name = 'Emma DeMango';
-- DELETE 1

