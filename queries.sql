-- Table CRUD

CREATE TABLE "users" (
    "id"    INTEGER,
    "name"  TEXT NOT NULL,
    "location"  TEXT,
    PRIMARY KEY("id")
);

ALTER TABLE users
ADD
favourite_music TEXT;

ALTER TABLE users RENAME
favourite_music
TO
fav_music;

ALTER TABLE users DROP fav_music;
DROP TABLE users;

-- Recreate DB cause we nuked it:
CREATE TABLE users (
    id    INTEGER,
    name  TEXT NOT NULL,
    location  TEXT,
    facourite_music TEXT,
    PRIMARY KEY(id)
);

-- Item CRUD
INSERT INTO "users"
(name, location, favourite_music)
VALUES  
("Elidon","Kosovo","Polish folk");

INSERT INTO users
(name, location, favourite_music)
VALUES
("Egon","Albania","Animecore");E

INSERT INTO users
(name, location, favourite_music)
VALUES
("Arita","Albania","Despacito on repeat");


SELECT * FROM users WHERE id=1;

UPDATE users SET location="Zimbabwe"
WHERE id=2;

DELETE FROM users WHERE id=1;
