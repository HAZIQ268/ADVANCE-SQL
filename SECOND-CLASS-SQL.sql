create database f1;
use f1;

create table student(
id int primary key,
name varchar (10),
age int,
marks int,
grade varchar(3),
city varchar(10)
);

select * from student;

insert into student(id ,name, age, marks,grade,city) values
(101,"alex",25,65,"B","karachi"),
(102,"jack",30,95,"A+1","lahore"),
(103,"joy",36,51,"C","islamabad"),
(104,"angry",42,85,"A","attock"),
(105,"firey",55,40,"D","multan");

select * from student;
-- CLAUSING -*- 
select * from student where id=105;
select * from student where age=25;
select * from student where city in("karachi","lahore");
select * from student where age between 25 and 42;
-- OR CONDITION MAI AIK BHE CONDITION TRUE HOGY TO ANSWER TRUE -*-  
select * from student where marks<=51 or grade="A+1";
select * from student where name="angry" or age=25;
-- AND CODITION MAI DONO CONDITION KA TRUE HONA ZAROORY HAI -*- 
select * from student where marks<=51 and grade="C";
select * from student where name="angry" and age=42;

-- Distinct Means (NO REPEAT) -*-

select * from student;
select distinct city from student;
select distinct name from student;
select distinct age from student;
select distinct marks from student;
select distinct grade from student;

-- AGREGRATE FUNCTIONS -*-
select * from student;
select min(marks) from student;
select max(marks) from student;
select min(age) from student;
select max(age) from student;
-- saaray name mai kisis bhe name ka pehla word agr abcd k ending word hoga saro mein sy to wo MAX() hai etc zahid -*-
select max(name) from student;
-- saaray name mai kisis bhe name ka pehla word agr abcd k starting word hoga saro mein sy to wo MIN() hai etc Amir -*-
select min(name) from student;
-- count krna ho -*-
select count(city) from student;
-- average find krne ho -*-
select avg(marks) from student;
select avg(age) from student;

-- UPDATE QUERY -*-
-- first conmmand ko active krna zaroory hai -*- 
set sql_safe_updates=0;
select * from student;
update student set marks=70 where id=105;
update student set grade="B" where id=105;

