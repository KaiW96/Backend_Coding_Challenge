--The queries below allow easy access to database information
--Many queries were used in the api to access the database
--Run in MySQL command line Client

--Updated January 16th 2022


--Select all from user
SELECT * FROM inventory;

DELETE FROM inventory;


INSERT INTO inventory(name,price,department,description) VALUES ("Beats by dre", 299 , "electronics", "Red beats headphones");
INSERT INTO inventory(name,price,department,description) VALUES ("Iphone13", 1349, "electronics", "Newest apple product");
INSERT INTO inventory(name,price,department,description) VALUES ("Sony A6000", 799, "electronics", "Sony A6000 camera, 24 megapixels");