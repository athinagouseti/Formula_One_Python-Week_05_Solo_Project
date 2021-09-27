from db.run_sql import run_sql
from models.driver import Driver
from models.team import Team
from models.grand_prix import Grand_prix
from models.race_result import Race_Result

import repositories.team_repository as team_repository
import repositories.driver_repository as driver_repository
import repositories.grand_prix_repository as grand_prix_repository

# def driver(grand_prix):
#     drivers = []
#     sql = "SELECT  racing_number.* FROM drivers INNER JOIN grand_prix ON grand_prix.racing_number = racing_number WHERE grand_prix.racing_number = %s"
#     values = [grand_prix.racing_number]
#     results = run_sql(sql, values)
    
#     for row in results:
#         team = team_repository.select(row['team_id'])
#         driver = Driver(row['racing_number'], row['name'], row['nationality', team])
#         drivers.append(driver)
#     return drivers

def save(race_result):
    sql = "INSERT INTO race_result (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) VALUES (%s, %s, %s, %s, %s, %s)"
    # "SELECT  users.* FROM users INNER JOIN visits ON visits.user_id = users.id WHERE location_id = %s"
    values = [race_result.racing_number, race_result.grand_prix_round, race_result.position, race_result.fastest_lap, race_result.status, race_result.sprint_position]
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

    sql = "SELECT * FROM race_results"
    results = run_sql(sql)

    for row in results:
        race_result = Race_Result(row['racing_number'], row['grand_prix_round'], row['position'], row['fastest_lap'], row['status'], row['sprint_position'] )
        race_results.append(race_result)
    return race_results

def delete(race_result):
    sql = "DELETE  FROM race_results WHERE grand_prix_round = %s"
    values = [race_result]
    run_sql(sql, values)


def update(race_result):
    sql = "UPDATE race_result SET (racing_number, grand_prix_round, position, fastest_lap, status, sprint_position) = (%s, %s, %s, %s, %s, %s) WHERE grand_prix_round = %s"
    values = [race_result.racing_number, race_result.grand_prix_round, race_result.position, race_result.fastest_lap, race_result.status, race_result.sprint_position]
    run_sql(sql, values)