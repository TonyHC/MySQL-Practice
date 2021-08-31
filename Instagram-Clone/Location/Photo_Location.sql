CREATE TABLE Photo_Location (
    photo_id INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES Photos(id) ON DELETE CASCADE,
    FOREIGN KEY(location_id) REFERENCES Locations(id) ON DELETE CASCADE,
    PRIMARY KEY(photo_id, location_id)
);