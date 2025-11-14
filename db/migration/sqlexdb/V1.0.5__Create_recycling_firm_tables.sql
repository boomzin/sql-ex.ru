drop table if exists recycling_firm.Income;
drop table if exists recycling_firm.Outcome;
drop table if exists recycling_firm.Outcome_o;
drop table if exists recycling_firm.Income_o;

CREATE TABLE recycling_firm.Income
(
    code  int            NOT NULL,
    point smallint       NOT NULL,
    date  timestamp      NOT NULL,
    inc   decimal(12, 2) NOT NULL,
    CONSTRAINT PK_Income PRIMARY KEY (code)
);

CREATE TABLE recycling_firm.Outcome
(
    code  int            NOT NULL,
    point smallint       NOT NULL,
    date  timestamp      NOT NULL,
    out   decimal(12, 2) NOT NULL,
    CONSTRAINT PK_Outcome PRIMARY KEY (code)
);

CREATE TABLE recycling_firm.Income_o
(
    point smallint       NOT NULL,
    date  timestamp      NOT NULL,
    inc   decimal(12, 2) NOT NULL,
    CONSTRAINT PK_Income_o PRIMARY KEY (point, date)
);

CREATE TABLE recycling_firm.Outcome_o
(
    point smallint       NOT NULL,
    date  timestamp      NOT NULL,
    out   decimal(12, 2) NOT NULL,
    CONSTRAINT PK_Outcome_o PRIMARY KEY (point, date)
);