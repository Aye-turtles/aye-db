CREATE DATABASE IF NOT exists aye;
USE aye;

create table if not exists status
(
    id    int auto_increment,
    name  varchar(255) not null,
    value varchar(255) null,
    constraint status_id_uindex
        unique (id),
    constraint status_name_uindex
        unique (name)
);

alter table status
    add primary key (id);

create table if not exists user
(
    id       int auto_increment,
    username varchar(255) not null,
    name     varchar(255) not null,
    lastname varchar(255) not null,
    email    varchar(255) not null,
    constraint user_id_uindex
        unique (id)
);

alter table user
    add primary key (id);

create table if not exists nest
(
    id                int auto_increment,
    amount_eggs       int  not null,
    recollection_date date not null,
    status            int  null,
    hatching_date     date null,
    collector         int  not null
        primary key,
    constraint nido_id_uindex
        unique (id),
    constraint nest_status_id_fk
        foreign key (status) references status (id),
    constraint nido_user_id_fk
        foreign key (collector) references user (id)
);

create table if not exists nestlogs
(
    id          int auto_increment,
    id_nest     int      not null
        primary key,
    log_date    datetime not null,
    temperature double   not null,
    humidity    double   not null,
    constraint nest_log_id_uindex
        unique (id),
    constraint nest_log_nido_id_nest_fk
        foreign key (id_nest) references nest (id)
);

