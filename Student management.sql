CREATE TABLE student(
     stu_id INT PRIMARY KEY,
     stu_name VARCHAR(30),
     stu_ph_no INT ,
     stu_email VARCHAR(30) ,
     stu_dob DATE 
     
);

CREATE TABLE books (
     book_id INT PRIMARY KEY , 
     book_name VARCHAR(30),
     athr_name VARCHAR(30),
     book_brn_id INT,
     book_price INT
     
);

CREATE TABLE branch (
     brn_id INT PRIMARY KEY,
     brn_name VARCHAR(20),
     brn_ctg VARCHAR(20)
);

CREATE TABLE user (
     usr_id INT PRIMARY KEY,
     usr_name VARCHAR(30),
     usr_ph_no INT,
     usr_email VARCHAR(30)
);

CREATE TABLE issues (
     isu_id  INT UNIQUE,
     isu_date DATE , 
     isu_book_id INT ,
     isu_stu_id INT 
     
);

CREATE TABLE login (
     lgn_id INT UNIQUE NOT NULL, 
     lgn_usr_id INT,
     lgn_usr_name VARCHAR(20),
     lgn_pass VARCHAR(18),
     lgn_role_id INT 
);

CREATE TABLE roles (
     rol_id INT PRIMARY KEY, 
     rol_name VARCHAR(15),
     rol_lvl VARCHAR(15)
);

CREATE TABLE permission (
     pr_id INT UNIQUE NOT NULL, 
     pr_name VARCHAR(15),
     pr_rol_id INT
     
);
ALTER TABLE issues
ADD FOREIGN KEY(isu_book_id)
REFERENCES books(book_id)
ON DELETE CASCADE;

ALTER TABLE issues
ADD FOREIGN KEY(isu_stu_id)
REFERENCES student(stu_id)
ON DELETE CASCADE;

ALTER TABLE permission
ADD FOREIGN KEY(pr_rol_id)
REFERENCES roles(rol_id)
ON DELETE CASCADE; 

ALTER TABLE login
ADD FOREIGN KEY (lgn_role_id)
REFERENCES roles(rol_id)
ON DELETE SET NULL;

ALTER TABLE login 
ADD FOREIGN KEY (lgn_usr_id)
REFERENCES user(usr_id)
ON DELETE CASCADE;

ALTER TABLE books 
ADD FOREIGN KEY (book_brn_id)
REFERENCES branch(brn_id)
ON DELETE SET NULL; 

-- Inserting values

-- user table values 
INSERT INTO user VALUES(101,'Jaden Clark',4836792,'Jaden342@gmail.com');
INSERT INTO user VALUES(102,'Olive Yew',6385647,'olivia7758l@gmail.com');
INSERT INTO user VALUES(103,'Peg Legge',9364753,'peghary45@gmail.com');
INSERT INTO user VALUES(104,'Anne Ortha',9361735,'anneA783@gmail.com');
INSERT INTO user VALUES(105,'Ruby Bartlett',9163728,'yiktLaura78@gmail.com');
INSERT INTO user VALUES(106,'May Day',3548679,'Davis889@gmail.com');
INSERT INTO user VALUES(107,'Tiffany Case',7548124,'Tiffanycase34@gmail.com');
INSERT INTO user VALUES(108,'Vilma Jarvi',8574963,'mygmailVimla@gmail.com');
INSERT INTO user VALUES(109,'Regan Rosen',3748254,'Rosenthybe54@gmail.com');
INSERT INTO user VALUES(110,'Laura Charling',8354610,'Laura6835CH@gmail.com');


-- branch table values  
INSERT INTO branch VALUES(1001,'Heisengton','Science');
INSERT INTO branch VALUES(1002,'JumbleNumbers','Mathematics');
INSERT INTO branch VALUES(1003,'HelloWorld','IT');


-- roles table values
INSERT INTO roles VALUES(10101,'DB_Admin',4);
INSERT INTO roles VALUES(10102,'Teacher',3);
INSERT INTO roles VALUES(10103,'Guest',2);
INSERT INTO roles VALUES(10104,'Viewer',1);


-- permission tables values
INSERT INTO permission VALUES(151,'Total Control',NUll);
INSERT INTO permission VALUES(152,'Partial Control',NULL);
INSERT INTO permission VALUES(153,'No Alterations',NULL); 
INSERT INTO permission VALUES(154,'Limited View',NULL);

UPDATE permission SET pr_rol_id = 10101 where pr_id = 151;
UPDATE permission SET pr_rol_id = 10102 where pr_id = 152;
UPDATE permission SET pr_rol_id = 10103 where pr_id = 153;
UPDATE permission SET pr_rol_id = 10104 where pr_id = 154;
UPDATE permission SET pr_rol_id = 10105 where pr_id = 155;



-- login tables values 
INSERT INTO login VALUES(711,NULL,'Jaden Clark',4836792,NULL); 
INSERT INTO login VALUES(712,NULL,'Olive Yew',6385647,NULL);
INSERT INTO login VALUES(713,NULL,'Peg Legge',9364753,NULL);
INSERT INTO login VALUES(714,NULL,'Anne Ortha',9361735,NULL);
INSERT INTO login VALUES(715,NULL,'Ruby Bartlett',9163728,NULL);
INSERT INTO login VALUES(716,NULL,'May Day',3548679,NULL);
INSERT INTO login VALUES(717,NULL,'Tiffany Case',7548124,NULL);
INSERT INTO login VALUES(718,NULL,'Vilma Jarvi',8574963,NULL);
INSERT INTO login VALUES(719,NULL,'Regan Rosen',3748254,NULL);
INSERT INTO login VALUES(720,NULL,'Laura Charling',8354610,NULL);


