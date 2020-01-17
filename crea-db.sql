DROP DATABASE IF EXISTS ajedrez;
-- REVOKE ALL PRIVILEGES , GRANT OPTION ON ajedrez.* FROM tomcat@localhost;
-- delete from mysql.db where user = 'tomcat';
-- DROP USER tomcat@localhost;
FLUSH PRIVILEGES;
CREATE DATABASE ajedrez;




CREATE USER IF NOT EXISTS tomcat@localhost IDENTIFIED BY 'tomcat';
GRANT ALL PRIVILEGES ON ajedrez.* TO 'tomcat'@'localhost';
FLUSH PRIVILEGES;

USE ajedrez ;

CREATE TABLE figuras (
 _idfigura INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(255) NOT NULL,
 peso  INT NOT NULL,
 imagen VARCHAR(255) NOT NULL,
 PRIMARY KEY (_idfigura));

INSERT INTO figuras VALUES (NULL, "peon",1,"peon.png");
INSERT INTO figuras VALUES (NULL, "caballo",2,"caballo.png");
INSERT INTO figuras VALUES (NULL, "alfil",2,"alfil.png");
INSERT INTO figuras VALUES (NULL, "torre",3,"torre.png");
INSERT INTO figuras VALUES (NULL, "reina",4,"reina.png");
INSERT INTO figuras VALUES (NULL, "rey",10,"rey.png");

