CREATE TABLE recycling_firm.Income_o (
    point SMALLINT NOT NULL,
    date DATE NOT NULL,
    inc DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (point, date)
);

CREATE TABLE recycling_firm.Outcome_o (
    point SMALLINT NOT NULL,
    date DATE NOT NULL,
    out DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (point, date)
);

CREATE TABLE recycling_firm.Income (
    code SERIAL PRIMARY KEY,
    point SMALLINT NOT NULL,
    date DATE NOT NULL,
    inc DECIMAL(8,2) NOT NULL
);

CREATE TABLE recycling_firm.Outcome (
    code SERIAL PRIMARY KEY,
    point SMALLINT NOT NULL,
    date DATE NOT NULL,
    out DECIMAL(8,2) NOT NULL
);