UPDATE login SET lgn_usr_id = 101 where lgn_id = 711;
UPDATE login SET lgn_usr_id = 102 where lgn_id = 712;
UPDATE login SET lgn_usr_id = 103 where lgn_id = 713;
UPDATE login SET lgn_usr_id = 104 where lgn_id = 714;
UPDATE login SET lgn_usr_id = 105 where lgn_id = 715;
UPDATE login SET lgn_usr_id = 106 where lgn_id = 716;
UPDATE login SET lgn_usr_id = 107 where lgn_id = 717;
UPDATE login SET lgn_usr_id = 108 where lgn_id = 718;
UPDATE login SET lgn_usr_id = 109 where lgn_id = 719;
UPDATE login SET lgn_usr_id = 110 where lgn_id = 720;

UPDATE login SET lgn_role_id = 10101 WHERE lgn_id = 712;
UPDATE login SET lgn_role_id = 10102 WHERE lgn_id = 717; 
UPDATE login SET lgn_role_id = 10103 WHERE lgn_id = 718; 
UPDATE login SET lgn_role_id = 10103 WHERE lgn_id = 714; 
UPDATE login SET lgn_role_id = 10102 WHERE lgn_id = 713; 
UPDATE login SET lgn_role_id = 10103 WHERE lgn_id = 716; 
UPDATE login SET lgn_role_id = 10103 WHERE lgn_id = 719; 
UPDATE login SET lgn_role_id = 10103 WHERE lgn_id = 715; 
UPDATE login SET lgn_role_id = 10102 WHERE lgn_id = 711; 
UPDATE login SET lgn_role_id = 10102 WHERE lgn_id = 720; 





-- student table values 

INSERT INTO student VALUES(911,'Bennett Johns',7394658,'Bennetttt6748@gmail.com','1994-09-03');
INSERT INTO student VALUES(912,'Immanuel Collier',5936827,'collierIma674@gmail.com','1993-05-08');
INSERT INTO student VALUES(913,'Dayton Luettgen',9564836,'LueDay3841@gmail.com','1998-07-13');
INSERT INTO student VALUES(914,'Courtney Reinger',8375663,'Reignthe43@gmail.com','2000-05-07');
INSERT INTO student VALUES(915,'Retta Hammes',6492657,'RettaSamuela45@gmail.com','1998-02-03');
INSERT INTO student VALUES(916,'Monte Haley',08573543,'Monteray564@gmail.com','1999-07-21');
INSERT INTO student VALUES(917,'Ryann Franecki',01637429,'ryanben786654@gmail.com','2000-05-08');
INSERT INTO student VALUES(918,'Shayne Denesik',5471257,'uthSha4@gmail.com','2001-11-05');
INSERT INTO student VALUES(919,'Skylar Grady',9687452,'Skylaryou5t@gmail.com','1997-09-19');
INSERT INTO student VALUES(920,'Idell Franecki',7365841,'itsmeIdeLL4@gmail.com','1999-02-01');



-- books table values 

INSERT INTO books VALUES(11,'Basics Of Science','George.c',NULL,455);
INSERT INTO books VALUES(12,'Basics Of Maths','Hadhway Rome',NULL,657);
INSERT INTO books VALUES(13,'Algebra 101','Katty Holmes',NULL,345);
INSERT INTO books VALUES(14,'Stars And Moons','Marty & Josh',NULL,999);
INSERT INTO books VALUES(15,'C++ All In One','Jason.y',NULL,867);
INSERT INTO books VALUES(16,'Python For DS','Jose.Port',NULL,567);

UPDATE books SET book_brn_id = 1001 WHERE book_id = 11;
UPDATE books SET book_brn_id = 1001 WHERE book_id = 14;
UPDATE books SET book_brn_id = 1002 WHERE book_id = 12;
UPDATE books SET book_brn_id = 1002 WHERE book_id = 13;
UPDATE books SET book_brn_id = 1003 WHERE book_id = 15;
UPDATE books SET book_brn_id = 1003 WHERE book_id = 16;


-- issues table values 
INSERT INTO issues VALUES(001,'2021-11-13',NULL,NULL);
INSERT INTO issues VALUES(002,'2021-12-04',NULL,NULL);
INSERT INTO issues VALUES(003,'2022-01-18',NULL,NULL);
INSERT INTO issues VALUES(004,'2022-01-2',NULL,NULL);
INSERT INTO issues VALUES(005,'2021-09-26',NULL,NULL);

UPDATE issues SET isu_book_id = 12 WHERE isu_id = 001; 
UPDATE issues SET isu_book_id = 16 WHERE isu_id = 002; 
UPDATE issues SET isu_book_id = 11 WHERE isu_id = 003; 
UPDATE issues SET isu_book_id = 15 WHERE isu_id = 004; 
UPDATE issues SET isu_book_id = 13 WHERE isu_id = 005; 

UPDATE issues SET isu_stu_id = 913 WHERE isu_id = 001; 
UPDATE issues SET isu_stu_id = 917 WHERE isu_id = 002; 
UPDATE issues SET isu_stu_id = 915 WHERE isu_id = 003; 
UPDATE issues SET isu_stu_id = 911 WHERE isu_id = 004; 
UPDATE issues SET isu_stu_id = 919 WHERE isu_id = 005; 