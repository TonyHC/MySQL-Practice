CREATE TABLE Photo_Tags (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE,
    FOREIGN KEY(tag_id) REFERENCES Tags(id) ON DELETE CASCADE,
    PRIMARY KEY (photo_id, tag_id)
);