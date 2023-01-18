INSERT INTO Region(code, city_name)
VALUES(01, 'Ukraine');
INSERT INTO Region(code, city_name)
VALUES(02, 'Kyiv');
INSERT INTO Region(code,city_name)
VALUES(03, 'Vinnytsya');
INSERT INTO Region(code,city_name)
VALUES(04, 'Kharkiv');
INSERT INTO Region(code,city_name)
VALUES(05, 'Donetsk');

INSERT INTO Population(region, year_date, gender, age,amount)
VALUES(02, 1999, 'm', 32, 12045);
INSERT INTO Population(region, year_date, gender, age,amount)
VALUES(03, 1995, 'm', 12, 19045);
INSERT INTO Population(region, year_date, gender, age,amount)
VALUES(01, 2012, 'f', 45, 11045);
INSERT INTO Population(region, year_date, gender, age,amount)
VALUES(04, 1998, 'm', 32, 1078);
INSERT INTO Population(region, year_date, gender, age,amount)
VALUES(01, 2019, 'f', 27, 9327);

INSERT INTO Time_series_info(year_date, martality_rate, mid_salary_uah, GDP, fertility_rate)
VALUES (1999, 12.45, 1250, 3.6, 2.4);
INSERT INTO Time_series_info(year_date, martality_rate, mid_salary_uah, GDP, fertility_rate)
VALUES (1994, 12, 1010, 3.1, 8.4);
INSERT INTO Time_series_info(year_date, martality_rate, mid_salary_uah, GDP, fertility_rate)
VALUES (2011, 9.5, 9500, 2.2, 1.4);
INSERT INTO Time_series_info(year_date, martality_rate, mid_salary_uah, GDP, fertility_rate)
VALUES (2013, 16.4, 10510, 3.9, 2.4);
INSERT INTO Time_series_info(year_date, martality_rate, mid_salary_uah, GDP, fertility_rate)
VALUES (1995, 10.25, 1200, 2.1, 3.7);