CREATE TABLE LOOKUP.T_CONTINENT (
  `code` CHAR(2) NOT NULL COMMENT 'Continent code',
  `name` VARCHAR(255),
  PRIMARY KEY (`code`)
) ENGINE=InnoDB;