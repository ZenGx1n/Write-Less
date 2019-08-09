DROP DATABASE
IF
	EXISTS write_less;

CREATE DATABASE write_less DEFAULT CHARACTER;

SET UTF8;

USE write_less;

/*==============================================================*/
/* 用户表表                                      */
/*==============================================================*/
CREATE TABLE `user` (
	`id` INT ( 2 ) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR ( 20 ) NOT NULL UNIQUE,
	`password` VARCHAR ( 20 ) NOT NULL,
	`gender` CHAR ( 2 ) DEFAULT NULL,
	`create_time` DATETIME DEFAULT NULL,
	`age` INT DEFAULT '0',
	`post` VARCHAR ( 20 ) DEFAULT NULL,
	`permission` INT ( 2 ) NOT NULL DEFAULT '2' COMMENT '0:超级管理员，1:管理员，3:普通用户',
	PRIMARY KEY ( `id` )
) ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARSET = UTF8;

/*==============================================================*/
/* 日志表                                      */
/*==============================================================*/
CREATE TABLE `log` (
	`opr_time` DATETIME NOT NULL,
	`type` VARCHAR ( 10 ) NOT NULL,
	`operator` VARCHAR ( 20 ) NOT NULL,
	`moudle` VARCHAR ( 20 ) NOT NULL,
	`operation` VARCHAR ( 20 ) NOT NULL,
	`result` VARCHAR ( 100 ) NOT NULL
) ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARSET = UTF8;

/*==============================================================*/
/* 留言表                                      */
/*==============================================================*/
CREATE TABLE `message` (
	`number` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT ( 2 ) NOT NULL,
	`create_time` DATETIME DEFAULT NULL,
	`last_edit_time` DATETIME DEFAULT NULL,
	`agree` INT DEFAULT '0',
	`oppose` INT DEFAULT '0',
	`status` INT(2) NOT NULL DEFAULT '0' COMMENT '0:审核中，1:通过，2:驳回',
	PRIMARY KEY ( `number` )
) ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARSET = UTF8;

ALTER TABLE `message` ADD CONSTRAINT `FK_Reference_1` FOREIGN KEY ( `user_id` ) REFERENCES `user` ( `id` )
ON DELETE RESTRICT ON UPDATE RESTRICT;