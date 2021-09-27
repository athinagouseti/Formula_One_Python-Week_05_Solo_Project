from db.run_sql import run_sql
from models.grand_prix import Grand_prix

def save(grand_prix):
    sql = "INSERT INTO grand_prix (round, name, circuit, date) VALUES (%s, %s, %s, %s)"
    values = [grand_prix.round, grand_prix.name, grand_prix.circuit, grand_prix.date]
    results = run_sql(sql, values)
    return grand_prix

def select_all():
    grands_prix = []

    sql = "SELECT * FROM grand_prix"
    results = run_sql(sql)

    for row in results:
        grand_prix = Grand_prix(row['round'], row['name'], row['circuit'], row['date'])
        grands_prix.append(grand_prix)
    return grands_prix

def select(round):
    grand_prix = None
    sql = "SELECT * FROM grand_prix WHERE round = %s"
    values = [round]
    result = run_sql(sql, values)[0]

    if result is not None:
        grand_prix = Grand_prix(result['round'], result['name'], result['circuit'], result['date'])
    return grand_prix

def delete(round):
    sql = "DELETE  FROM grand_prix WHERE round = %s"
    values = [round]
    run_sql(sql, values)


def update(grand_prix):
    sql = "UPDATE grand_prix SET (round, name, circuit, date) = (%s, %s, %s, %s) WHERE round = %s"
    values = [grand_prix.round, grand_prix.name, grand_prix.circuit, grand_prix.date]
    run_sql(sql, values)