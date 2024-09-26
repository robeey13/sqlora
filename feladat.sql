CREATE DATABASE Vizallas DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

CREATE TABLE Meresek(
    azon INT PRIMARY KEY,
    datum DATE,
    allas INT,
    varos VARCHAR(40),
    folyo VARCHAR(10)
)

#4

INSERT INTO meresek VALUES('7310', '2005-01-01', '200', 'Szeged', 'Tisza');

# 5

INSERT INTO meresek(azon,allas,folyo) VALUES ('8000', '250', 'Vág');

# 6

UPDATE meresek
SET allas=allas+5
where azon='1';

# 7

DELETE FROM meresek
WHERE allas<100;

# 8

SELECT * FROM meresek
WHERE allas>500 AND varos='Mohács' AND datum BETWEEN '2000-01-01' AND '2000-12-31';

#WHERE varos="Mohács" AND allas>500 AND YEAR(datum)=2000;

# 9

SELECT datum,allas,folyo FROM meresek
WHERE varos LIKE "%maros";

# 10

SELECT datum,allas,folyo FROM meresek
WHERE allas BETWEEN 100 and 120
#where allas>100 and allas<120
ORDER BY datum; 
#order by datum nem része a feladatnak, de növekedő időrendi sorrandbe hozza az adatokat

# 11

SELECT allas,folyo FROM meresek
WHERE datum LIKE "%-02-%";

#where month(datum)=2;