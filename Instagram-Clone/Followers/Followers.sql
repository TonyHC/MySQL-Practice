CREATE TABLE Follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    followed_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES Users(id),
    FOREIGN KEY(followee_id) REFERENCES Users(id),
    PRIMARY KEY(follower_id, followee_id)
);