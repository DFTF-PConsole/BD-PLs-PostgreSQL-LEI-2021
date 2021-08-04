CREATE TABLE descontos (
	escalao NUMERIC(2) CONSTRAINT pk_esc_descontos PRIMARY KEY ,
	salinf NUMERIC(7) CONSTRAINT nn_inf_descontos
		CHECK (salinf IS NOT NULL),
	salsup NUMERIC(7) CONSTRAINT nn_sup_descontos NOT NULL,
	CONSTRAINT ck_salinf_salsup CHECK (salinf < salsup)
);

INSERT INTO descontos VALUES (1, 55000, 99999);
INSERT INTO descontos VALUES (2, 100000, 210000);
INSERT INTO descontos VALUES (3, 210001, 350000);
INSERT INTO descontos VALUES (4, 350001, 550000);
INSERT INTO descontos VALUES (5, 550001, 9999999);
