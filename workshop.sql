create table Avion(
id int primary key,
name varchar (100),
capacite int,
ville varchar (100)
);

create table pilot(
id int primary key,
name varchar (100),
adress varchar (100)
);


create table vol(
id int primary key,
name varchar (100),
adress varchar (100)
);
-- 1
INSERT INTO avion VALUES (100, 'AIRBUS', 300, 'RABAT');
INSERT INTO avion VALUES (101, 'B737', 250, 'CASA');
INSERT INTO avion VALUES (102, 'B737', 220, 'RABAT');
-- 2
select *from Avion; 
-- 3
select *from Avion ORDER BY name;
-- 4
select name,capacite from Avion ;
-- 5
SELECT DISTINCT  ville from Avion;
-- 6
select *from avion where ville='RABAT' or 'CASA';
-- 7
update avion set capacite='220' where id=101;
-- 8
DELETE FROM Avion WHERE Capacite < 200;
-- 9
select max(capacite) as maxcapacite,
min(capacite) as mincapacite,
avg(capacite) as avgcapacite
 from Avion;
-- 10
SELECT * FROM avion WHERE capacite = (SELECT MIN(capacite) FROM avion);
-- 11
SELECT * FROM avion WHERE capacite >= (SELECT AVG(capacite) FROM avion);