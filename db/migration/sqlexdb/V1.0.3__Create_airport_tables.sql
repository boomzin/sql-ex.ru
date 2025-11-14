drop table if exists airport.pass_in_trip;
drop table if exists airport.trip;
drop table if exists airport.passenger;
drop table if exists airport.company;
--

CREATE TABLE airport.Passenger
(
    ID_psg int      NOT NULL,
    name   char(20) NOT NULL,
    CONSTRAINT PK_psg PRIMARY KEY(ID_psg)
);

CREATE TABLE airport.Company
(
    ID_comp int      NOT NULL,
    name    char(10) NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY(ID_comp)
);

CREATE TABLE airport.Trip
(
    trip_no   int       NOT NULL,
    ID_comp   int       NOT NULL,
    plane     char(10)  NOT NULL,
    town_from char(25)  NOT NULL,
    town_to   char(25)  NOT NULL,
    time_out  timestamp NOT NULL,
    time_in   timestamp NOT NULL,
    CONSTRAINT PK_t PRIMARY KEY(trip_no),
    CONSTRAINT FK_Trip_Company FOREIGN KEY(ID_comp) REFERENCES airport.Company (ID_comp)
);

CREATE TABLE airport.Pass_in_trip
(
    trip_no int       NOT NULL,
    date    timestamp NOT NULL,
    ID_psg  int       NOT NULL,
    place   char(10)  NOT NULL,
    CONSTRAINT PK_pt PRIMARY KEY(trip_no,date,ID_psg),
    CONSTRAINT FK_Pass_in_trip_Passenger FOREIGN KEY(ID_psg) REFERENCES airport.Passenger (ID_psg),
    CONSTRAINT FK_Pass_in_trip_Trip FOREIGN KEY(trip_no) REFERENCES airport.Trip (trip_no)
);