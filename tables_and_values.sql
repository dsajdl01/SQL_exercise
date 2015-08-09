-- Create table Member
-- **********************************************
  CREATE  TABLE `dsajdl01dbm`.`member` (
  `memberNo` INT(5) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(60) NOT NULL ,
  `age` TINYINT NULL ,
  PRIMARY KEY (`memberNo`) )
ENGINE = InnoDB;



  
  -- create table Book
  -- *********************************************
CREATE  TABLE `dsajdl01dbm`.`book` (
  `isbn` VARCHAR(18) NOT NULL ,
  `title` VARCHAR(60) NOT NULL ,
  `author` VARCHAR(60) NOT NULL ,
  `publisher` VARCHAR(60) NOT NULL ,
  `year` SMALLINT(4) NOT NULL ,
  `category` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`isbn`) )
ENGINE = InnoDB;
  
  
-- create table Borrowed
-- ***********************************************
CREATE  TABLE `dsajdl01dbm`.`borrowed` (
  `borrowedRef` INT NOT NULL AUTO_INCREMENT ,
  `memberNo` INT(5) NOT NULL ,
  `isbn` VARCHAR(18) NOT NULL ,
  `date` DATE NOT NULL ,
  PRIMARY KEY (`borrowedRef`) ,
  INDEX `borrowed_idfk_1` (`memberNo` ASC) ,
  INDEX `borrowed_idfk_2` (`isbn` ASC) ,
  CONSTRAINT `borrowed_idfk_1`
    FOREIGN KEY (`memberNo` )
    REFERENCES `dsajdl01dbm`.`member` (`memberNo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `borrowed_idfk_2`
    FOREIGN KEY (`isbn` )
    REFERENCES `dsajdl01dbm`.`book` (`isbn` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- modified borrowed table 
ALTER TABLE borrowed AUTO_INCREMENT = 1000;
	


--**********************************************************************************************************************
-- 				Adding values into tables

--**********************************************************************************************************************

-- value for Member's table
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('David Sajdl', 37);  -- 1
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Jane Doe', 38); -- 2
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Yadira Diez', 34); -- 3
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Tatiana Teheran', 35); -- 4
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Robert Paweley', 34); -- 5
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Rita Cabezas', 32); -- 6
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Magdalema Mazurek', 34); -- 7
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Ben Knight', 35); -- 8
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Montserrat Diez', 42); -- 9
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Gaby Navas', 27); -- 10
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Andrew Docherty', 43); -- 11
INSERT INTO `dsajdl01dbm`.`member` (`name`, `age`) VALUES ('Luciana Hugueney', 25); -- 12

-- value for book's table
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('978-1-40-938375-X', 'RHS Encyclopedia of Gardening', 'Christopher Brickell', 'Dorling Kinderslay', 2012, 'Gardening');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('297-5-22-980975-0', 'Always Fresh Vegetables', 'William Smith', 'Dorling Kinderslay', 1998, 'Gardening');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('127-6-35-830178-9', 'Have an Excellent Garden', 'William Smith', 'Dorling Kinderslay', 1901, 'Gardening');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('978-0-96-717478-4', 'How To Develop Self Confidence', 'Dale Carneqie', 'Atlantic books', 1981, 'Self Hepl');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('928-3-72-847297-X', 'Have a Happy Development', 'William Smith', 'Dorling Kinderslay', 1997, 'Self Help');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('936-4-53-481387-8', 'Happy Hours', 'Dale Carneqie', 'Atlantic books', 1989, 'Self Help');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('978-0-52-775256-9', 'The Greatest Show on Earth', 'Richard Dawkings', 'Black Swan', 2012, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('645-5-64-738419-X', 'The God Delusion', 'Richard Dawkings', 'Black Swan', 2011, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('326-3-65-632356-9', 'The Magic of Reality', 'Richard Dawkings', 'Black Swan', 2009, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('346-3-47-866374-4', 'The Ancestor\'s Tale', 'Richard Dawkings', 'Black Swan', 2012, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('342-3-19-090959-0', 'The Blind Watchmaker', 'Richard Dawkings', 'Black Swan', 2010, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('342-3-19-468469-X', 'The Selfish Gane', 'Richard Dawkings', 'Black Swan', 1976, 'Science');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('9-734-64875-3', 'Happy Life', 'Andrea Wood', 'Atlantic books', 1899, 'Drama');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('9-634-56348-3', 'Stranger in my Life', 'Andrea Wood', 'Atlantic books', 1898, 'Drama');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('9-467-48789-8', 'It is Unhappy End', 'Andrea Wood', 'Atlantic books', 1900, 'Drama');
INSERT INTO `dsajdl01dbm`.`book` (`isbn`, `title`, `author`, `publisher`, `year`, `category`) VALUES ('732-4-87-487801-6', 'Hard Work on Development', 'Dale Carneqie', 'Atlantic books', 1996, 'Self Help');



-- value for borrowed table
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '326-3-65-632356-9', '2013-09-03');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '645-5-64-738419-X', '2013-09-21');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '346-3-47-866374-4', '2013-09-28');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (9, '9-467-48789-8', '2013-10-03');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (2, '732-4-87-487801-6', '2013-10-03');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (3, '326-3-65-632356-9', '2013-10-11');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '342-3-19-090959-0', '2013-10-10');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (9, '928-3-72-847297-X', '2013-10-21');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (6, '297-5-22-980975-0', '2013-10-30');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '978-0-52-775256-9', '2013-10-30');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (12, '9-634-56348-3', '2013-11-08');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (2, '326-3-65-632356-9', '2013-11-15');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '978-0-52-775256-9', '2013-11-18');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (6, '978-1-40-938375-X', '2013-11-20');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (8, '9-467-48789-8', '2013-12-04');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '346-3-47-866374-4', '2013-12-6');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '978-0-52-775256-9', '2013-12-12');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (2, '9-467-48789-8', '2014-01-10');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (9, '9-634-56348-3', '2014-01-12');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '645-5-64-738419-X', '2014-01-20');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '127-6-35-830178-9', '2014-01-20');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (8, '936-4-53-481387-8', '2014-01-28');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (3, '978-0-52-775256-9', '2014-02-10');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '645-5-64-738419-X', '2014-02-10');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (10, '297-5-22-980975-0', '2014-02-12');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (5, '346-3-47-866374-4', '2014-02-19');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (10, '127-6-35-830178-9', '2014-02-22');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '9-634-56348-3', '2014-02-22');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (1, '342-3-19-468469-X', '2014-02-24');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '936-4-53-481387-8', '2014-02-24');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (9, '127-6-35-830178-9', '2014-02-24');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (9, '9-467-48789-8', '2014-02-27');
INSERT INTO `dsajdl01dbm`.`borrowed` (`memberNo`, `isbn`, `date`) VALUES (7, '346-3-47-866374-4',  now());

