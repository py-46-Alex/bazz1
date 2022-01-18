create user meloman1 with password 'meloman1';
create database muzofond;
alter database muzofond owner to meloman1;
create table if not exists artist (id serial primary key, name varchar(50) unique, band varchar(50) unique, genre varchar(50));
create table if not exists albums (album_id serial primary key, artist_id integer references artist(id), album_name varchar(20), year integer);
create table if not exists track_info (track_id serial primary key, track_name varchar(60), time_of_track varchar(15), album_in_id integer references albums(album_id));