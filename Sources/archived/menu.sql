create table s$menu (
   id serial not null primary key,
   descri varchar(150) not null unique,
   parent integer,
   form varchar(50),
   recno serial not null unique );

create index idx_s$menu_from on menu(form);

alter table s$menu add constraint uk_s$menu unique (parent, form);

create table s$forms_menu (
   session_ varchar(60),
   form varchar(50)
);

create table s$users (
   username varchar(20) not null primary key,
   password varchar(20) not null,
   name varchar(40) not null,
   active boolean not null default true,
   admin boolean not null default false,
   recno serial not null unique
);