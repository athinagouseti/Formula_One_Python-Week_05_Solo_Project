from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.driver import Driver
import repositories.driver_repository as driver_repository
import repositories.team_repository as team_repository

drivers_blueprint = Blueprint("drivers", __name__)

@drivers_blueprint.route("/drivers")
def driver():
    drivers = driver_repository.select_all()
    return render_template("drivers/index.html", drivers = drivers)

@drivers_blueprint.route("/drivers/new", methods=['GET'])
def new_driver():
    teams = team_repository.select_all()
    drivers = driver_repository.select_all()
    return render_template("drivers/new.html", drivers = drivers, teams = teams)

@drivers_blueprint.route("/drivers", methods = ['POST'])
def add_driver():
    racing_number = request.form["racing_number"]
    name = request.form["name"]
    nationality = request.form["nationality"]
    team_id = request.form["team_id"]
    team = team_repository.select(team_id)
    driver = Driver(racing_number, name, nationality, team)
    driver_repository.save(driver)
    return redirect('/drivers/new')