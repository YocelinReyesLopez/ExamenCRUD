DROP DATABASE IF exists CRUD;
CREATE DATABASE CRUD;

USE CRUD;

DROP TABLE IF EXISTS `registro`;
CREATE TABLE registro(
    id bigint AUTO_INCREMENT,
    name VARCHAR (20)NOT NULL,
    surname VARCHAR(30)NOT NULL,
    curp VARCHAR (35) NOT NULL,
    birthday date,
    constraint primary_key primary key(id)
);    