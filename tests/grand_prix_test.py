import unittest
from models.grand_prix import Grand_prix

class TestGrandPrix(unittest.TestCase):

    def setUp(self):
        self.grand_prix = Grand_prix(1, 'Bahrain Grand Prix', 'Bahrain International Circuit', '28 March 2021')

    def test_grand_prix_has_round(self):
        self.assertEqual(1, self.grand_prix.round)

    def test_grand_prix_has_name(self):
        self.assertEqual('Bahrain Grand Prix', self.grand_prix.name)

    def test_grand_prix_has_circuit(self):
        self.assertEqual('Bahrain International Circuit', self.grand_prix.circuit)

    def test_grand_prix_has_date(self):
        self.assertEqual('28 March 2021', self.grand_prix.date)
