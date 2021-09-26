import unittest
from models.driver import Driver
from models.team import Team

class TestDriver(unittest.TestCase):

    def setUp(self):
        self.team = Team("AlphaTauri", "Honda", "AT02", "RA621H", "Italy" )
        self.driver = Driver(10,"Pierre Gasly", "France", self.team)

    def test_driver_has_name(self):
        self.assertEqual("Pierre Gasly", self.driver.name)
    
   