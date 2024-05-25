-- create extension postgis

create table oras(
	fid serial primary key not null,
	geom geometry('Polygon', 4326),
	name varchar(50) not null,
	population int not null
);

create table zona_verde(
	fid serial primary key not null,
	geom geometry('Polygon', 4326),
	oras_fid int not null,
	foreign key (oras_fid) references oras(fid)
);

create table tip_zona_verde(
	fid serial primary key not null,
	tip varchar(255) not null,
	name varchar(255),
	area int,
	zona_verde_fid int not null,
	foreign key (zona_verde_fid) references zona_verde(fid)
);

create table mobilier_urban(
	fid serial primary key not null,
	geom geometry('Point', 4326),
	tip varchar(255) not null,
	stare varchar(255) not null,
	descriere varchar(255),
	tip_zona_verde_fid int not null,
	foreign key (tip_zona_verde_fid) references tip_zona_verde(fid)
);

create table sistem_irigatii(
	fid serial primary key not null,
	geom geometry('LineString', 4326),
	lungime int not null,
	tip_zona_verde_fid int unique not null,
	foreign key (tip_zona_verde_fid) references tip_zona_verde(fid)
);

create table vegetatie(
	fid serial primary key not null,
	geom geometry('Point', 4326),
	tip varchar(100) not null,
	specie varchar(255) not null,
	stare varchar(255) not null,
	diametru int
);

create table tip_zona_verde_vegetatie(
	id serial primary key not null,
	tip_zona_verde_fid int not null,
	vegetatie_fid int not null,
	foreign key (tip_zona_verde_fid) references tip_zona_verde(fid),
	foreign key (vegetatie_fid) references vegetatie(fid)
);

