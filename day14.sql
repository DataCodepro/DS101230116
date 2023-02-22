create database pavemanacademy;
use pavemanacademy;
alter table studentpor rename to studentrecords;

select * from studentrecords;
alter table studentrecords add column studentID int not null auto_increment primary key first;
select * from studentrecords;
select studentID, sex,age,address,famsize ,traveltime from studentrecords where traveltime >= 3;
select studentID,sex,age,address,famsize,Pstatus,guardian from studentrecords where guardian = 'mother';
select distinct(age) from studentrecords;
select distinct age, traveltime from studentrecords;
select studentid,sex,age,address from studentrecords order by age;
select studentid,sex,age,address, Pstatus from studentrecords where Pstatus = 'T' order by sex;
select studentid,sex,age,address, Pstatus from studentrecords where Pstatus = 'T' order by sex desc;
select studentid,sex,age,address from studentrecords order by age desc;
select studentid, age, sex from studentrecords group by age;
select * from studentrecords;
select age,sum(G1) from studentrecords group by age;
select age,sum(G1) from studentrecords group by age order by age;

select age,avg(G1) from studentrecords group by age;
select age,avg(G1) from studentrecords group by age order by age;

select age,max(G1) from studentrecords group by age;
select age,max(G1) from studentrecords group by age order by age;

select age,min(G1) from studentrecords group by age;
select age,min(G1) from studentrecords group by age order by age;

select age,count(G1) from studentrecords group by age;
select age,count(G1) from studentrecords group by age order by age;
select age,traveltime,sum(G2) from studentrecords where traveltime >=3 group by age order by age;
# CONTROL FLOW PROGRAM
select studentid, sex, age, address,G1, if(G1 >= 15,'Yes','No') as outcome from studentrecords;
select studentid, sex, age, address,ifnull(Mjob,Fjob) as result from studentrecords;
select studentid, sex, age, address,Mjob,Fjob,nullif(Mjob,Fjob) as result from studentrecords;

use greatmanacademy;
select * from studentinformation;


