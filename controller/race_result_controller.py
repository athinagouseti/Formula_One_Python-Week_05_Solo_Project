from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.race_result import Race_Result
import repositories.race_result_repository as race_result_repository
import repositories.driver_repository as driver_repository
import repositories.team_repository as team_repository

race_result_blueprint = Blueprint("race_result", __name__)

@race_result_blueprint.route("/race_result")
def race_results():
    race_results = race_result_repository.select_all()
    return render_template("race_result/index.html", race_results = race_results)


