DROP TABLE if exists computer_firm.Laptop;
DROP TABLE if exists computer_firm.PC;
DROP TABLE if exists computer_firm.Printer;
DROP TABLE if exists computer_firm.Product;


CREATE TABLE computer_firm.Product
(
    maker varchar(10) NOT NULL,
    model varchar(50) NOT NULL,
    type  varchar(50) NOT NULL,
    CONSTRAINT PK_product PRIMARY KEY(model)
);

CREATE TABLE computer_firm.Laptop
(
    code   int            NOT NULL,
    model  varchar(50)    NOT NULL,
    speed  smallint       NOT NULL,
    ram    smallint       NOT NULL,
    hd     real           NOT NULL,
    price  decimal(12, 2) NULL,
    screen smallint       NOT NULL,
    CONSTRAINT PK_Laptop PRIMARY KEY (code),
    CONSTRAINT FK_Laptop_product FOREIGN KEY(model) REFERENCES computer_firm.Product (model)
);

CREATE TABLE computer_firm.PC
(
    code  int            NOT NULL,
    model varchar(50)    NOT NULL,
    speed smallint       NOT NULL,
    ram   smallint       NOT NULL,
    hd    real           NOT NULL,
    cd    varchar(10)    NOT NULL,
    price decimal(12, 2) NULL,
    CONSTRAINT PK_pc PRIMARY KEY(code),
    CONSTRAINT FK_pc_product FOREIGN KEY(model) REFERENCES computer_firm.Product (model)
);

CREATE TABLE computer_firm.Printer
(
    code  int            NOT NULL,
    model varchar(50)    NOT NULL,
    color char(1)        NOT NULL,
    type  varchar(10)    NOT NULL,
    price decimal(12, 2) NULL,
    CONSTRAINT PK_printer PRIMARY KEY(code),
    CONSTRAINT FK_printer_product FOREIGN KEY(model) REFERENCES computer_firm.Product (model)
);