CREATE TABLE `new_schema`.`apples` (
  `PERSONID` INT(10) NOT NULL,
  `APPLE` VARCHAR(50) NOT NULL,
  `tart/sweet (1-10)` INT(10) NULL,
  `mushy/crisp (1-10)` INT(10) NULL,
  `dry/juicy (1-10)` INT(10) NULL,
  PRIMARY KEY (`PERSONID`));
  
  
LOAD DATA LOCAL INFILE 'APPLE DATA for cuny.csv' 
INTO TABLE apples 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`PERSONID`,`APPLE`,`tart/sweet (1-10)`,`mushy/crisp (1-10)`,`dry/juicy (1-10)`);

SELECT * FROM apples