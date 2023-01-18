-- Перевірка функції 
SELECT * FROM time_series_info;

SELECT year_update(12);

SELECT * FROM time_series_info;

-- Перевірка тригеру
SELECT * FROM Region;

INSERT INTO Region(code,city_name)
VALUES(07, 'Bakhmut');

SELECT * FROM Region;