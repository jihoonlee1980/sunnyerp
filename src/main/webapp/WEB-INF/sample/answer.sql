create table answer (pk number(5) primary key,num number(5),
nick varchar2(20),content varchar2(1000),pass varchar2(20),
ref smallint,re_step smallint,re_level smallint,
writeday date,
foreign key(num) references board(num));