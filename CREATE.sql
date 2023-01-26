CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) NOT NULL UNIQUE
	);

CREATE TABLE IF NOT EXISTS musicians (
	musician_id SERIAL PRIMARY KEY,
	musucuan_name VARCHAR(80) NOT NULL UNIQUE
	);
CREATE TABLE IF NOT EXISTS genresmusicians (
	musician_id INTEGER REFERENCES genres(genre_id),
	genre_id INTEGER REFERENCES musicians(musician_id),
	CONSTRAINT a PRIMARY KEY (musician_id, genre_id)
	);
	
CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR (100) NOT NULL,
	release_year INT CHECK
		(release_year>999 and release_year<9999)
	);
	
CREATE TABLE IF NOT EXISTS albums_musucuans (
	musician_id INTEGER REFERENCES albums(album_id),
	album_id INTEGER REFERENCES musicians(musician_id),
	CONSTRAINT b PRIMARY KEY (musician_id, album_id)
	);
	
CREATE TABLE IF NOT EXISTS songs (
	song_id SERIAL PRIMARY KEY,
	song_name VARCHAR(80) NOT NULL,
	duration INTEGER CHECK
		(duration>0),
	album_id INTEGER NOT NULL REFERENCES albums(album_id)	
	);

CREATE TABLE IF NOT EXISTS compilation (
	compilation_id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(80) NOT NULL,
	compilation_release_year INT CHECK
		(compilation_release_year>999 and compilation_release_year<9999)
	);
	
CREATE TABLE IF NOT EXISTS songs_compilatons (
	song_id INTEGER REFERENCES compilation(compilation_id),
	compilation_id INTEGER REFERENCES songs(song_id),
	CONSTRAINT pk PRIMARY KEY (song_id, compilation_id)
	);