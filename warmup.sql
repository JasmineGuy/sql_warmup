When should you use a database?
    When you want to quickly and expertly analyze data.
What is the difference between relational and databases? 
    Relational databases recognize relationships between data and store that data in tables. & Non-relational databases are faster but document-oriented and store data more like a laundry list.
    Relational Example: PostgreSQL, Db2, MySQL (tables with common fields)
    Non-Relational Example: MongoDB, Apache, Cassandra (a list of data that doesn't necessarily follow the same format)
What are some datatypes in PostgreSQL:
    INTERGER, SERIAL PRIMARY KEY, VARCHAR, BOOLEAN, DATE etc
    What determines what datatype you should use: How you want to use the data and how you want users to submit data


CREATE TABLE practice(
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  age INTEGER,
  single BOOLEAN DEFAULT True
  );

INSERT INTO practice(first_name, last_name, age, single)
VALUES 
	('Jasmine' ,'Guy', 32, True),
    ('Julio' ,'Mendez', 22, False),
    ('Ferdinand' ,'Michaels', 18, True);

SELECT * FROM practice
WHERE age > 25;

SELECT first_name, age, single FROM practice
WHERE age IN (32, 24);

SELECT * FROM practice
WHERE first_name LIKE 'J%';

UPDATE practice 
SET single = False
WHERE single = true;

select * from practice;

DROP TABLE practice;


