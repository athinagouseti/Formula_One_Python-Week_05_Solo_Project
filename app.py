from flask import Flask, render_template
from controller.driver_controller import drivers_blueprint
from controller.race_result_controller import race_result_blueprint
from controller.team_controller import team_blueprint
from controller.grand_prix_controller import grand_prix_blueprint
from controller.championship_controller import championship_blueprint

app = Flask(__name__)

app.register_blueprint(drivers_blueprint)
app.register_blueprint(race_result_blueprint)
app.register_blueprint(team_blueprint)
app.register_blueprint(grand_prix_blueprint)
app.register_blueprint(championship_blueprint)

@app.route('/')
def home():
    return render_template('index.html')


if __name__ == '__main__':
    app.run(debug=True)
