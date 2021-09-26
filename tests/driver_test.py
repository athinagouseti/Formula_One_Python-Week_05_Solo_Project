import unittest
from models.driver import Driver

class TestDriver(unittest.TestCase):

    def setUp(self):
        self.driver = Driver("Pierre Gasly", 66, "Alpha Tauri")

    def test_driver_has_name(self):
        self.assertEqual("Pierre Gasly", self.driver.name)
    
    def test_driver_has_championship_points(self):
        self.assertEqual(66, self.driver.championship_points)
    
    def test_driver_has_team(self):
        self.assertEqual("Alpha Tauri", self.driver.team)