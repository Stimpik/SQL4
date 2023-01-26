INSERT INTO genres (genre_name) 
VALUES  ('Rock'), ('Hip hop'), ('Jazz'), ('Electronic music'), ('Pop music');


INSERT INTO musicians (musician_name)
VALUES  ('Linkin Park'), ('Bon Jovi'), ('Scorpions'), 
		('Kanye West'), ('Snoop Dogg'), ('2PAC'), 
		('Frank Sinatra'), ('Louis Armstrong'), ('Nat King Cole'),
		('The Prodigy'), ('Depeche Mode'), ('Robert Miles'),
		('Michael Jackson'), ('Queen'), ('Elton John');


INSERT INTO genresmusicians (genre_id, musician_id)
VALUES 	(1, 9), (1, 13), (1, 12),
		(2, 9), (3, 9), (3,13),
		(4, 10), (5, 10), (6,10),
		(7, 11), (7,13), (8, 11), 
		(8, 13), (9,11), (10, 12),
		(11, 12), (11, 9), (11, 13),
		(12, 12),(13, 13), (13, 9),
		(14, 9), (14, 13), (15, 9), 
		(15, 13);


INSERT INTO albums (album_name, release_year)
VALUES 	('Hybrid Theory', 2000), ('Slippery When Wet', 1986), ('Humanity: Hour I', 2007), ('JESUS IS KING', 2019), ('I Wanna Thank Me', 2019), 
		('All Eyez on Me', 1996), ('Songs by Sinatra', 1947), ('What A Wonderful World', 1967), ('L-O-V-E', 1964), ('The Fat of the Land', 1997),
		('Music for the Masses', 1987), ('Dreamland', 1996), ('Thriller', 1982), ('News of the World', 1977), ('Honky Château', 1972);


INSERT INTO songs (song_name, duration, album_id)
VALUES  ('Papercut', 185, 1), ('One Step Closer', 156, 1), ('With You', 203, 1),
		('Let It Rock', 325, 2), ('You Give Love a Bad Name', 224, 2), ('Livin on a Prayer', 249, 2),
		('Humanity', 326, 3), ('Cold', 232, 3), ('We Were Born to Fly', 239, 3), 
		('Everything We Need', 116, 4), ('Follow God', 165, 4), ('Use This Gospel', 214, 4),
		('What U Talkin Bout', 163, 5), ('So Misinformed', 232, 5), ('Let Bygones Be Bygones', 185, 5),
		('Ambitionz az a Ridah', 279, 6), ('All bout U', 277, 6), ('Skandalouz', 249, 6),
		('Im Sorry I Made You Cry', 143, 7), ('Over the Rainbow', 196, 7), ('I Concentrate on You', 183, 7),
		('What A Wonderful World', 139, 8), ('Cabaret', 166, 8), ('The home fire', 197, 8),
		('L-O-V-E', 150, 9), ('The Girl from Ipanema', 176, 9), ('Three Little Words', 136, 9),
		('Smack My Bitch Up', 343, 10), ('Firestarter', 282, 10), ('Breathe', 335, 10),
		('Never Let Me Down Again', 287, 11), ('Strangelove', 296, 11), ('Behind the Wheel', 318, 11),
		('Children', 419, 12), ('Fable', 391, 12), ('Landscape', 370, 12),
		('Thriller', 357, 13), ('Billie Jean', 294, 13), ('The Girl Is Mine', 222, 13),
		('My Melancholy Blues', 219, 14), ('We Will Rock You', 121, 14), ('We Are the Champions', 179, 14),
		('Rocket Man', 382, 15), ('Honky Cat', 313, 15), ('Mona Lisas and Mad Hatters', 300, 15);


INSERT INTO compilation (compilation_name, compilation_release_year)
VALUES  ('one', 1999), ('two', 2001), ('three', 2005), ('four', 2008),
		('five', 2015), ('six', 2016), ('seven', 2019), ('eight', 2020);


INSERT INTO albums_musucuans (album_id, musician_id)
VALUES	(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),
		(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),
		(11, 11),(12, 12),(13, 13),(14, 14),(15, 15);



INSERT INTO songs_compilatons (compilation_id, song_id)
VALUES	(19, 1), (25, 1), (22, 1), (43, 1), (37, 1),
		(40, 2), (4, 2), (31, 2), (16, 2), (34, 2),
		(28, 3), (1, 3), (20, 3), (26, 3), (23, 3),
		(44, 4), (41, 4), (38, 4), (5, 4), (32, 4),
		(17, 5), (35, 5), (29, 5), (2, 5), (21, 5),
		(27, 6), (24, 6), (45, 6), (42, 6), (39, 6),
		(13, 7), (15, 7), (11, 7),
		(14, 8), (10, 8), (12, 8);