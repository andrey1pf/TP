CREATE TABLE IF NOT EXISTS "_servicemans_old" (id integer primary key, surname text, name text, patronymic text, indexPost integer, country text, region text, area text, city text, street text, house integer, apartment integer, nationality text, DOB date, position text, rank text, salary integer);
CREATE TABLE IF NOT EXISTS "_ser_old"(id integer primary key, surname text, name text, patronymic text, indexPost integer, country text, region text, area text, city text, street text, house integer, apartment integer, nationality text, DOB text, position text, rank text, salary integer);
CREATE TABLE newSer(id integer primary key, surname text, name text, patronymic text, indexPost integer, country text, region text, area text, city text, street text, house integer, apartment integer, nationality text, DOB text, position text, rank text, salary integer);