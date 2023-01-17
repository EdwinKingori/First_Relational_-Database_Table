CREATE TABLE "Album" (
	"Id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
	"Artist_id" INTEGER,
	"Title" TEXT)

CREATE TABLE "Artist" (
	"Id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
	"Name" TEXT)

CREATE TABLE "Genre" ( "Id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, "Name" TEXT)

CREATE TABLE "Track" ( 
	"Id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
	"Album_id" INTEGER, "Genre_id" INTEGER,
	"Len" INTEGER, "Rating" INTEGER,
	"Title" TEXT, "Count" INTEGER)

CREATE TABLE sqlite_sequence(name,seq)

INSERT INTO Artist (name) VALUES ('Led Zepplin');
INSERT INTO Artist (name) VALUES ('AC/DC');

INSERT INTO Genre (name) VALUES ('Rock');
INSERT INTO Genre (name) VALUES ('Metal');

INSERT INTO Album (Title, Artist_id) VALUES ('Who Made Who?',2);
INSERT INTO Album (Title, Artist_id) VALUES ('Iv',1);

INSERT INTO TRACK (Title, Rating, Len, Count, Album_id, Genre_id)
	VALUES ('Black Dog', 5, 297, 0, 2, 1);
INSERT INTO TRACK (Title, Rating, Len, Count, Album_id, Genre_id)
	VALUES ('Stairway', 5, 482, 0, 2, 1);
INSERT INTO TRACK (Title, Rating, Len, Count, Album_id, Genre_id)
	VALUES ('About to Rock', 5, 313, 0, 1, 2);
INSERT INTO TRACK (Title, Rating, Len, Count, Album_id, Genre_id)
	VALUES ('Who Made Who', 5, 207, 0, 1, 2);

