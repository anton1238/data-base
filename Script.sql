create table if not exists ���� (
	id serial primary key,
	�������� ����� text
);
create table if not exists ��������������� (
	id serial primary key,
	id �����  integer references ����(id),
	id ����������� integer references �����������(id)
);
create table if not exists ����������� (
	id serial primary key,
	��������� text 
);
create table if not exists ������������������ (
	id serial primary key,
	id ����������� integer references �����������(id),
	id �������  integer references ������(id)
);
create table if not exists ������� (
	id serial  primary key,
	�������� �������� text,
	��� ������� integer
);
create table if not exists ����� (
	id serial primary key,
	�������� text,
	����������������� numeric,
	id ������� integer references �������(id)
);
create table if not exists ����������� (
	id serial primary key,
	id �������� integer references �������(id),
	id ����� integer references ����(id)
);
create table if not exists ������� (
	id serial primary key,
	�������� �������� text,
	��� ������� integer
);