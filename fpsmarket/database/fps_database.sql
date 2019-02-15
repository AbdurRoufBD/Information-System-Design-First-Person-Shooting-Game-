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

create table `fps_game`.`clan`(
`clan_id` int not null auto_increment,
`clan_name` varchar(100) not null,
`about` varchar(500),
`clan_level` int default 1,
`clan_photo` varchar(100),
`total_members` int default 1,
primary key(`clan_id`)
);

create table `fps_game`.`player`(
`player_id` int not null auto_increment,
`player_name` varchar(64) not null,
`ign` varchar(32) not null,
`e_mail` varchar(32) not null,
`level` int default 1,
`vc` float default 0,
`stat` int default 100,
`clan_id` int,
primary key(`player_id`),
foreign key(`clan_id`) references `fps_game`.clan(`clan_id`)
);

create table `fps_game`.`friends`(
`player_id1` int not null,
`player_id2` int not null,
`rel_count` int,
`content` varchar(32),
primary key(`player_id1`,`player_id2`)
);

create table `fps_game`.`clan_members`(
`clan_id` int not null,
`player_id` int not null,
`level` int default 1,
`membership_stat` varchar(32) not null,
`vc` float default 0,
primary key(`clan_id`,`player_id`),
foreign key(`clan_id`) references `fps_game`.clan(`clan_id`),
foreign key(`player_id`) references `fps_game`.player(`player_id`)
);

create table `fps_game`.`player_invertory`(
`player_id` int not null,
`item_id` int not null,
`exp_date`date not null,
primary key(`player_id`,`item_id`)
);

create table `fps_game`.`map`(
`map_id` int not null auto_increment,
`map_name` varchar(50) not null,
`map_type` varchar(50) not null,
`map` varchar(100) not null,
primary key(`map_id`)
);

create table `fps_game`.`game_modes`(
`mode_id` int not null,
`map_id` int not null,
`mode_name` varchar(32) not null,
`attributes` varchar(100) not null,
primary key(`mode_id`),
foreign key(`map_id`) references `fps_game`.map(`map_id`)
);

create table `fps_game`.`career`(
`match_id` varchar(50) not null,
`player_id` int not null,
`map_id` int not null,
`play_time` time not null,
`mode_id` int not null,
`kills` int default 0,
`heals` int default 0,
`points` float default 100.0,
`head_shots` int default 0,
`damage_dealt` float default 0.0,
primary key(`match_id`),
foreign key(`player_id`) references `fps_game`.player(`player_id`),
foreign key(`mode_id`) references `fps_game`.game_modes(`mode_id`)
);

#select * from fps_game.game_items;
insert into `fps_game`.item_catagory (item_catagory) values ("underware");
insert into `fps_game`.game_items (item_name,item_type,item_file) values ("jainga",1,"D://JaingaCollection");
