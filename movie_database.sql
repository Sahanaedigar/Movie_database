create database Movie1;
use Movie1;

create table actor(act_id varchar(20) primary key,act_name varchar(20),gender char(1));
insert into actor values('a1','Prabhas','m');
insert into actor values('a2','Ramcharn','m');
insert into actor values('a3','Puneeth','m');
insert into actor values('a4','Yash','m');


create table actress(actress_id varchar(20) primary key,actress_name varchar(20),gender char(1));
insert into actress values('s1','anushka_sharma','f');
insert into actress values('s2','tamanna','f');
insert into actress values('s3','ramya','f');
insert into actress values('s4','radika_pandith','f');


create table director (dir_id varchar(20) primary key,dir_name varchar(20),dir_phone bigint);
insert into director values('d1','rajmouli',123444555667);
insert into director values('d2','sampath_nandhi',12344455566);
insert into director values('d3','mahesh_babu',12344455567);
insert into director values('d4','santhosh',123444555687);

create table movies(mov_id varchar(20) primary key,mov_title varchar(20),mov_year int ,dir_name varchar(20),act_name varchar(20),actress_name varchar(20)
,constraint fkey1 foreign key (dir_id) references director(dir_id) on delete cascade,
constraint fkey2 foreign key (act_id) references actor(act_id) on delete cascade,constraint fkey3 foreign key (actress_id) references actress(actress_id) on delete cascade);
insert into movies values('m1','bahubali1',2018,'d1','a1','s1');
insert into movies values('m2','racha',2015,'d2','a2','s2);
insert into movies values('m3','aakash',2005,'d3','a3','s3');
insert into movies values('m4','ramachari',2017,'d4','a4','s4');


select m.mov_title from movies m ,director d where m.dir_id=d.dir_id and dir_name='rajmouli';
select m.mov_title from movies m ,director d where m.dir_id=d.dir_id and dir_name='sampath_nandhi';
select m.mov_title from movies m ,director d where m.dir_id=d.dir_id and dir_name='mahesh_babu';
select m.mov_title from movies m ,director d where m.dir_id=d.dir_id and dir_name='santhosh';




