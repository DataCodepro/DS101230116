# EXERCISE
# CRAETE A DATABASE FOR SUPERMARKET WITH THE NAME PASTAMANSUPERMARKET
# IN THE DATABASE CREATE A FOR ELECTRONICS ITEMS AND ANOTHER TABLE FOR FOOD ITEMS
# BOTH TABLES SHOULD HAVE THE FOLLOWING COLUMNS NAME YOU WILL DETERMINE THE DATA TYPES AND EACH CONSTRAINTS
#ITEMID, ITEMNAME, ITEMDESCRIPTION, ITEMCONDITION, ITEMPRICE, ITEMQUANTITY, BRANCHLOCATION
create database pastamansupermarket;
use pastamansupermarket;

create table electronics(ITEMID int not null primary key, ITEMNAME text not null, 
ITEMDESCRIPTION text not null, ITEMCONDITION text not null, ITEMPRICE float not null, ITEMQUANTITY float not null, BRANCHLOCATION text not null);

create table fooditems(ITEMID int not null primary key, ITEMNAME text not null, 
ITEMDESCRIPTION text not null, ITEMCONDITION text not null, ITEMPRICE float not null, ITEMQUANTITY float not null, BRANCHLOCATION text not null);

select * from fooditems;
select foodid, itemname,itemcondition from fooditems;

insert into fooditems(FOODID,ITEMNAME,ITEMDESCRIPTION,ITEMCONDITION,ITEMPRICE,ITEMQUANTITY,BRANCHLOCATION) values
(1,'Godlen Penny','Indomine','Perishable',150,8500,'Wuse2 Abuja'),
(2,'Good Mama','Rice','Perishable',48000,1000,'Dutse Abuja'),
(3,'Gino','Big Can Tomato','Perishable',2000,500,'Dutse Abuja'),
(4,'Gino','Tomato Paste','Perishable',100,8000,'Bwari Abuja'),
(5,'Good Mama','Rice','Perishable',48000,250,'Wuse2 Abuja'),
(6,'Dangote','Sugar','Perishable',2500,1000,'Wuse2 Abuja'),
(7,'Good Mama','Rice','Perishable',48000,100,'Dawaki Abuja');

select * from fooditems;
update fooditems set itemquantity = 10000 where foodid = 4;

delete from fooditems where foodid = 2;

select * from fooditems where branchlocation = 'Dutse Abuja';
