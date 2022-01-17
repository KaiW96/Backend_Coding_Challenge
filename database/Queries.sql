--The queries below allow easy access to database information
--Many queries were used in the api to access the database
--Run in MySQL command line Client

--Updated January 16th 2022


--Select all from user
SELECT * FROM inventory;

DELETE FROM inventory;


INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Beats by dre", 299 , "Electronics", "Red beats headphones", "Shopify.ca/apple/headphones");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Iphone13", 1349, "Electronics", "Newest apple product","Shopify.ca/apple/headphones");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Sony A6000", 799, "Electronics", "Sony A6000 camera, 24 megapixels", "Shopify.ca/sony/camera");