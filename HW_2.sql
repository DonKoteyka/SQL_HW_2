create table if not exists soundtrack (
id SERIAL PRIMARY KEY,
name varchar(20) not null,
time integer,
album_id integer unique
);

create table if not exists album (
id SERIAL PRIMARY key references soundtrack(id),
name varchar(20) not null,
year integer,
singer_id integer unique
);

create table if not exists singer(
id serial primary key,
nickname varchar(20) not null
);
create table if not exists singeralbum(
singerid integer references singer(id),
albumid integer references album(id),
constraint pk primary key (singerid, albumid)
);
create table if not exists genre(
id serial primary key,
type varchar(20)
);
create table if not exists singergenre(
id serial primary key,
singerid integer references singer(id),
genreid integer references genre(id)
);
create  table if not exists collection(
id serial primary key,
name varchar(20) not null,
year date not null,
trackid INTEGER NOT NULL REFERENCES soundtrack(id)
);


