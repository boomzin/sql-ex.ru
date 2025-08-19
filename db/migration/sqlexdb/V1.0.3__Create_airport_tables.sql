CREATE TABLE airport.Company (
    ID_comp SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE airport.Trip (
    trip_no SERIAL PRIMARY KEY,
    id_comp INTEGER NOT NULL REFERENCES airport.Company(ID_comp),
    plane VARCHAR(50) NOT NULL,
    town_from VARCHAR(50) NOT NULL,
    town_to VARCHAR(50) NOT NULL,
    time_out TIME NOT NULL,
    time_in TIME NOT NULL
);

CREATE TABLE airport.Passenger (
    ID_psg SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

CREATE TABLE airport.Pass_in_trip (
    trip_no INTEGER NOT NULL REFERENCES airport.Trip(trip_no),
    date TIMESTAMP NOT NULL,
    ID_psg INTEGER NOT NULL REFERENCES airport.Passenger(ID_psg),
    place VARCHAR(10) NOT NULL,
    PRIMARY KEY (trip_no, date, ID_psg)
);