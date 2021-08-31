CREATE TABLE Comment_Tags (
    comment_id INT NOT NULL.
    tag_id INT NOT NULL,
    FOREIGN KEY(comment_id) REFERENCES Comments(id),
    FOREIGN KEY(tag_id) REFERENCES Tags(id) ON DELETE CASCADE,
    PRIMARY KEY (comment_id, tag_id)
);