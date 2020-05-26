CREATE TABLE FactRent
(
	MainKey			INT			NOT NULL identity (1,1),
	CarKey	INT			NOT NULL,
	LocationKey 		INT			NOT NULL,
	TimeKey			INT			NOT NULL,
	PaymentKey			INT			NULL
	CONSTRAINT PK_FactRent PRIMARY KEY (MainKey)
);
GO

ALTER TABLE FactRent ADD CONSTRAINT
	FK_Rent_Location FOREIGN KEY(LocationKey)
	REFERENCES DimLocation(LocationKey);
ALTER TABLE FactRent ADD CONSTRAINT
	FK_Rent_Car FOREIGN KEY(CarKey)
	REFERENCES DimCar(CarKey);
ALTER TABLE FactRent ADD CONSTRAINT
	FK_Rent_Time FOREIGN KEY(TimeKey)
	REFERENCES DimTime(TimeKey);
ALTER TABLE FactRent ADD CONSTRAINT
	FK_Rent_Payment FOREIGN KEY(PaymentKey)
	REFERENCES DimPayment(PaymentKey);
GO