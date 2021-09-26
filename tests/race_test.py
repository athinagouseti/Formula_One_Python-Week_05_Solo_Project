import unittest
from models.race import Race

class TestRace(unittest.TestCase):

    def setUp(self):
        self.race = Race("Sochi", "Lewis Hamilton", "Max Verstappen", "Carlos Sainz", "Daniel Ricciardo", "Valtteri Bottas", "Fernando Alonso", "Lando Norris", "Kimi Räikkönen", "Sergio Perez", "George Russell", "Lance Stroll", "Sebastian Vettel", "Pierre Gasly", "Esteban Ocon", "Charles Leclerc", "Antonio Giovinazzi","Yuki Tsunoda", "Nikita Mazepin", "Nicholas Latifi", "Mick Schumacher")

    def test_race_has_location(self):
        self.assertEqual("Sochi", self.race.location)

    def test_race_has_winner(self):
        self.assertEqual("Lewis Hamilton", self.race.winner)

    def test_race_has_second_place(self):
        self.assertEqual("Max Verstappen", self.race.second_place)

    def test_race_has_third_place(self):
        self.assertEqual("Carlos Sainz", self.race.third_place)

    def test_race_has_fourth_place(self):
        self.assertEqual("Daniel Ricciardo", self.race.fourth_place)
    
    def test_race_has_fifth_place(self):
        self.assertEqual("Valtteri Bottas", self.race.fifth_place)
    
    def test_race_has_sixth_place(self):
        self.assertEqual("Fernando Alonso", self.race.sixth_place)
    
    def test_race_has_seventh_place(self):
        self.assertEqual("Lando Norris", self.race.seventh_place)
    
    def test_race_has_eighth_place(self):
        self.assertEqual("Kimi Räikkönen", self.race.eighth_place)
    
    def test_race_has_nineth_place(self):
        self.assertEqual("Sergio Perez", self.race.nineth_place)
    
    def test_race_has_tenth_place(self):
        self.assertEqual("George Russell", self.race.tenth_place)

    def test_race_has_eleventh_place(self):
        self.assertEqual("Lance Stroll", self.race.eleventh_place)

    def test_race_has_twelveth_place(self):
        self.assertEqual("Sebastian Vettel", self.race.twelfth_place)

    def test_race_has_thirteenth_place(self):
        self.assertEqual("Pierre Gasly", self.race.thirteenth_place)

    def test_race_has_fourteenth_place(self):
        self.assertEqual("Esteban Ocon", self.race.fourteenth_place)

    def test_race_has_fifteenth_place(self):
        self.assertEqual("Charles Leclerc", self.race.fifteenth_place)

    def test_race_has_sixteenth_place(self):
        self.assertEqual("Antonio Giovinazzi", self.race.sixteenth_place)

    def test_race_has_seventeenth_place(self):
        self.assertEqual("Yuki Tsunoda", self.race.seventeenth_place)

    def test_race_has_eighteenth_place(self):
        self.assertEqual("Nikita Mazepin", self.race.eighteenth_place)

    def test_race_has_nineteenth_place(self):
        self.assertEqual("Nicholas Latifi", self.race.nineteenth_place)

    def test_race_has_twentieth_place(self):
        self.assertEqual("Mick Schumacher", self.race.twentieth_place)