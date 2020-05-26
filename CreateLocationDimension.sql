CREATE TABLE DimLocation
(
	LocationKey				INT				IDENTITY(1, 1) NOT NULL,
	LocationCity	 		VARCHAR(40)			NOT NULL,
	LocationCountry				VARCHAR(40)		NULL,
	LocationArea 			VARCHAR(40)		NULL,
	CONSTRAINT PK_DimLocation PRIMARY KEY (LocationKey)
);
GO