# SELECT
#   title,
#   released_year,
#   genre,
#   AVG(rating) AS Average_Rating
# FROM Series
# JOIN Reviews
#   ON Series.id = Reviews.series_id
# GROUP BY Series.id
# ORDER BY Average_Rating;

# SELECT
#   title,
#   rating
# FROM Series
# JOIN Reviews
#   ON Series.id = Reviews.series_id
# ORDER BY Series.title;

# SELECT
#   title,
#   AVG(rating) AS Avg_Rating
# FROM Series
# JOIN Reviews
#   ON Series.id = Reviews.series_id
# GROUP BY Series.id
# ORDER BY Avg_Rating;

# SELECT
#   first_name,
#   last_name,
#   rating
# FROM Reviewers
# JOIN Reviews
#   ON Reviewers.id = Reviews.reviewer_id;

# SELECT
#     title
# FROM Series
# LEFT JOIN Reviews
#     ON Series.id = Reviews.series_id
# WHERE Reviews.rating IS NULL;

# SELECT
#     title
# FROM Series
# LEFT JOIN Reviews
#     ON Series.id = Reviews.series_id
# WHERE Reviews.rating >= 7.5
# GROUP BY Series.title
# ORDER BY Series.title DESC;

# SELECT
#     genre,
#     ROUND(AVG(rating),2) AS Avg_Rating
# FROM Series
# JOIN Reviews
#     ON Series.id = Reviews.series_id
# GROUP BY Series.genre;

SELECT
    first_name,
    last_name,
    COUNT(reviewer_id) AS COUNT,
    IFNULL(MIN(rating),0) AS MIN,
    IFNULL(MAX(rating),0) AS MAX,
    IFNULL(ROUND(AVG(rating),2),0) AS Average,
    IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWER USER'
        WHEN COUNT(rating) > 0 THEN 'AVERAGE USER'
        ELSE 'NOT A USER'
    END AS USER
FROM Reviewers
LEFT JOIN Reviews
    ON Reviewers.id = Reviews.reviewer_id
GROUP BY Reviewers.id;

# SELECT
#     title,
#     rating,
#     CONCAT(first_name, ' ', last_name) AS Reviewer
# FROM Reviews
# JOIN Reviewers
#     ON Reviewers.id = Reviews.reviewer_id
# JOIN Series
#     ON Series.id = Reviews.series_id
# WHERE Reviews.rating >= 7.0
# ORDER BY Series.title;

# SELECT
#     title,
#     AVG(rating) as Average
# FROM Reviews
# JOIN Reviewers
#     ON Reviewers.id = Reviews.reviewer_id
# JOIN Series
#     ON Series.id = Reviews.series_id
# WHERE Reviews.rating >= 7.0
# GROUP BY Series.title
# HAVING AVG(rating) >= 9.0
# ORDER BY Average DESc;