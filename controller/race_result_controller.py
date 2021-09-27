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
    return render_template("race_results/new.html", drivers = drivers, grand_prix = grand_prix)


