CREATE TABLE User_Location (
    user_id INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(location_id) REFERENCES Locations(id) ON UPDATE CASCADE,
    PRIMARY KEY (user_id, location_id)
);