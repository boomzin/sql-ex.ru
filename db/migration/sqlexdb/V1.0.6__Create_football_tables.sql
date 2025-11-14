drop table if exists football.Lineups;
drop table if exists football.Games;
drop table if exists football.Players;

create table football.Players
(
    player_id   int primary key,      -- номер на футболке
    first_name  varchar(50) not null,
    last_name   varchar(50) not null,
    nickname    varchar(50) not null, -- имя на футболке
    citizenship varchar(50),          -- гражданство, если NULL, то гражданин той страны, где проводится чемпионат
    dob         date        not null, -- дата рождения
    role        varchar(20) not null  -- амплуа, например, защитник
);

-- Игры
create table football.Games
(
    game_id   int primary key,
    team      varchar(30) not null, -- команда-соперник
    city      varchar(30),          -- город, где проводится матч; NULL, если дома
    goals     smallint,             -- голы, которые забил соперник; NULL, если не было забито
    game_date timestamp   not null, -- дата/время матча
    own       smallint              -- aвтоголы, null, если таких не было
);

-- Участие в игре
create table football.Lineups
(
    start     char not NULL, -- 'B' - игрок вышел в стартовом составе, 'S' - в запасе
    game_id   int references football.games,
    player_id int references football.Players,
    time_in   int,           -- число минут, проведенных игроком на поле; NULL, если не выходил.
    goals     smallint,      -- число голов, которые игрок забил в матче; NULL, если не забивал
    cards     char(2),       -- Y - желтая, Y2 - две желтых, R - красная, YR - желтая+красная; NULL, если карточек нет
    primary key (game_id, player_id)
);