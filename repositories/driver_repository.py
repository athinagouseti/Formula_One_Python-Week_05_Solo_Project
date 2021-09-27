from db.run_sql import run_sql
from models.driver import Driver
from models.team import Team
import pdb

import repositories.team_repository as team_repository

def save(driver):
    sql = "INSERT INTO drivers (racing_number, name, nationality, team_id) VALUES (%s, %s, %s, %s)"
    values = [driver.racing_number, driver.name, driver.nationality, driver.team.id]
    results = run_sql(sql, values)
    return driver

def select_all():
    drivers = []

    sql = "SELECT * FROM drivers"
    results = run_sql(sql)

    for row in results:
        team = team_repository.select(row['team_id'])
        driver = Driver(row['racing_number'], row['name'], row['nationality'], team)
        drivers.append(driver)
    return drivers

def delete(racing_number):
    sql = "DELETE  FROM drivers WHERE racing_number = %s"
    values = [racing_number]
    run_sql(sql, values)


def update(driver):
    sql = "UPDATE drivers SET (racing_number, name, nationality, team_id) = (%s, %s, %s, %s, %s, %s) WHERE racing_number = %s"
    values = [driver.racing_number, driver.name, driver.nationality, driver.team.id]
    run_sql(sql, values)