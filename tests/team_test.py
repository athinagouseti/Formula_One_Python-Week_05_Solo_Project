import unittest
from models.team import Team

class TestTeam(unittest.TestCase):

    def setUp(self):
        self.team = Team(9, "Red Bull", "Honda", "RB16B", "RA621H", "Austria")
    
    def test_team_has_id(self):
        self.assertEqual(9, self.team.id)

    def test_team_has_constructor(self):
        self.assertEqual("Red Bull", self.team.constructor)

    def test_team_has_engine_supplier(self):
        self.assertEqual("Honda", self.team.engine_supplier)

    def test_team_has_chassis(self):
        self.assertEqual("RB16B", self.team.chassis)

    def test_team_has_engine_model(self):
        self.assertEqual("RA621H", self.team.engine_model)

    def test_team_has_nationality(self):
        self.assertEqual("Austria", self.team.nationality)