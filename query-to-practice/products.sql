


-- create table products (
-- 	id int not null auto_increment,
--     name varchar(50) not null,
--     created_by int not null,
--     marca varchar(50) not null,
--     primary key(id),
--     foreign key(created_by) references user(id)
-- );

-- rename table products to product;

insert into products (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
	('imac', 1, 'apple'),
    ('imac', 3, 'apple'),
     ('ipad mini', 2, 'apple');
     
 select * from products;
 
 select u.id, u.email, p.name from user u left join products p on u.id = p.created_by; 