create table users (
  id                    bigserial,
  username              varchar(30) not null unique,
  password              varchar(80) not null,
  email                 varchar(50) unique,
  primary key (id)
);

create table roles (
  id                    serial,
  name                  varchar(50) not null,
  primary key (id)
);

CREATE TABLE users_roles (
  user_id               bigint not null,
  role_id               int not null,
  primary key (user_id, role_id),
  foreign key (user_id) references users (id),
  foreign key (role_id) references roles (id)
);

CREATE TABLE authorities (
  id                    bigserial,
  name                  varchar(30) not null,
  primary key (id)
);

CREATE TABLE roles_authorities (
  role_id               bigint not null,
  authorities_id        int not bull,
  primary key (role_id, authorities_id),
  foreign key (role_id) references roles (id),
  foreign key (authorities_id) references authorities (id)
);

insert into roles (name)
values
('ROLE_USER'), ('ROLE_ADMIN');

insert into users (username, password, email)
values
('user', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i', 'user@gmail.com');

insert into users_roles (user_id, role_id)
values
(1, 1),
(1, 2);

insert into authorities (name) values (
('CREATE_PRODUCT'),
('DELETE_PRODUCT'),
('UPDATE_PRODUCT'),
('READ_MESSAGE'),
('SEND_COMMENT')
);

insert into roles_authorities (role_id, authorities_id) values (
(2, 1)
(2, 2)
(2, 3)
(1, 4)
);