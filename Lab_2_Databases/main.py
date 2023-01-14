import psycopg2

username = 'postgres'
password = 'karysel55'
database = 'Second_lab'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT public."Region".name as country, gender, sum(amount)  

FROM public."Population" join public."Region"
on public."Population".region = public."Region".code

where public."Population".date = 2019 and 
public."Population".age not like 'total' and
public."Region".name like 'Ukraine'

group by country, gender
order by country;
'''

query_2 = '''

SELECT public."Region".name as city, date,  sum(amount)  

FROM public."Population" join public."Region"
on public."Population".region = public."Region".code

where (public."Population".date = 2005 or 
public."Population".date = 2015) and
public."Population".age not like 'total' and
public."Region".name like 'Vinn%'

group by city, date
order by city;

'''

query_3 = '''
SELECT martality_rate, year
FROM public."Time_series_info"
ORDER BY year; 
'''

conn1 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
conn2 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
conn3 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn1:
    print ("Database opened successfully")
    cur = conn1.cursor()

    print('1.')
    cur.execute(query_1)

    for row in cur:
        print(row)

print()
with conn2:
    print ("Database opened successfully")
    cur = conn2.cursor()

    print('2.')
    cur.execute(query_2)

    for row in cur:
        print(row)

print()
with conn3:
    print ("Database opened successfully")
    cur = conn3.cursor()

    print('3.')
    cur.execute(query_3)

    for row in cur:
        print(row)
