CREATE TABLE DimInsurance
(
	InsuranceKey				INT				IDENTITY(1, 1) NOT NULL,
	InsuranceCost	 		Real			NOT NULL,
		InsuranceRisk			VARCHAR(40)		NULL,
	CONSTRAINT PK_DimInsurance PRIMARY KEY (InsuranceKey)
);
GO