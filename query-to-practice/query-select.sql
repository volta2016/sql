CREATE TABLE user (
	id int not null auto_increment,
	name varchar(50) not null,
    edad int not null, 
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('chanchito', 7, 'chanchito@gmail.com');

-- to get date of our data base
select * from user;
-- limit, it will limit the amount of resources that will be returned to us.
select * from user limit 1;
-- search by age
select * from user where edad > 15;

select * from user where edad >= 15;

select * from user where edad > 20 and email = 'nico@gmail.com';

select * from user where edad > 20 or email = 'layla@gmail.com';
-- negation
select * from user where email !=  'layla@gmail.com';
-- you will search for all records whose age is between 15 and 30.

select * from user where edad between 15 and 30;

-- Query coming from the user to the database, search for a string, I don't care about its beginning and its end
select *  from user where email like '%gmail%';

-- what follows after oscar It doesn't matter
select *  from user where email like 'oscar%';

-- order age
select * from user order by edad asc;
select * from user order by edad desc;

select max(edad) as mayor from user;
select min(edad) as mayor from user;

-- columns of interest for us
select id, name  from user;

select id, name as nombre from user;



