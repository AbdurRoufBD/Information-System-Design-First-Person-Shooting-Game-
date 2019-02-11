create schema `fps_game`;

create table `fps_game`.`item_catagory`(
`item_type` int not null auto_increment,
`item_catagory` varchar(100) not null,
primary key(`item_type`)
);

create table `fps_game`.`game_items` (
`item_id` int not null auto_increment,
`item_name` varchar(64) not null,
`item_type` int not null,
`item_file` varchar(300) not null,
primary key(`item_id`),
foreign key(`item_type`) references `fps_game`.item_catagory(`item_type`) on delete cascade
);

create table `fps_game`.`game_items_price`(
`item_id` int not null,
`discount` float,
`exp_date` date,
`price` float not null,
primary key(`item_id`),
foreign key(`item_id`) references `fps_game`.game_items(`item_id`) on delete cascade
 );
 
 create table `fps_game`.`weapons`(
 `weapon_id` int not null auto_increment,
 `weapon name` varchar(64) not null,
 `weapon_file` varchar(300) not null,
 `damage` float not null,
 `effective_range` float not null,
 `bullet_drop` float not null,
 `damage_reduction` float,
 `attatchments` varchar(100),
 `weapon type` varchar(32) not null,
 primary key(`weapon_id`)
 );	

create table `fps_game`.`weapon_skins`(
`weapon_skin_id` int not null auto_increment,
`weapon_id` int not null,
`item_id` int not null,
primary key(`weapon_skin_id`),
foreign key(`weapon_id`) references `fps_game`.weapons(`weapon_id`) on delete cascade,
foreign key(`item_id`) references `fps_game`.game_items(`item_id`) on delete cascade
);
