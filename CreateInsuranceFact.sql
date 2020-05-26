CREATE TABLE FactInsurance
(
	MainKey			INT			NOT NULL identity (1,1),
	LocationKey 		INT			NOT NULL,
	TimeKey			INT			NOT NULL,
	PaymentKey			INT			NULL,
	InsuranceKey INT NULL,
	CONSTRAINT PK_FactInsurance PRIMARY KEY (MainKey)
);
GO

ALTER TABLE FactInsurance ADD CONSTRAINT
	FK_Insurance_Location FOREIGN KEY(LocationKey)
	REFERENCES DimLocation(LocationKey);
ALTER TABLE FactInsurance ADD CONSTRAINT
	FK_Insurance_Time FOREIGN KEY(TimeKey)
	REFERENCES DimTime(TimeKey);
ALTER TABLE FactInsurance ADD CONSTRAINT
	FK_Insurance_Payment FOREIGN KEY(PaymentKey)
	REFERENCES DimPayment(PaymentKey);
ALTER TABLE FactInsurance ADD CONSTRAINT
	FK_Insurance_Insurance FOREIGN KEY(InsuranceKey)
	REFERENCES DimInsurance(InsuranceKey);