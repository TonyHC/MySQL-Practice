INSERT INTO Users (username, email, birthday, created_at) VALUES
('hEndIsT', 'JonesStrange@gmail.com', '2001/11/02', '2004/11/22 16:12:15.142'),   ('TAtex_10', 'North.USClean@gmail.com', '1992/04/22', '2005/11/02 10:41:15.046'),   ('sIOzANtE', 'USProfuse@gmail.com', '1982/06/19', '2004/09/12 11:42:10.846'),   ('NAuGONt', 'USDelightfuls@gmail.com', '1941/10/19', '2004/04/12 09:05:12.124'),   ('1EntIoRaB2', 'onesFragile@gmail.com', '2001/08/17', '2006/10/30 08:52:40.946'), ('REdaZ2', 'TomLeft@gmail.com', '1992/08/01', '2005/01/16 23:42:15.146'),   ('ARlIaHe', 'TeamPowerfulUSA@gmail.com', '2000/12/31', '2004/12/22 04:14:18.446'),  ('usTIC0Me', 'TeamHesitantUSA@gmail.com', '1961/02/21', '2006/04/19 16:42:30.746'),   ('RAINTastz', 'work@gmail.com', '1987/08/04', '2009/09/22 21:42:15.786'),   ('LinETivErLI', 'TeamExoticUSA@gmail.com', '1999/09/12', '2004/09/10 03:24:16.846');

INSERT INTO Photos(image_url, user_id, caption) VALUES
('http://elijah.biz', 1, 'Look at it'), ('http://elijah.org', 1, 'Another'), ('http://world.gov', 2, 'Gov'), ('http://sports.com', 3, 'Sports'),
('http://align.pres', 5, 'PRes'), ('http://idea.gov', 8, ''), ('http://lan.bot', 9, 'Bot web'), ('http://hat.app', 8, 'Hat'), 
('http://web.app', 10, 'Web'), ('http://moat.org', 1, 'Another pic'), ('http://boats.org', 1, 'Another one');
    
INSERT INTO Comments(comment_text, user_id, photo_id) VALUES 
    (':)',2,5), ('Wow',4,10), ('More of it',10,11), ('Sucks',3,6), ('Jealous',1,9), ('Fesfs',2,4), ('febs sfes',9,6), ('Flekmsxof sif',6,8), 
    ('Lofems',10,5), ('meis fi',1,11), ('feilmsfie s',8,2), ('fbskmfe0',4,9), ('Kfiems cis feis',7,4);
    
INSERT INTO Likes(user_id,photo_id) VALUES
    (1,11), (4,2), (9,1), (3,6), (4,1), (7,5), (5,2), (2,10), (10,8), (9,6), (6,4), (4,8), (7,11), (6,2), (4,9), (3,5),
    (6,9), (2,7), (8,3), (5,4), (6,1), (6,10), (10,3), (9,4);
    
INSERT INTO Tags(tag_name) VALUES
    ('food'), ('beach'), ('dog'), ('cat'), ('baseball'), ('restaurant'), ('hotel'), ('mountain'), ('view'), ('snow'),
    ('football'), ('house'), ('invention'), ('school'), ('lunch');
    
INSERT INTO Photo_Tags(photo_id, tag_id) VALUES
    (1,15), (1,8), (1,3), (1,2), (1,12), (2,8), (2,4), (4,11), (4,6), (4,9), (5,8), (5,4), (6,13), (6,8),
    (7,8), (7,3), (8,8), (8,14), (9,2), (9,4), (9,1), (10,5), (10,8), (11,4);

INSERT INTO Comment_Tags(comment_id, tag_id) VALUES
    (1,3), (4,11), (6,2), (6,4), (6,7), (8,4), (9,3), (10,4), (10,2), (10,10), (10,14), (10,11);
    
INSERT INTO Locations(city, country) VALUES
    ('tampa', 'united states'), ('dallas', 'united state'), ('seattle', 'united state'), ('berlin', 'germany'), ('tokyo', 'japan'),
    ('paris', 'france'), ('beijing', 'china'), ('vila rica', 'Brazil'), ('andulo', 'angola'), ('osaka', 'japan');
    
INSERT INTO User_Location(user_id, location_id) VALUES
    (1,2), (2,4), (3,9), (4,6), (5,5), (6,9), (7,8), (8,10), (9,2), (10,2);
    
INSERT INTO Photo_Location(photo_id, location_id) VALUES
    (1,4), (2,3), (3,5), (4,1), (5,10), (6,9), (7,8), (8,6), (9,3), (10,4), (11,3);
    