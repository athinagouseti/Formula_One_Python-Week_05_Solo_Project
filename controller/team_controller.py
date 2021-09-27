from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.team import Team
import repositories.team_repository as team_repository

team_blueprint = Blueprint("teams", __name__)

@team_blueprint.route("/teams")
def teams():
    teams = team_repository.select_all()
    return render_template("teams/index.html", teams = teams)