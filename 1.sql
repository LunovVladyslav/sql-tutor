CREATE TABLE person (
    PersonID int,
    FirstName varchar(255),
    LastName varchar(255)
);
CREATE TABLE address (
    AddressID int,
    PersonID int,
    City varchar(255),
    State varchar(255)
);
TRUNCATE TABLE person;
INSERT INTO person (PersonID, FirstName, LastName) VALUES ('1', 'Wang', 'Allen');
TRUNCATE TABLE address;
INSERT INTO address (AddressID, PersonID, City, State) VALUES ('1', '2', 'New York City', 'New York');

SELECT FirstName, LastName, City, State FROM person LEFT OUTER JOIN address a on person.PersonID = a.PersonID;