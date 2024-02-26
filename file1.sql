CREATE DATABASE campusx;
CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL

);

INSERT INTO campusx.users(user_id,name,email,password)
VALUES (NULL,"Bilal","bilal@gmail.com","2321");

INSERT INTO campusx.users(name,email)
VALUES ("sufi","sf@gmail.com");

INSERT INTO campusx.users(password,name,email,user_id)
VALUES ("21","lal","lal@gmail.com",NULL);

INSERT INTO campusx.users VALUES
(NULL,"khan","khan@gmail.com","241"),
(NULL,"syed","syed@gmail.com","671"),
(NULL,"aliza","ali@gmail.com","251"),
(NULL,"mohd","mohd@gmail.com","961")