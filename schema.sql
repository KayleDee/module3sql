-----------------TABLES----------------
CREATE TABLE GameStore (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(20),
	location TEXT
);

CREATE TABLE Buyer (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(20),
	age INT
);

CREATE TABLE Game (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(30),
	rating VARCHAR(30),
	ganre TEXT,
	buyerid INT REFERENCES Buyer(id),
	storeid INT REFERENCES GameStore(id)
	
);

----------------INSERTS-----------------
INSERT INTO Buyer (name, age)
VALUES ('Kirbo', 1);

INSERT INTO buyer (name, age)
VALUES ('Big John', 18);

INSERT INTO buyer (name, age)
VALUES ('Nate', 30);


INSERT INTO gamestore (name, location)
VALUES ('GameContinue', 'Rjay House');

INSERT INTO gamestore (name, location)
VALUES ('MaybeGameStart', 'Rjay Backyard');

INSERT INTO gamestore (name, location)
VALUES ('PoyoStore', 'StarLand');


INSERT INTO game (name, rating, ganre, buyerid, storeid)
VALUES ('Aniaml Crossing', 'R', 'Horror', 3, 2);

INSERT INTO game (name, rating, ganre, buyerid, storeid)
VALUES ('Doom', 'M', 'Action/FPS', 4 , 1);

INSERT INTO game (name, rating, ganre, buyerid, storeid)
VALUES ('Kirby', 'E', 'Horror', 2, 3);

----------------SELECT-----------------
