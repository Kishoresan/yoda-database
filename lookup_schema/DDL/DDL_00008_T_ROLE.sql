CREATE TABLE LOOKUP.T_ROLE
(
	CD SMALLINT NOT NULL,	
	NAME VARCHAR(255) NOT NULL,
	DESCRIPTION VARCHAR(255) NOT NULL
);

ALTER TABLE LOOKUP.T_ROLE ADD PRIMARY KEY (CD);