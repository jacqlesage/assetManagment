# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table customer (
  id                            integer auto_increment not null,
  first_name                    varchar(255),
  last_name                     varchar(255),
  phone_number                  varchar(255),
  email                         varchar(255),
  password                      varchar(255),
  active                        integer not null,
  constraint pk_customer primary key (id)
);

create table customerhomeaddresstable (
  id                            integer auto_increment not null,
  address1                      varchar(255),
  address2                      varchar(255),
  city                          varchar(255),
  country                       varchar(255),
  post_code                     varchar(255),
  cus_email_reference           varchar(255),
  cus_number_reference          integer not null,
  constraint pk_customerhomeaddresstable primary key (id)
);

create table customerpostaladdresstable (
  id                            integer auto_increment not null,
  address1                      varchar(255),
  address2                      varchar(255),
  city                          varchar(255),
  country                       varchar(255),
  post_code                     varchar(255),
  cus_email_reference           varchar(255),
  cus_number_reference          integer not null,
  constraint pk_customerpostaladdresstable primary key (id)
);


# --- !Downs

drop table if exists customer;

drop table if exists customerhomeaddresstable;

drop table if exists customerpostaladdresstable;

