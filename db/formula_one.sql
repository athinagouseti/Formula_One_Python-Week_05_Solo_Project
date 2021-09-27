DROP TABLE IF EXISTS race_results;
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

CREATE TABLE race_results (
    racing_number INT REFERENCES drivers(racing_number),
    grand_prix_round INT REFERENCES grand_prix(round),
    position INT,
    fastest_lap BOOLEAN,
    status VARCHAR,
    sprint_position INT
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
INSERT INTO grand_prix (round, name, circuit, date) VALUES (10, 'British Grand Prix', 'Silverstone Circuit', '18 July 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (11, 'Hungarian Grand Prix', 'Hungaroring', '1 August 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (12, 'Belgian Grand Prix', 'Circuit de Spa-Francochamps', '29 August 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (13, 'Dutch Grand Prix', 'Circuit Zandvoort', '5 September 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (14, 'Italian Grand Prix', 'Monza Circuit', '12 September 2021');
INSERT INTO grand_prix (round, name, circuit, date) VALUES (15, 'Russian Grand Prix', 'Sochi Autodrom', '26 September 2021');


-- Bahrain GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 1, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 1, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 1, 3, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 1, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 1, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 1, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 1, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 1, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 1, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 1, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 1, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 1, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 1, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 1, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 1, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 1, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 1, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 1, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 1, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 1, NULL, FALSE, 'Ret', NULL);

-- Emilia Romagna GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 2, 2, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 2, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 2, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 2, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 2, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 2, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 2, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 2, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 2, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 2, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 2, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 2, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 2, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 2, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 2, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 2, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 2, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 2, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 2, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 2, 17, FALSE, NULL, NULL);

-- Portuguese GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 3, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 3, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 3, 3, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 3, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 3, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 3, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 3, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 3, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 3, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 3, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 3, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 3, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 3, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 3, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 3, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 3, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 3, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 3, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 3, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 3, 19, FALSE, NULL, NULL);

-- Spain GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 4, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 4, 2, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 4, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 4, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 4, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 4, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 4, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 4, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 4, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 4, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 4, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 4, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 4, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 4, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 4, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 4, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 4, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 4, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 4, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 4, 19, FALSE, NULL, NULL);

-- Monza GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 5, 7, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 5, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 5, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 5, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 5, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 5, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 5, NULL, FALSE, 'DNS', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 5, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 5, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 5, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 5, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 5, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 5, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 5, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 5, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 5, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 5, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 5, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 5, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 5, 17, FALSE, NULL, NULL);

-- Azerbaijan GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 6, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 6, 18, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 6, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 6, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 6, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 6, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 6, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 6, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 6, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 6, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 6, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 6, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 6, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 6, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 6, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 6, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 6, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 6, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 6, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 6, 14, FALSE, NULL, NULL);

-- France GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 7, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 7, 1, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 7, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 7, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 7, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 7, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 7, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 7, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 7, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 7, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 7, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 7, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 7, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 7, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 7, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 7, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 7, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 7, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 7, 19, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 7, 20, FALSE, NULL, NULL);

-- Styria GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 8, 2, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 8, 1, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 8, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 8, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 8, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 8, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 8, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 8, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 8, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 8, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 8, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 8, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 8, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 8, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 8, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 8, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 8, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 8, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 8, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 8, 18, FALSE, NULL, NULL);

-- Austria GP 
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 9, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 9, 1, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 9, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 9, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 9, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 9, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 9, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 9, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 9, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 9, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 9, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 9, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 9, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 9, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 9, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 9, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 9, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 9, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 9, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 9, 19, FALSE, NULL, NULL);

-- GBR GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 10, 1, FALSE, NULL, 2);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 10, NULL, FALSE, 'Ret', 1);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 10, 3, FALSE, NULL, 3);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 10, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 10, 16, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 10, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 10, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 10, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 10, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 10, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 10, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 10, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 10, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 10, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 10, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 10, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 10, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 10, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 10, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 10, 17, FALSE, NULL, NULL);

-- Hungary GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 11, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 11, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 11, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 11, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 11, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 11, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 11, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 11, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 11, 5, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 11, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 11, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 11, NULL, FALSE, 'DSQ', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 11, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 11, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 11, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 11, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 11, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 11, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 11, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 11, NULL, FALSE, 'Ret', NULL);

-- Belgium GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 12, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 12, 1, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 12, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 12, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 12, 19, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 12, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 12, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 12, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 12, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 12, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 12, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 12, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 12, 20, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 12, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 12, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 12, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 12, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 12, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 12, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 12, 17, FALSE, NULL, NULL);

-- Netherlands GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 13, 2, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 13, 1, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 13, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 13, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 13, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 13, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 13, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 13, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 13, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 13, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 13, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 13, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 13, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 13, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 13, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 13, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 13, NULL, FALSE, 'WD', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 13, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 13, 18, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (88, 13, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 13, NULL, FALSE, 'Ret', NULL);

-- Italy GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 14, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 14, NULL, FALSE, 'Ret', 2);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 14, 3, FALSE, NULL, 1);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 14, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 14, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 14, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 14, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 14, 1, TRUE, NULL, 1);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 14, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 14, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 14, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 14, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 14, 7, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 14, NULL, FALSE, 'DNS', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 14, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 14, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 14, NULL, FALSE, 'WD', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 14, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 14, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (88, 14, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 14, NULL, FALSE, 'Ret', NULL);

-- Russia GP
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (44, 15, 1, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (33, 15, 2, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (77, 15, 5, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (4, 15, 7, TRUE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (11, 15, 9, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (55, 15, 3, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (16, 15, 15, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (3, 15, 4, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (10, 15, 13, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (14, 15, 6, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (31, 15, 14, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (5, 15, 12, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (18, 15, 11, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (22, 15, 17, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (63, 15, 10, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (6, 15, 19, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (7, 15, 8, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (99, 15, 16, FALSE, NULL, NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (47, 15, NULL, FALSE, 'Ret', NULL);
INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (9, 15, 18, FALSE, NULL, NULL);
