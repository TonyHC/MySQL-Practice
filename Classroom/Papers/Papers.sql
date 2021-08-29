CREATE TABLE Papers (
    title VARCHAR(100),
    grade INT,
    student_id INT, 
    FOREIGN KEY(student_id) REFERENCES Students(id) ON DELETE CASCADE
);