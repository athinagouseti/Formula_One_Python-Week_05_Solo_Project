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