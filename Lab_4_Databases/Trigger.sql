-- Створити тригер, який при додаванні нового регіону в Region буде дописувати наперед перед назвою 
-- "Нещодавно звільнений ".

DROP TRIGGER IF EXISTS region_trigger ON region;


CREATE OR REPLACE FUNCTION region_func() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE region
          SET city_name = ('Нещодавно звільнений ' || city_name) 
		  WHERE region.code = NEW.code;
		  RETURN Null; 
     END;
$$;


CREATE TRIGGER region_trigger
AFTER INSERT ON region
FOR EACH ROW EXECUTE FUNCTION region_func();

INSERT INTO Region(code,city_name)
VALUES(06, 'Luhansk');