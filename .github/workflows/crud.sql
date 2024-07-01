--CRUD Operations
INSERT INTO Products VALUES ("SM57","Shure","Microphone",99); --C for Create
--Adds Shure mic to database
INSERT INTO Microphones VALUES ("SM57", "Dynamic", "Shure", "Cardioid", NULL, 99);

SELECT Products.model, Products.manufacturer, Microphones.mic_type, Products.price
FROM Products
JOIN Microphones ON Products.model=Microphones.model
WHERE mic_type="Dynamic"
ORDER BY Products.price; --R for Read
--Lists all microphones that are dynamic

SELECT *
FROM Products
WHERE price<100; --Finds all products that cost less than $100

SELECT DISTINCT *
FROM Products JOIN Microphones
WHERE manufacturer = 'Shure';

SELECT * FROM Products;
UPDATE Products SET price=500 WHERE model="SM58"; --U for Update, updates SM58 mic's price to 500
DELETE FROM Products WHERE model="SM57"; --D for Delete, deletes rcord for microphone of the model "Townsend"
SELECT * FROM Products;
