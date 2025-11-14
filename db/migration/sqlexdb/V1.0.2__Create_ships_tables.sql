drop table if exists ships.outcomes;
drop table if exists ships.ships;
drop table if exists ships.classes;
drop table if exists ships.battles;

CREATE TABLE ships.Battles
(
    name varchar(20) NOT NULL,
    date timestamp   NOT NULL,
    CONSTRAINT PK_Battles PRIMARY KEY (name)
);

CREATE TABLE ships.Classes
(
    class        varchar(50) NOT NULL,
    type         varchar(2)  NOT NULL,
    country      varchar(20) NOT NULL,
    numGuns      smallint    NULL,
    bore         real        NULL,
    displacement int         NULL,
    CONSTRAINT PK_Classes PRIMARY KEY (class)
);

CREATE TABLE ships.Ships
(
    name     varchar(50) NOT NULL,
    class    varchar(50) NOT NULL,
    launched smallint    NULL,
    CONSTRAINT PK_Ships PRIMARY KEY (name),
    CONSTRAINT FK_Ships_Classes FOREIGN KEY (class) REFERENCES ships.Classes (class)
);

CREATE TABLE ships.Outcomes
(
    ship   varchar(50) NOT NULL,
    battle varchar(20) NOT NULL,
    result varchar(10) NOT NULL,
    CONSTRAINT PK_Outcomes PRIMARY KEY (ship, battle),
    CONSTRAINT FK_Outcomes_Battles FOREIGN KEY (battle) REFERENCES ships.Battles (name)
);