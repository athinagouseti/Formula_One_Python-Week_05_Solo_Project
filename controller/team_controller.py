from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.team import Team
import repositories.team_repository as team_repository

team_blueprint = Blueprint("teams", __name__)

@team_blueprint.route("/teams")
def teams():
    teams = team_repository.select_all()
    return render_template("teams/index.html", teams = teams)

@team_blueprint.route("/teams/new", methods=['GET'])
def new_team():
    teams = team_repository.select_all()
    return render_template("teams/new.html", teams = teams)

@team_blueprint.route("/teams", methods = ['POST'])
def add_team():
    id = request.form["id"]
    constructor = request.form["constructor"]
    engine_supplier = request.form['engine_supplier']
    chassis = request.form['chassis']
    engine_model = request.form['engine_model']
    nationality = request.form['nationality']
    team = Team(id, constructor, engine_supplier, chassis, engine_model, nationality)
    team_repository.save(team)
    return redirect("/teams")
