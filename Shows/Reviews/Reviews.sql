CREATE TABLE Reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    reviewer_id INT,
    series_id INT,
    FOREIGN KEY(reviewer_id) REFERENCES Reviewers(id) ON DELETE CASCADE,
    FOREIGN KEY(series_id) REFERENCES Series(id) ON DELETE CASCADE
);