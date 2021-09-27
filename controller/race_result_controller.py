from models.driver import Driver
from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.race_result import Race_Result
import repositories.race_result_repository as race_result_repository
import repositories.driver_repository as driver_repository
import repositories.grand_prix_repository as grand_prix_repository


race_result_blueprint = Blueprint("race_results", __name__)

@race_result_blueprint.route("/race_results")
def race_results():
    race_results = race_result_repository.select_all()
    return render_template("race_results/index.html", race_results = race_results)

@race_result_blueprint.route("/race_results/new", methods = ['GET'])
def new_race_result():
    drivers = driver_repository.select_all()
    grand_prix = grand_prix_repository.select_all()
    return render_template("race_results/new.html", drivers = drivers, grands_prix = grand_prix)

@race_result_blueprint.route("/race_results", methods = ['POST'])
def add_race_result():
    racing_number = request.form['driver']
    driver = driver_repository.select(racing_number)
    print(driver)
    grand_prix_round = request.form['grand_prix']
    grand_prix = grand_prix_repository.select(grand_prix_round)
    print(grand_prix)
    position = request.form['position']
    fastest_lap = request.form['fastest_lap']
    status = request.form['status'] if request.form['status'] != "" else None
    sprint_position = request.form['sprint_position'] if request.form['sprint_position'] != "" else None
    race_result = Race_Result(driver, grand_prix, position, fastest_lap, status, sprint_position)
    race_result_repository.save(race_result)
    return redirect('/race_results')

@race_result_blueprint.route("/race_results/<racing_number>/<round>/delete", methods = ["POST"])
def delete_race_result(racing_number, round):
    race_result_repository.delete(racing_number, round)
    return redirect('/race_results')
    



