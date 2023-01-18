-- Написати функцію, яка додає у поле year_date в таблиці time_series_info поточний рік, 
-- додає до поля gdp раніше передане значення, та інші поля оголошуються константами
-- при виклику функції.

SELECT * FROM time_series_info;

DROP FUNCTION IF EXISTS year_update(integer);
CREATE OR REPLACE FUNCTION year_update(const integer) RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN 
   UPDATE time_series_info
   SET year_date = date_part('year', current_date), martality_rate=10, mid_salary_uah=5700, GDP=const, fertility_rate=5;
END;
$$; 
