from db.run_sql import run_sql
from models.driver import Driver
from models.team import Team
from models.grand_prix import Grand_prix
from models.race_result import Race_Result

import repositories.team_repository as team_repository
import repositories.driver_repository as driver_repository
import repositories.grand_prix_repository as grand_prix_repository


def save(race_result):
    sql = "INSERT INTO race_results (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (%s, %s, %s, %s, %s, %s)"
    values = [race_result.driver.racing_number, race_result.grand_prix.round, race_result.position, race_result.fastest_lap, race_result.status, race_result.sprint_position]
    results = run_sql(sql, values)
    return race_result

def select(racing_number, round):
    race_result = None
    sql = "SELECT * FROM race_results WHERE racing_number = %s AND grand_prix_round = %s"
    values = [racing_number, round]
    result = run_sql(sql, values)[0]

    if result is not None:
        driver = driver_repository.select(racing_number)
        grand_prix = grand_prix_repository.select(round)
        race_result = Race_Result(driver, grand_prix, result['position'], result['fastest_lap'], result['status'], result['sprint_position'])
    return race_result

def select_all():
    race_results = []

    sql = "SELECT drivers.racing_number, drivers.name AS driver_name, drivers.nationality as driver_nationality, teams.id AS team_id, teams.constructor, teams.engine_supplier, teams.chassis, teams.engine_model, teams.nationality AS team_nationality, grand_prix.round, grand_prix.name AS grand_prix_name, grand_prix.circuit, grand_prix.date, race_results.position, race_results.fastest_lap, race_results.status, race_results.sprint_position FROM race_results INNER JOIN drivers ON race_results.racing_number = drivers.racing_number INNER JOIN grand_prix ON race_results.grand_prix_round = grand_prix.round INNER JOIN teams ON team_id = teams.id"
    results = run_sql(sql)

    for row in results:
        team = Team(row['team_id'], row['constructor'], row['engine_supplier'], row['chassis'], row['engine_model'], row['team_nationality'])
        driver = Driver(row['racing_number'],row['driver_name'], row['driver_nationality'], team)
        grand_prix = Grand_prix(row['round'], row['grand_prix_name'], row['circuit'], row['date'])
        race_result = Race_Result(driver, grand_prix, row['position'], row['fastest_lap'], row['status'], row['sprint_position'] )
        race_results.append(race_result)
    return race_results

def delete(racing_number, round):
    sql = "DELETE FROM race_results WHERE racing_number = %s AND grand_prix_round = %s"
    values = [racing_number, round]
    run_sql(sql, values)


def update(race_result):
    sql = "UPDATE race_results SET (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) = (%s, %s, %s, %s, %s, %s) WHERE racing_number = %s AND grand_prix_round = %s"
    values = [race_result.driver.racing_number, race_result.grand_prix.round, race_result.position, race_result.fastest_lap, race_result.status, race_result.sprint_position, race_result.driver.racing_number, race_result.grand_prix.round]
    run_sql(sql, values)


def select_all_championship():
    grands_prix = grand_prix_repository.select_all()
    grands_prix_names = ""
    for grand_prix in grands_prix:
        grands_prix_names += f", {grand_prix.name[0:3]} INT"

    sql = f"SELECT * FROM crosstab ('SELECT drivers.racing_number, name, teams.constructor, grand_prix_round, position FROM race_results INNER JOIN drivers on race_results.racing_number = drivers.racing_number INNER JOIN teams ON teams.id = drivers.team_id ORDER BY 2, 3', 'SELECT DISTINCT grand_prix_round FROM race_results ORDER BY 1') AS ct(racing_number INT, drivers_name VARCHAR, team_name VARCHAR{grands_prix_names})"
    results = run_sql(sql)
    return results