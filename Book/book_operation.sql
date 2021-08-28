# SELECT 
#     CONCAT
#     (
#         SUBSTRING(title, 1, 10), 
#         '...'
#     ) AS 'Book Title' 
# FROM books;

# SELECT SUBSTRING(REPLACE(title, 'The', 'A'), 1, 10) AS 'New Title' FROM books;

# SELECT
#   CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
#   CONCAT_WS(',', author_lname, author_fname) AS 'author',
#   CONCAT_WS(' ', stock_quantity, 'in stock') AS 'quantity'
# FROM books;

# SELECT author_lname, author_fname FROM books ORDER BY author_lname, author_fname;
# SELECT UPPER(CONCAT('my favorite author is', ' ', author_fname, ' ', author_lname, '!')) AS 'yell' FROM books ORDER BY author_lname;

#INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES ('Thomas', CURDATE(), CURTIME(), NOW());

SELECT title FROM books WHERE SUBSTRING(title, 1, 1) IN ('C', 'S');
