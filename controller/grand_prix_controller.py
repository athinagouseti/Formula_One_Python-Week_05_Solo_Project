from models.grand_prix import Grand_prix
from flask import Flask, render_template, request, redirect
from flask import Blueprint
from models.grand_prix import Grand_prix
import repositories.grand_prix_repository as grand_prix_repository

grand_prix_blueprint = Blueprint("grand_prix", __name__)

@grand_prix_blueprint.route("/grand_prix")
def grand_prix():
    grand_prix = grand_prix_repository.select_all()
    return render_template("grand_prix/index.html", grand_prix = grand_prix)

