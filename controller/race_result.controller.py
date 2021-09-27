from flask import FLask, render_template, request, redirect
from flask import Blueprint
from models.race_result import Race_Result
import repositories.race_result_repository as race_result_repository
import repositories.driver_repository as driver_repository
import repositories.team_repository as team_repository

race_result_blueprint = Blueprint("drivers", __name__)

@race_result_blueprint.route("/drivers")
def race_result():
    
    return render_template("drivers/index.html", drivers = drivers)