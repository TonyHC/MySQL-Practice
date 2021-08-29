# SELECT
#   first_name,
#   title,
#   grade
# FROM Students
# JOIN Papers
#   ON Students.id = Papers.student_id
# ORDER BY first_name DESC;

# SELECT
#   first_name,
#   title,
#   grade
# FROM Students
# LEFT JOIN Papers
#   ON Students.id = Papers.student_id;

# SELECT
#   first_name,
#   IFNULL(title, 'MISSING'),
#   IFNULL(grade, 0)
# FROM Students
# LEFT JOIN Papers
#   ON Students.id = Papers.student_id;

# SELECT
#   first_name,
#   IFNULL(AVG(grade), 0) AS Average
# FROM Students
# LEFT JOIN Papers
#   ON Students.id = Papers.student_id
# GROUP BY Students.id
# ORDER BY Average DESC;

SELECT
  first_name AS 'Fist Name',
  IFNULL(AVG(grade), 0) AS Average,
  CASE
    WHEN AVG(grade) IS NULL THEN 'FAILING'
    WHEN AVG(grade) >= 75.0 THEN 'PASSING'
    ELSE 'FAILING'
  END AS 'Passing Status'
FROM Students
LEFT JOIN Papers
  ON Students.id = Papers.student_id
GROUP BY Students.id
ORDER BY Average DESC;