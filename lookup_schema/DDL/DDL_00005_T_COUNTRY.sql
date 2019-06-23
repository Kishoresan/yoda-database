CREATE TABLE LOOKUP.T_COUNTRY (
  ID smallint NOT NULL AUTO_INCREMENT COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  COUNTRY_NAME varchar(20) UNIQUE NOT NULL COMMENT 'English country name',
  COUNTRY_CODE_ISO2 char(2) UNIQUE NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-2)',
  COUNTRY_CODE_ISO3 char(3) NOT NULL,
  COUNTRY_NUM SMALLINT(3) ZEROFILL NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  CONTINENT_CODE VARCHAR(2),
  DIAL_CODE varchar(5) NOT NULL,
  IS_ACTIVE boolean DEFAULT 0 ,
PRIMARY KEY (`ID`),
  KEY `continent_code` (`continent_code`),
  CONSTRAINT `fk_continents` FOREIGN KEY (`continent_code`) REFERENCES `T_CONTINENTS` (`code`)
) ENGINE=InnoDB;