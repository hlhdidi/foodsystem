create database FoodSystem;
use FoodSystem;
create table dinnerTable(
	id varchar(40) primary key,
	tableName varchar(20),
	orderStatus int default 0,
	orderTime Date
);
create table foodGroup(
	id varchar(40) primary key,
	name varchar(20)
);
create table food(
	id varchar(40) primary key,
	name varchar(20),
	foodGroupId varchar(40),
	price float,
	mprice float,
	path varchar(40),
	constraint food_id_fk foreign key(foodGroupId) references foodGroup(id)
);
create table orders(
	id varchar(40) primary key,
	orderNum varchar(20),
	dinnerTableId varchar(40),
	orderTime Date,
	totalMoney float,
	orderStatus int default 0,
	constraint order_id_fk foreign key(dinnerTableId) references dinnerTable(id)
);
create table orderItem(
	id varchar(40) primary key,
	orderId varchar(40),
	foodId varchar(40),
	amount int,
	constraint orderItem1_id_fk foreign key(orderId) references orders(id),
	constraint orderItem2_id_fk foreign key(foodId) references food(id)
);
alter table food add description varchar(100);