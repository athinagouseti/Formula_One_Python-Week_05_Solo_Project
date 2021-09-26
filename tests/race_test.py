import unittest
from models.race import Race

class TestRace(unittest.TestCase):

    def setUp(self):
        self.race = Race("Sochi", "Lewis Hamilton", "Max Verstappen", "Carlos Sainz")

    def test_race_has_location(self):
        self.assertEqual("Sochi", self.race.location)

    def test_race_has_winner(self):
        self.assertEqual("Lewis Hamilton", self.race.winner)

    def test_race_has_second_place(self):
        self.assertEqual("Max Verstappen", self.race.second_place)

    def test_race_has_third_place(self):
        self.assertEqual("Carlos Sainz", self.race.third_place)
        