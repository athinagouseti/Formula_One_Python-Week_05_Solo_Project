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

@grand_prix_blueprint.route("/grand_prix/new", methods=['GET'])
def new_drand_prix():
    grand_prix = grand_prix_repository.select_all()
    return render_template("grand_prix/new.html", grand_prix = grand_prix)

@grand_prix_blueprint.route("/grand_prix", methods = ['POST'])
def add_grand_prix():
    round = request.form["round"]
    name = request.form["name"]
    circuit = request.form['circuit']
    date = request.form['date']
    grand_prix = Grand_prix(round, name, circuit, date)
    grand_prix_repository.save(grand_prix)
    return redirect('/grand_prix')

