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

# def select(id):
#     team = None
#     sql = "SELECT * FROM teams WHERE id = %s"
#     values = [id]
#     result = run_sql(sql, values)[0]

#     if result is not None:
#         team = Team(result['id'], result['constructor'], result['engine_supplier'], result['chassis'], result['engine_model'], result['nationality'] )
#     return team

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

def delete(race_result):
    sql = "DELETE  FROM race_results WHERE grand_prix_round = %s"
    values = [race_result]
    run_sql(sql, values)


def update(race_result):
    sql = "UPDATE race_results SET (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) = (%s, %s, %s, %s, %s, %s) WHERE grand_prix_round = %s"
    values = [race_result.racing_number, race_result.grand_prix_round, race_result.position, race_result.fastest_lap, race_result.status, race_result.sprint_position]
    run_sql(sql, values)