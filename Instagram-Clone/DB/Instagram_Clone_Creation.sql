DROP DATABASE IF EXISTS Instagram_Clone;
CREATE DATABASE Instagram_Clone;
USE Instagram_Clone;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    # email VARCHAR(255) NOT NULL UNIQUE,
    # birthday DATE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE Photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    # caption VARCHAR(255) DEFAULT '',
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE
);

CREATE TABLE Comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    comment_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT NOT NULL,    
    photo_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE
);

CREATE TABLE Likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE,
    like_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(user_id, photo_id)
);

CREATE TABLE Follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    followed_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES Users(id),
    FOREIGN KEY(followee_id) REFERENCES Users(id),
    PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE Tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE Photo_Tags (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE,
    FOREIGN KEY(tag_id) REFERENCES Tags(id) ON DELETE CASCADE,
    PRIMARY KEY (photo_id, tag_id)
);