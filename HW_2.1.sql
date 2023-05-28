create table if not exists employee (
id SERIAL PRIMARY KEY,
name varchar(20) not null,
chief varchar(20) unique,
department integer unique
);