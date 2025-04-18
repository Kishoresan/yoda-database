CREATE TABLE LOOKUP.T_CURRENCY (
  ID smallint NOT NULL AUTO_INCREMENT ,
  COUNTRY_CODE_ISO2 char(2) default 'XX', 
  COUNTRY_CODE_ISO3 char(3) default 'ZZZ', 
  CURRENCY_CODE_ISO3 varchar(3) default 'YYY',
  CURRENCY_NAME varchar(20) NOT NULL,
  CURRENCY_SYMBOL varchar(20) CHARACTER SET UTF8MB4 NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_countries` FOREIGN KEY (`COUNTRY_CODE_ISO2`) REFERENCES LOOKUP.T_COUNTRY (`COUNTRY_CODE_ISO2`)
  );