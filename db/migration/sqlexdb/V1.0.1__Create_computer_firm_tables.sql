CREATE TABLE computer_firm.Product (
    maker VARCHAR(50) NOT NULL,
    model VARCHAR(50) PRIMARY KEY,
    type VARCHAR(50) NOT NULL
);

CREATE TABLE computer_firm.PC (
    code SERIAL PRIMARY KEY,
    model VARCHAR(50) NOT NULL REFERENCES computer_firm.Product(model),
    speed INTEGER NOT NULL,
    ram INTEGER NOT NULL,
    hd INTEGER NOT NULL,
    cd VARCHAR(10) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE computer_firm.Laptop (
    code SERIAL PRIMARY KEY,
    model VARCHAR(50) NOT NULL REFERENCES computer_firm.Product(model),
    speed INTEGER NOT NULL,
    ram INTEGER NOT NULL,
    hd INTEGER NOT NULL,
    screen INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE computer_firm.Printer (
    code SERIAL PRIMARY KEY,
    model VARCHAR(50) NOT NULL REFERENCES computer_firm.Product(model),
    color CHAR(1) NOT NULL CHECK (color IN ('y', 'n')),
    type VARCHAR(10) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);