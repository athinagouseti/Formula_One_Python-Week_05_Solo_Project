DROP TABLE IF EXISTS race_result;
DROP TABLE IF EXISTS grand_prix;
DROP TABLE IF EXISTS drivers;
DROP TABLE IF EXISTS teams;


CREATE TABLE teams (
    id INT PRIMARY KEY,
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
    round INT PRIMARY KEY,
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

INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (1, 'Alfa Romeo', 'Ferrari', 'C41', '065/6', 'Switzerland');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (2, 'AlphaTauri', 'Honda', 'AT02', 'RA621H', 'Italy');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (3, 'Alpine', 'Renault', 'A521', 'E-Tech 20B', 'France');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (4, 'Aston Martin', 'Mercedes', 'AMR21', 'M12', 'United Kingdom');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (5, 'Ferrari', 'Ferrari', 'SF21', '065/6', 'Italy');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (6, 'Haas', 'Ferrari', 'VF-21', '065/6', 'United States');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (7, 'McLaren', 'Mercedes', 'MCL35M', 'M12', 'United Kingdom');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (8, 'Mercedes', 'Mercedes', 'F1 W12', 'M12', 'Germany');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (9, 'Red Bull', 'Honda', 'RB16B', 'RA61H', 'Austria');
INSERT INTO teams(id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (10, 'Williams', 'Mercedes', 'FW43B', 'M12', 'United Kingdom'); 

INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (7, 'Kimi Räikkönen', 'Finland', 1);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (88, 'Robert Kubica', 'Poland', 1);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (99, 'Antonio Giovinazzi', 'Italy', 1);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (10, 'Pierre Gasly', 'France', 2);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (22, 'Yuki Tsunoda', 'Japan', 2);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (14, 'Fernando Alonso', 'Spain', 3);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (31, 'Esteban Ocon', 'France', 3);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (5, 'Sebastian Vettel', 'Germany', 4);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (18, 'Lance Stroll', 'Canada', 4);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (16, 'Charles Leclerc', 'France', 5);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (55, 'Carlos Sainz', 'Spain', 5);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (9, 'Nikita Mazepin', 'Russia', 6);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (47, 'Mick Schumacher', 'Germany', 6);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (3, 'Daniel Ricciardo', 'Australia', 7);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (4, 'Lando Norris', 'United Kingdom', 7);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (44, 'Lewis Hamilton', 'United Kingdom', 8);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (77, 'Valtteri Bottas', 'Finland', 8);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (11, 'Sergio Perez', 'Mexico', 9);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (33, 'Max Verstappen', 'Netherlands', 9);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (6, 'Nicholas Latifi', 'Canada', 10);
INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (63, 'George Russell', 'United Kingdom', 10);


INSERT INTO grand_prix (round, name, circuit, date) VALUES (1, 'Bahrain Grand Prix', 'Bahrain International Circuit', '28 March 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (2, 'Emilia Romagna Grand Prix', 'Imola Circuit', '18 April 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (3, 'Portuguese Grand Prix', 'Algarve International Circuit', '2 May 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (4, 'Spanish Grand Prix', 'Circuit De Barcelona-Catalunya', '9 May 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (5, 'Monaco Grand Prix', 'Circuit de Monaco', '23 May 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (6, 'Azerbaijan Grand Prix', 'Baku City Circuit', '6 June 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (7, 'French Grand Prix', 'Circuit Paul Ricard', '20 June 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (8, 'Styrian Grand Prix', 'Red Bull Ring', '27 June 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (9, 'Austrian Grand Prix', 'Red Bull Ring', '4 July 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (10, 'Biritsh Grand Prix', 'Silverstone Circuit', '18 July 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (11, 'Hungarian Grand Prix', 'Hungaroring', '1 August 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (12, 'Belgian Grand Prix', 'Circuit de Spa-Francochamps', '29 August 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (13, 'Dutch Grand Prix', 'Circuit Zandvoort', '5 September 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (14, 'Italian Grand Prix', 'Monza Circuit', '12 September 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (15, 'Russian Grand Prix', 'Sochi Autodrom', '26 September 2021');


-- Bahrain GP
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 1, 1, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 1, 2, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 1, 3, TRUE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 1, 4, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 1, 5, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 1, 8, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 1, 6, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 1, 7, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 1, 17, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 1, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 1, 13, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 1, 15, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 1, 10, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 1, 9, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 1, 14, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 1, 18, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 1, 11, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 1, 12, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 1, 16, FALSE, NULL, NULL);
INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 1, NULL, FALSE, 'Ret', NULL);