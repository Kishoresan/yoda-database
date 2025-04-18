CREATE TABLE PROFILE.T_IDENTITY_DOCUMENT
(
	ID BINARY(16) NOT NULL,	
	FK_DOCUMENT_TYPE_CD SMALLINT NOT NULL,
	FK_USER_ID BINARY(16) NOT NULL,
	FK_MEDIA_FILE_ID BINARY(16) NOT NULL,
	IS_VERIFIED BIT NOT NULL
);

ALTER TABLE PROFILE.T_IDENTITY_DOCUMENT ADD PRIMARY KEY (ID);

ALTER TABLE PROFILE.T_IDENTITY_DOCUMENT ADD CONSTRAINT FK_DOCUMENT_TYPE 
FOREIGN KEY (FK_DOCUMENT_TYPE_CD) REFERENCES LOOKUP.T_DOCUMENT_TYPE(CD);

ALTER TABLE PROFILE.T_IDENTITY_DOCUMENT ADD CONSTRAINT FK_USER
FOREIGN KEY (FK_USER_ID) REFERENCES PROFILE.T_USER(ID);

ALTER TABLE PROFILE.T_IDENTITY_DOCUMENT ADD CONSTRAINT FK_MEDIA_FILE
FOREIGN KEY (FK_MEDIA_FILE_ID) REFERENCES PROFILE.T_MEDIA_FILE(ID);