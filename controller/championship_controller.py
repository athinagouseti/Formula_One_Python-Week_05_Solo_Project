from flask import Flask, render_template, request, redirect
import pdb
from flask import Blueprint
import repositories.race_result_repository as race_result_repository
import repositories.grand_prix_repository as grand_prix_repository

championship_blueprint = Blueprint("championship", __name__)

@championship_blueprint.route("/championship")
def championship_table():
    grands_prix = grand_prix_repository.select_all()
    standings = race_result_repository.select_all_championship()
    return render_template("/championship/index.html", standings = standings, grands_prix = grands_prix)
