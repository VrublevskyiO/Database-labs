
-- 1. Визначити кількість жителів, станом на 2019 рік, для України залежно від статі.
SELECT public."Region".name as country, gender, sum(amount)  

FROM public."Population" join public."Region"
on public."Population".region = public."Region".code

where public."Population".date = 2019 and 
public."Population".age not like 'total' and
public."Region".name like 'Ukraine'

group by country, gender
order by country;


-- 2.Визначити кількість жителів, станом на 2005 та 2015 роки,  для Вінницької області.
SELECT public."Region".name as city, date,  sum(amount)  

FROM public."Population" join public."Region"
on public."Population".region = public."Region".code

where (public."Population".date = 2005 or 
public."Population".date = 2015) and
public."Population".age not like 'total' and
public."Region".name like 'Vinn%'

group by city, date
order by city;


-- 3. Знайти рівень кримінальних правопорушень, за кожною з дат.
SELECT martality_rate, year
FROM public."Time_series_info"
ORDER BY year; 
