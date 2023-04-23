/***********************************************************
* Create the database named memberdb and all of its tables
************************************************************/

DROP DATABASE IF EXISTS memberdb;
CREATE DATABASE memberdb;
USE memberdb;

CREATE TABLE Member (
	MemberID INT NOT NULL AUTO_INCREMENT,
	FullName VARCHAR(50),
	EmailAddress VARCHAR(50),
	PhoneNumber VARCHAR(20),
	ProgramName VARCHAR(20),
	YearLevel INT,
	PRIMARY KEY(MemberID) 
);

INSERT INTO Member 
  (FullName, EmailAddress, PhoneNumber, ProgramName, YearLevel)
VALUES 
  ('Xiao Xing', 'xx@gmail.com', '519-888-1234', 'CAD', 1),
  ('Yoshi Yamasaki', 'yy@yahoo.com', '226-987-0226', 'CPA', 3);