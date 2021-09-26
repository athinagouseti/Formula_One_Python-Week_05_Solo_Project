import unittest
from models.team import Team

class TestTeam(unittest.TestCase):

    def setUp(self):
        self.team = Team("Alpha Tauri", 84, "Pierre Gasly", "Yuki Tsunoda")
    
    def test_team_has_name(self):
        self.assertEqual("Alpha Tauri", self.team.name)
    
    def test_team_has_constructor_points(self):
        self.assertEqual(84, self.team.constructor_points)

    def test_team_has_driver_1(self):
        self.assertEqual("Pierre Gasly", self.team.driver_1)

    def test_team_has_driver_2(self):
        self.assertEqual("Yuki Tsunoda", self.team.driver_2)