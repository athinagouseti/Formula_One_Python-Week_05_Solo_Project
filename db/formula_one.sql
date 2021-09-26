DROP TABLE IF EXISTS race_result;
DROP TABLE IF EXISTS grand_prix;
DROP TABLE IF EXISTS drivers;
DROP TABLE IF EXISTS teams;


CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    constructor VARCHAR,
    engine_supplier VARCHAR,
    chassis VARCHAR,
    engine_model VARCHAR,
    nationality VARCHAR
);

CREATE TABLE drivers (
    racing_number INT PRIMARY KEY,
    name VARCHAR,
    nationality VARCHAR,
    team_id INT REFERENCES teams(id)
);

CREATE TABLE grand_prix (
    round SERIAL PRIMARY KEY,
    name VARCHAR,
    circuit VARCHAR,
    date VARCHAR
);

CREATE TABLE race_result (
    racing_number INT,
    grand_prix_round INT,
    position INT,
    fastest_lap BOOLEAN,
    status VARCHAR,
    sprint_position INT,
    PRIMARY KEY(racing_number, grand_prix_round)
);

















