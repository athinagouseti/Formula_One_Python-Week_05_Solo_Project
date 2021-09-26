import unittest
from models.race_result import Race_Result
from models.team import Team
from models.driver import Driver
from models.grand_prix import Grand_prix


class TestRaceResult(unittest.TestCase):

    def setUp(self):
        self.team = Team("Red Bull", "Honda", "RB16B", "RA621H", "Austria")
        self.driver = Driver(33, "Max Verstappen", "Netherlands",self.team)
        self.grand_prix = Grand_prix(13, "Dutch Grand Prix", "Zandvoort", "5th September 2021")
        self.race_result = Race_Result(self.driver, self.grand_prix, 1, False, None, None)

    def test_race_result_has_driver(self):
        self.assertEqual(self.race_result.driver, self.driver)

    def test_race_result_has_grand_prix_round(self):
        self.assertEqual(self.race_result.grand_prix_round, self.grand_prix)