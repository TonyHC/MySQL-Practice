CREATE TABLE Likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE,
    like_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(user_id, photo_id)
);