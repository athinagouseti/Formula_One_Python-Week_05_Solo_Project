class Team:

    def __init__(self, constructor, engine_supplier, chassis, engine_model, nationality, id = None):
        self.constructor = constructor
        self.engine_supplier = engine_supplier
        self.chassis = chassis
        self.engine_model = engine_model
        self.nationality = nationality
        self.id = id