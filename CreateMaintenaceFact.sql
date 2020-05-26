use RentACarDW;
CREATE TABLE FactMaintenance
(
	MainKey			INT			NOT NULL identity (1,1),
	LocationKey 		INT			NOT NULL,
	CarKey			INT			NOT NULL,
	MaintenanceKey INT NOT NULL,
	TimeKey			INT			NULL,
	CONSTRAINT PK_FactMaintenance PRIMARY KEY (MainKey)
);
GO

ALTER TABLE FactMaintenance ADD CONSTRAINT
	FK_Maintenace_Location FOREIGN KEY(LocationKey)
	REFERENCES DimLocation(LocationKey);
ALTER TABLE FactMaintenance ADD CONSTRAINT
	FK_Maintenace_Time FOREIGN KEY(TimeKey)
	REFERENCES DimTime(TimeKey);
ALTER TABLE FactMaintenance ADD CONSTRAINT
	FK_Maintenace_Car FOREIGN KEY(CarKey)
	REFERENCES DimCar(CarKey);
ALTER TABLE FactMaintenance ADD CONSTRAINT
	FK_Maintenance_Maintenance FOREIGN KEY(MaintenanceKey)
	REFERENCES DimMaintenance(MaintenanceKey);