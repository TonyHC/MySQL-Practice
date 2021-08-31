# Finding 5 oldest users
SELECT
  *
FROM Users
ORDER BY created_at LIMIT 5;

# What day of the week do most users register on?
SELECT
  DAYNAME(created_at) AS Day,
  COUNT(*) AS Total
FROM Users
GROUP BY Day
ORDER BY Total DESC;

# Find the users who have not posted a photo
SELECT
  username
FROM Users
LEFT JOIN Photos
  ON Users.id = Photos.user_id
WHERE Photos.id IS NULL;

# Find the photo who has the most likes
SELECT 
    username AS USER,
    Photos.id,
    image_url,
    COUNT(Likes.user_id) AS LIKES
FROM Users
JOIN Photos
    ON Users.id = Photos.user_id
JOIN Likes
    ON Photos.id = Likes.photo_id
GROUP BY Photos.id
ORDER BY LIKES DESC 
LIMIT 1;

# How many times does the average user post?
# SELECT (SELECT Count(*) 
#         FROM   photos) / (SELECT Count(*) 
#                           FROM   users) AS avg; 

SELECT
    COUNT(Photos.id) / COUNT(DISTINCT(Users.id)) AS 'Average Posts'
FROM Users
LEFT JOIN Photos
    ON Users.id = Photos.user_id;
    
# Find the 5 most popular hashtags
SELECT
    tag_name,
    COUNT(tag_name) AS Total
FROM Tags
JOIN Photo_Tags
    ON Tags.id = Photo_Tags.tag_id
GROUP BY Photo_Tags.tag_id
ORDER BY Total DESC
LIMIT 5;

# Find all usrs who liked all photos
SELECT 
    username,
    COUNT(*) AS Total_Likes
FROM Users
JOIN Likes
    ON Users.id = Likes.user_id
GROUP BY Users.id
HAVING Total_Likes = (SELECT COUNT(*) FROM Photos);

# Find the photo with the most comments
SELECT 
    username AS USER,
    Photos.id,
    image_url,
    COUNT(Users.id) as Total
FROM Users
JOIN Photos
    ON Users.id = Photos.user_id
JOIN Comments
    ON Photos.id = Comments.photo_id
GROUP BY Photos.id
ORDER BY Total DESC 
LIMIT 1;

# How many times does the average user comment excluding users who never commented before?
SELECT
    COUNT(Comments.id) / COUNT(DISTINCT(Users.id)) AS 'Average Comments'
FROM Users
JOIN Comments
    ON Users.id = Comments.user_id;
    
# Find all users who have don't follow others
SELECT
    username, 
    COUNT(follower_id) AS Follows
FROM Follows
RIGHT JOIN Users
    ON Follows.follower_id = Users.id
WHERE Follows.follower_id IS NULL
GROUP BY Users.id;

# How many users have at least posted one photo and made one comment?
SELECT    
    COUNT(DISTINCT(Users.id)) as 'Active Users'
FROM Users
JOIN Photos
    ON Users.id = Photos.user_id
JOIN Comments
    ON Users.id = Comments.user_id;
    
# Find the user who used the most tags
SELECT 
    username,
    user_id,
    COUNT(*) as Tags
FROM Photos
JOIN Photo_Tags
    ON Photos.id = Photo_Tags.photo_id
JOIN Tags
    ON Photo_Tags.tag_id = Tags.id
JOIN Users
    ON Photos.user_id = Users.id
GROUP BY Users.id
ORDER BY Tags DESC
LIMIT 1;

# Find the 5 users who posted the most photos
SELECT
    username,
    user_id,
    COUNT(*) as Photos
FROM Users
JOIN Photos
    ON Users.id = Photos.user_id
GROUP BY Users.id
ORDER BY Photos DESC
LIMIT 5;