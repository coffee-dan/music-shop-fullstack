-- DDL Script
-- This script creates the entire database schema. This includes the tables
-- with their constraints, views, indexes, and other objects where necessary.
 

CREATE TABLE F18_17_EMPLOYEE
(
    employee_id			int			not null,
	employee_type		char(13)	not null,
	constraint employee_pk primary key (employee_id)
);

CREATE TABLE F18_17_STORE_MANAGER
(
	manager_id			int			not null,
    name				varchar(25)	not null,
    constraint manager_fk_employee foreign key (manager_id) references F18_17_EMPLOYEE(employee_id)
	    on delete cascade
);

CREATE TABLE F18_17_STORE
(
    store_id			varchar(13)			not null,
	manager				int    		not null,
    address				char(75)   	not null,
    weekday_hours		char(20)	not null,
	weekend_hours		char(20)	not null,
    constraint store_pk primary key (store_id),
    constraint store_fk_employee foreign key (manager) references F18_17_EMPLOYEE(employee_id)
	    on delete cascade
);

CREATE TABLE F18_17_ALBUM
(
    album_id			int			not null,
    title				char(50)	not null,
    main_artist			char(30)	not null,
    feat_artist			char(30),
    album_type			char(9)    	not null,
    year				int			not null,
    genre				char(25)	not null,
    sell_price			decimal(2)  not null,
    buy_price			decimal(2)  not null,
    constraint album_pk primary key (album_id)
);

CREATE TABLE F18_17_HAS
(
    store_id			varchar(13)			not null,
	album_id			int			not null,
	constraint has_fk_store foreign key (store_id) references F18_17_STORE(store_id)
	    on delete cascade,
    constraint has_fk_album foreign key (album_id) references F18_17_ALBUM(album_id)
	    on delete cascade,
    constraint has_pk primary key (store_id, album_id)
);

CREATE TABLE F18_17_CLERK
(
    clerk_id			int			not null,
	name				varchar(25) not null,
	store_id			varchar(13)     	not null,
	constraint clerk_fk_employee foreign key (clerk_id) references F18_17_EMPLOYEE(employee_id)
	    on delete cascade,
    constraint clerk_fk_store foreign key (store_id) references F18_17_STORE(store_id)
        on delete cascade
);

CREATE TABLE F18_17_HOURS_WORKED
(
    week_start			date		not null,
	num_of_hours		char(8),
	clerk_id			int			not null,
    constraint hours_fk_employee foreign key (clerk_id) references F18_17_EMPLOYEE(employee_id)
	    on delete cascade
);

CREATE TABLE F18_17_EMPLOYEE_CONTACT_INFO
(
    employee_id 		int			not null,
	address				char(75)	not null,
	email_addr			char(50)	not null,
	phone_num			char(15)	not null,
	constraint emp_cont_pk primary key (address, email_addr, phone_num),
	constraint emp_cont_fk_employee foreign key (employee_id) references F18_17_EMPLOYEE(employee_id)
	    on delete cascade
);

CREATE TABLE F18_17_CUSTOMER
(
    customer_id			int			not null,
	customer_type		char(20)	not null,
	constraint customer_pk primary key (customer_id)
);

CREATE TABLE F18_17_SUPPLIER
(
    supplier_id			int			not null,
	name				varchar(45)	not null,
	constraint supplier_fk_customer foreign key (supplier_id) references F18_17_CUSTOMER(customer_id)
	    on delete cascade
);

CREATE TABLE F18_17_INDIVIDUAL
(
    individual_id		int			not null,
	name				varchar(25) not null,
	fav_genre			char(25),
	constraint individual_fk_customer foreign key (individual_id) references F18_17_CUSTOMER(customer_id)
	    on delete cascade
);

CREATE TABLE F18_17_CUSTOMER_CONTACT_INFO
(
    customer_id			int			not null,
	address				char(75)	not null,
	email_addr			char(50)	not null,
	phone_num			char(15)	not null,
	constraint cus_cont_pk primary key (address, email_addr, phone_num),
	constraint cus_cont_fk_customer foreign key (customer_id) references F18_17_CUSTOMER(customer_id)
	    on delete cascade
);

CREATE TABLE F18_17_BUYS_FROM
(
    customer_id			int			not null,
	store_id			varchar(13)			not null,
	album_id			int			not null,
	buy_date			date		not null,
	constraint buy_fk_customer foreign key (customer_id) references F18_17_CUSTOMER(customer_id)
	    on delete cascade,
	constraint buy_fk_store foreign key (store_id) references F18_17_STORE(store_id)
	    on delete cascade,
	constraint buy_fk_album foreign key (album_id) references F18_17_ALBUM(album_id)
	    on delete cascade
);

CREATE TABLE F18_17_SELLS_TO
(
    customer_id			int			not null,
	store_id			varchar(13)	not null,
	album_id			int			not null,
	sell_date			date		not null,
	constraint sell_fk_customer foreign key (customer_id) references F18_17_CUSTOMER(customer_id)
	    on delete cascade,
	constraint sell_fk_store foreign key (store_id) references F18_17_STORE(store_id)
	    on delete cascade,
	constraint sell_fk_album foreign key (album_id) references F18_17_ALBUM(album_id)
	    on delete cascade
);
