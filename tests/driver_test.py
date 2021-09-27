import unittest
from models.driver import Driver
from models.team import Team

class TestDriver(unittest.TestCase):

    def setUp(self):
        self.team = Team(1, "AlphaTauri", "Honda", "AT02", "RA621H", "Italy")
        self.driver = Driver(10,"Pierre Gasly", "France", self.team)

    def test_driver_has_racing_number(self):
        self.assertEqual(10, self.driver.racing_number)

    def test_driver_has_name(self):
        self.assertEqual("Pierre Gasly", self.driver.name)

    def test_driver_has_nationality(self):
        self.assertEqual("France", self.driver.nationality)

    def test_driver_has_team(self):
        self.assertEqual(self.team, self.driver.team)
    
    
   