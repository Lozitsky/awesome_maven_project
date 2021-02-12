# mysql -u admin_db -p
create database if not exists awesome_maven_project;

# use awesome_project;
use awesome_maven_project;

create user if not exists 'admin_db'@'localhost' identified by 'password';
# grant all on awesome_project.* to 'admin_db'@'localhost';
grant all on awesome_maven_project.* to 'admin_db'@'localhost';

-- drop table if exists task;
create table if not exists task_
(
    id                 bigint not null auto_increment primary key,
    name               varchar(100) not null,
    description        varchar(1000),
    status             varchar(30),
    created_date       timestamp default current_timestamp(),
    last_modified_date timestamp default current_timestamp()
    );

insert into task_ VALUES (null, 'My first task', 'The description of my first task', 'TODO', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into task_ VALUES (null, 'My second task', 'The description of my second task', 'TODO', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);