CREATE TABLE ships.Classes (
    class VARCHAR(50) PRIMARY KEY,
    type VARCHAR(2) NOT NULL,
    country VARCHAR(20) NOT NULL,
    numGuns SMALLINT,
    bore REAL,
    displacement INTEGER
);

CREATE TABLE ships.Ships (
    name VARCHAR(50) PRIMARY KEY,
    class VARCHAR(50) NOT NULL REFERENCES ships.Classes(class),
    launched SMALLINT
);

CREATE TABLE ships.Battles (
    name VARCHAR(50) PRIMARY KEY,
    date DATE NOT NULL
);

CREATE TABLE ships.Outcomes (
    ship VARCHAR(50) NOT NULL,
    battle VARCHAR(50) NOT NULL REFERENCES ships.Battles(name),
    result VARCHAR(10) NOT NULL,
    PRIMARY KEY (ship, battle)
);