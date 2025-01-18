show databases; 
create database ASP_login; 

use ASP_login;

create table login_creds (id int primary key, username varchar(40) not null, password varchar(40) not null); 

show tables; 

select * from login_creds;
 