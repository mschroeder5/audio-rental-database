--CRUD Operations
INSERT INTO Products VALUES ("Townsend","Universal Audio","Microphone",1200); --C for Create
SELECT DISTINCT Products.model,Products.manufacturer,Products.price FROM Products JOIN Microphones ON Products.model=Microphones.model WHERE mic_type="Dynamic"; --R for Read
--Lists all microphones that are dynamic

SELECT * FROM Products;
UPDATE Products SET price=500 WHERE model="SM58"; --U for Update, updates SM58 model price to 500
DELETE FROM Products WHERE model="Townsend"; --D for Delete, deletes rcord for microphone of the model "Townsend"
SELECT * FROM Products;

SELECT * FROM Microphones;
SELECT * FROM Cables;
SELECT * FROM Interfaces;
SELECT * FROM Mixers;
SELECT * FROM Speakers;
