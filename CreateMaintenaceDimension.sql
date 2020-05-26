CREATE TABLE DimMaintenance
(
	MaintenanceKey				INT				IDENTITY(1, 1) NOT NULL,
	MaintenanceCost	 		Real			NOT NULL,
		MaintenanceType			VARCHAR(40)		NULL,
	CONSTRAINT PK_DimMaintenance PRIMARY KEY (MaintenanceKey)
);
GO