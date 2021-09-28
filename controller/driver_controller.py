from flask import Flask, render_template, request, redirect
import pdb
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
    return redirect('/drivers')

@drivers_blueprint.route("/drivers/<racing_number>/edit", methods = ['GET'])
def edit_driver(racing_number):
    teams = team_repository.select_all()
    driver= driver_repository.select(racing_number)
    return render_template("drivers/edit.html", driver = driver, teams = teams)

@drivers_blueprint.route("/drivers/<racing_number>", methods = ['POST'])
def update_driver(racing_number):
    racing_number = request.form["racing_number"]
    name = request.form["driver_name"]
    nationality = request.form["driver_nationality"]
    team_id = request.form["team"]
    team = team_repository.select(int(team_id))
    driver = Driver(racing_number, name, nationality, team)
    driver_repository.update(driver)
    return redirect("/drivers")

@drivers_blueprint.route("/drivers/<racing_number>/delete", methods = ["POST"])
def delete_driver(racing_number):
    driver_repository.delete(int(racing_number))
    return redirect('/drivers')
