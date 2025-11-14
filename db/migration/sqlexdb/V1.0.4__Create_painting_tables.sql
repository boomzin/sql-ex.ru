drop table if exists painting.utb;
drop table if exists painting.utq;
drop table if exists painting.utv;
--

CREATE TABLE painting.utQ
(
    Q_ID   int         NOT NULL,
    Q_NAME varchar(35) NOT NULL,
    CONSTRAINT PK_utQ PRIMARY KEY (Q_ID)
);

CREATE TABLE painting.utV
(
    V_ID    int         NOT NULL,
    V_NAME  varchar(35) NOT NULL,
    V_COLOR char(1)     NOT NULL,
    CONSTRAINT PK_utV PRIMARY KEY (V_ID)
);

CREATE TABLE painting.utB
(
    B_DATETIME timestamp NOT NULL,
    B_Q_ID     int       NOT NULL,
    B_V_ID     int       NOT NULL,
    B_VOL      smallint  NOT NULL,
    CONSTRAINT PK_utB PRIMARY KEY (B_DATETIME, B_Q_ID, B_V_ID),
    CONSTRAINT FK_utB_utQ FOREIGN KEY (B_Q_ID) REFERENCES painting.utQ (Q_ID),
    CONSTRAINT FK_utB_utV FOREIGN KEY (B_V_ID) REFERENCES painting.utV (V_ID)
);