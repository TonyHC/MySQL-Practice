SELECT 
    Locations.city,
    Locations.country,
    COUNT(*) AS Total
FROM Locations
JOIN Photo_Location
    ON Locations.id = Photo_Location.location_id
GROUP BY Locations.id
ORDER BY Total DESC;

SELECT
    username,
    tag_name
FROM Comment_Tags
JOIN Comments
    ON Comment_Tags.comment_id = Comments.id
JOIN Tags
    ON Comment_Tags.tag_id = Tags.id
JOIN Users
    ON Users.id = Comments.user_id;
