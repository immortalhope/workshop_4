--5.      Написати PL/SQL код, що додає у кожну 
--сутність по три рядки інформації. 
--Результат роботи зберегти у файлі populate.sql

--Inserting data into museum_type table
INSERT INTO museum_type (museum_type)
VALUES ('GENERAL MUSEUM');
INSERT INTO museum_type (museum_type)
VALUES ('ART MUSEUM');
INSERT INTO museum_type (museum_type)
VALUES ('HISTORIC PRESERVATION');

--Inserting into museum_state
INSERT INTO museum_state (m_state) VALUES ('NY');
INSERT INTO museum_state (m_state) VALUES ('CA');
INSERT INTO museum_state (m_state) VALUES ('AK');

--Insrting into museum_city
INSERT INTO museum_city (city) VALUES ('NEW YORK');
INSERT INTO museum_city (city) VALUES ('LOMPOC');
INSERT INTO museum_city (city) VALUES ('ANCHORAGE');

--Inserting into museum_location.
INSERT INTO museum_location (m_state, city) VALUES ('NY', 'NEW YORK');
INSERT INTO museum_location (m_state, city) VALUES ('CA', 'LOMPOC');
INSERT INTO museum_location (m_state, city) VALUES ('AK', 'ANCHORAGE');

--Inserting into Museum table.
INSERT INTO Museum (museum_name, museum_type, m_state, city)
VALUES ('JOHN MALLOY ART', 'ART MUSEUM', 'NY', 'NEW YORK');
INSERT INTO Museum (museum_name, museum_type, m_state, city)
VALUES ('LOMPOC VALLEY HISTORICAL SOCIETY', 'HISTORIC PRESERVATION', 'CA', 'LOMPOC');
INSERT INTO Museum (museum_name, museum_type, m_state, city)
VALUES ('ALASKA SPORTS HALL OF FAME', 'GENERAL MUSEUM', 'AK', 'ANCHORAGE');

--Inserting into museum_income table
INSERT INTO museum_income (museum_name, income_date, income)
VALUES ('JOHN MALLOY ART', 201412, NULL);
INSERT INTO museum_income (museum_name, income_date, income)
VALUES ('LOMPOC VALLEY HISTORICAL SOCIETY', 201312, 51978);
INSERT INTO museum_income (museum_name, income_date, income)
VALUES ('ALASKA SPORTS HALL OF FAME', 201312, 1370930);

--Inserting into visitor table
INSERT INTO visitor (visitor_name) VALUES ('Nadiya');
INSERT INTO visitor (visitor_name) VALUES ('Den');
INSERT INTO visitor (visitor_name) VALUES ('Yana');

--Inserting into visit table
INSERT INTO visit (visitor_name, ticket_price, museum_name)
VALUES ('Nadiya', 15, 'JOHN MALLOY ART');
INSERT INTO visit (visitor_name, ticket_price, museum_name)
VALUES ('Den', 100, 'LOMPOC VALLEY HISTORICAL SOCIETY');
INSERT INTO visit (visitor_name, ticket_price, museum_name)
VALUES ('Yana', 80, 'ALASKA SPORTS HALL OF FAME');











