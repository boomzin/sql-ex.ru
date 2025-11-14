INSERT INTO ships.Classes (class, type, country, numGuns, bore, displacement)
VALUES ('Bismarck', 'bb', 'Germany', 8, 15.0, 42000),
       ('Iowa', 'bb', 'USA', 9, 16.0, 46000),
       ('Kongo', 'bc', 'Japan', 8, 14.0, 32000),
       ('North Carolina', 'bb', 'USA', 12, 16.0, 37000),
       ('Renown', 'bc', 'Gt.Britain', 6, 15.0, 32000),
       ('Revenge', 'bb', 'Gt.Britain', 8, 15.0, 29000),
       ('Tennessee', 'bb', 'USA', 12, 14.0, 32000),
       ('Yamato', 'bb', 'Japan', 9, 18.0, 65000);

INSERT INTO ships.Ships (name, class, launched)
VALUES ('California', 'Tennessee', 1921),
       ('Haruna', 'Kongo', 1916),
       ('Hiei', 'Kongo', 1914),
       ('Iowa', 'Iowa', 1943),
       ('Kirishima', 'Kongo', 1915),
       ('Kongo', 'Kongo', 1913),
       ('Missouri', 'Iowa', 1944),
       ('Musashi', 'Yamato', 1942),
       ('New Jersey', 'Iowa', 1943),
       ('North Carolina', 'North Carolina', 1941),
       ('Ramillies', 'Revenge', 1917),
       ('Renown', 'Renown', 1916),
       ('Repulse', 'Renown', 1916),
       ('Resolution', 'Renown', 1916),
       ('Revenge', 'Revenge', 1916),
       ('Royal Oak', 'Revenge', 1916),
       ('Royal Sovereign', 'Revenge', 1916),
       ('South Dakota', 'North Carolina', 1941),
       ('Tennessee', 'Tennessee', 1920),
       ('Washington', 'North Carolina', 1941),
       ('Wisconsin', 'Iowa', 1944),
       ('Yamato', 'Yamato', 1941);

INSERT INTO ships.Battles (name, date)
VALUES ('#Cuba62a', '1962-10-20'),
       ('#Cuba62b', '1962-10-25'),
       ('Guadalcanal', '1942-11-15'),
       ('North Atlantic', '1941-05-25'),
       ('North Cape', '1943-12-26'),
       ('Surigao Strait', '1944-10-25');

INSERT INTO ships.Outcomes (ship, battle, result)
VALUES ('Bismarck', 'North Atlantic', 'sunk'),
       ('California', 'Guadalcanal', 'damaged'),
       ('California', 'Surigao Strait', 'ok'),
       ('Duke of York', 'North Cape', 'ok'),
       ('Fuso', 'Surigao Strait', 'sunk'),
       ('Hood', 'North Atlantic', 'sunk'),
       ('King George V', 'North Atlantic', 'ok'),
       ('Kirishima', 'Guadalcanal', 'sunk'),
       ('Prince of Wales', 'North Atlantic', 'damaged'),
       ('Rodney', 'North Atlantic', 'OK'),
       ('Schamhorst', 'North Cape', 'sunk'),
       ('South Dakota', 'Guadalcanal', 'damaged'),
       ('Tennessee', 'Surigao Strait', 'ok'),
       ('Washington', 'Guadalcanal', 'ok'),
       ('West Virginia', 'Surigao Strait', 'ok'),
       ('Yamashiro', 'Surigao Strait', 'sunk');