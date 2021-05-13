create table peopleinfo(
	name varchar(256),
	birthday varchar(16),
	occupation varchar(512),
	primary key (name)
);

grant all on peopleinfo to postgres;
