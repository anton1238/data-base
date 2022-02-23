create table if not exists Жанр (
	id serial primary key,
	Название жанра text
);
create table if not exists ЖанрИсполнитель (
	id serial primary key,
	id жанра  integer references жанр(id),
	id исполнителя integer references исполнитель(id)
);
create table if not exists Исполнитель (
	id serial primary key,
	Псевдоним text 
);
create table if not exists ИсполнительАльбомы (
	id serial primary key,
	id исполнителя integer references исполнитель(id),
	id альбома  integer references альбом(id)
);
create table if not exists Альбомы (
	id serial  primary key,
	Название альбомов text,
	Год выпуска integer
);
create table if not exists Треки (
	id serial primary key,
	Название text,
	Продолжительность numeric,
	id альбомы integer references альбомы(id)
);
create table if not exists ТрекСборник (
	id serial primary key,
	id сборника integer references сборник(id),
	id трека integer references трек(id)
);
create table if not exists Сборник (
	id serial primary key,
	Название сборника text,
	Год выпуска integer
);