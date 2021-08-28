# SELECT title, stock_quantity,
#     CASE 
#         WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
#         WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
#         WHEN stock_quantity BETWEEN 100 AND 300 THEN '***'
#         ELSE '****'
#     END AS STOCK
# FROM books;

# SELECT title,
#     CASE    
#         WHEN title LIKE '%THE%' THEN 'Book Title with The'
#         ELSE 'Book Title without THE'
#     END AS Book 
# FROM books;

# SELECT title, author_lname,
#     CASE    
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title = 'Just Kids' OR title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
#         ELSE 'Novel'
#     END AS Genre
# FROM books;

# SELECT title, author_lname,
#     CASE    
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title IN '(Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
#         ELSE 'Novel'
#     END AS Genre
# FROM books;

SELECT author_fname, author_lname,  
    CASE    
        WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' ', 'book')
        ELSE CONCAT(COUNT(*), ' ', 'books')
    END AS Genre
FROM books GROUP BY author_lname, author_fname;