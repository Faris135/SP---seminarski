CREATE TABLE DimPayment
(
	PaymentKey				INT				IDENTITY(1, 1) NOT NULL,
	Amount	 		REAL			NOT NULL,
	Mode				VARCHAR(40)		NULL,
	CONSTRAINT PK_DimPayment PRIMARY KEY (PaymentKey)
);