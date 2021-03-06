DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
	name	VARCHAR(30) NOT NULL,
	artist	VARCHAR(30) NOT NULL,
	album	VARCHAR(30) NOT NULL,
	release_year	VARCHAR(30) NOT NULL
);

ALTER TABLE songs ADD CONSTRAINT p_songs PRIMARY KEY (name);

INSERT INTO songs (name, artist, album, release_year) VALUES('Yellow', 'Coldplay', 'Parachutes', '2000');
INSERT INTO songs (name, artist, album, release_year) VALUES('Master of puppets', 'Metallica', 'Master of puppets', '1986');
INSERT INTO songs (name, artist, album, release_year) VALUES('Cocaine', 'Eric Clapton', 'Slowhand', '1977');