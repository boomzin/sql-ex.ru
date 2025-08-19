CREATE TABLE football.Club (
    club_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    foundation_year INTEGER NOT NULL,
    coach VARCHAR(100) NOT NULL,
    stadium VARCHAR(100) NOT NULL,
    league VARCHAR(50) NOT NULL
);

CREATE TABLE football.Player (
    player_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(2) NOT NULL CHECK (position IN ('GK', 'DF', 'MF', 'FW')),
    birth_date DATE NOT NULL,
    club_id INTEGER NOT NULL REFERENCES football.Club(club_id),
    salary DECIMAL(10,2) NOT NULL,
    cost DECIMAL(12,2) NOT NULL
);

CREATE TABLE football.Match (
    match_id SERIAL PRIMARY KEY,
    home_club_id INTEGER NOT NULL REFERENCES football.Club(club_id),
    away_club_id INTEGER NOT NULL REFERENCES football.Club(club_id),
    match_date DATE NOT NULL,
    stadium VARCHAR(100) NOT NULL,
    result CHAR(1) NOT NULL CHECK (result IN ('W', 'D', 'L')), -- W=победа дома, D=ничья, L=поражение дома
    spectators INTEGER NOT NULL
);

CREATE TABLE football.Goal (
    goal_id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL REFERENCES football.Match(match_id),
    player_id INTEGER NOT NULL REFERENCES football.Player(player_id),
    minute INTEGER NOT NULL CHECK (minute BETWEEN 1 AND 120),
    type VARCHAR(20) CHECK (type IN ('regular', 'penalty', 'free-kick', 'header'))
);

CREATE TABLE football.Transfer (
    transfer_id SERIAL PRIMARY KEY,
    player_id INTEGER NOT NULL REFERENCES football.Player(player_id),
    from_club_id INTEGER NOT NULL REFERENCES football.Club(club_id),
    to_club_id INTEGER NOT NULL REFERENCES football.Club(club_id),
    transfer_date DATE NOT NULL,
    fee DECIMAL(12,2) NOT NULL
);