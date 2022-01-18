--The queries below allow easy access to database information
--Many queries were used in the api to access the database
--Run in MySQL command line Client

--Updated January 16th 2022


--Select all from user
SELECT * FROM inventory;

DELETE FROM inventory;


INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Beats by dre", 299 , "Electronics", "Red beats headphones", "Shopify.ca/apple/headphones");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("IPhone 13", 1349, "Electronics", "Newest apple product","Shopify.ca/apple/headphones");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Sony A6000", 799, "Electronics", "Sony A6000 camera, 24 megapixels", "Shopify.ca/sony/camera");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Nike Hoodie Medium Gray", 69, "Clothing", "Gray Nike Hoodie 100% cotton", "Shopify.ca/nike/top");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Adidas Trackpants Large Blue", 49, "Clothing", "Blue 100% cotton trackpants", "Shopify.ca/adidas/bottom");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Nike Jordans Size 11", 299, "Footwear", "Red Air Jordans Size 11 mens", "Shopify.ca/nike/shoes");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Canada Goose Parka Medium", 1299, "Clothing", "Women's Canada Goose Parka Jacket, 800 down fill power", "Shopify.ca/canadagoose/parka");

INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Samsung 60 Inch TV", 1799, "Electronics", "Samsung 60 inch, 4k OLED television", "Shopify.ca/samsung/television");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Rolex Submariner", 19999, "Accessories", "Brand new Rolex Submariner, waterproof", "Shopify.ca/rolex/watches");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Instant Pot 20L", 129, "Kitchen", "20L instant cooker, cooks rice and air fry", "Shopify.ca/instantpot/pot");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Tim Hortons Instant Coffee", 19, "Food", "1Kg instant coffee by Tim Hortons", "Shopify.ca/timhortons/coffee");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Tim Hortons Instant Coffee", 19, "Food", "1Kg instant coffee by Tim Hortons", "Shopify.ca/timhortons/coffee");
INSERT INTO inventory(name,price,department,description,store_URL) VALUES ("Niagara Falls 40 inch", 99, "Art", "40 inch canvas painting of Niagara Falls", "Shopify.ca/privateseller/art");


