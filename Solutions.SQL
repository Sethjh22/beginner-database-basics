-- PERSON TABLE 

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INT,
  height INT,
  city VARCHAR(250),
  favorite_color VARCHAR(100)
  );

INSERT INTO person (name, age, height, city, favorite_color)
VALUES
('Jordan Mulford', 34, 123, 'Saratoga Springs', 'blue'),
('Erica Olson', 23, 234, 'Orem', 'Sage'),
('Zippy Draper', 23, 254, 'Provo', 'Orange'),
('Seth Hill', 23, 255, 'Orem', 'IDK'),
('Rick', 999, 777, 'Earth', 'green');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age < 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 AND age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color !='blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

-- ORDER TABLE 

CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(100),
  product_price INT,
  quantity INT
  );

  INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
(1, 'hotdog', 2.99, 6),
(1, 'icecream', 1.50, 1),
(2, 'pizza', 1.50, 25),
(3, 'chicken', 6.00, 1),
(4, 'steak', 20.20, 5);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;
  
SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;

-- ARTIST TABLE 
INSERT INTO artist(name)
VALUES ('Weezer'),
('Blink 182'),
('Hopsin');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM artist
WHERE name ILIKE 'Black%';

SELECT * FROM artist
WHERE name ILIKE '%Black%';

-- EMPLOYEE TABLE 
SELECT first_name, last_name FROM employee
WHERE city ILIKE 'Calgary';

SELECT birth_date FROM employee
ORDER BY birth_date ASC
LIMIT 1;

SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE 

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice; 

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;




