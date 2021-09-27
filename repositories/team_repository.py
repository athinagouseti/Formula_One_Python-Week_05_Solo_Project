from db.run_sql import run_sql
from models.driver import Driver
from models.team import Team

def save(team):
    sql = "INSERT INTO teams (id, constructor, engine_supplier, chassis, engine_model, nationality) VALUES (%s, %s, %s, %s. %s, %s)"
    values = [team.id, team.constructor, team.engine_supplier, team.chassis, team.engine_model, team.nationality]
    results = run_sql(sql, values)
    return team 

def select(id):
    team = None
    sql = "SELECT * FROM teams WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        team = Team(result['id'], result['constructor'], result['engine_supplier'], result['chassis'], result['engine_model'], result['nationality'] )
    return team

def select_all():
    teams = []

    sql = "SELECT * FROM teams"
    results = run_sql(sql)

    for row in results:
        team = Team(row['id'], row['constructor'], row['engine_supplier'], row['chassis'], row['engine_model'], row['nationality'] )
        teams.append(teams)
    return teams

def delete(team):
    sql = "DELETE  FROM teams WHERE id = %s"
    values = [team]
    run_sql(sql, values)


def update(team):
    sql = "UPDATE teams SET (id, constructor, engine_supplier, chassis, engine_model, nationality) = (%s, %s, %s, %s, %s, %s) WHERE id = %s"
    values = [team.id, team.constructor, team.engine_supplier, team.chassis, team.engine_model, team.nationality]
    run_sql(sql, values)