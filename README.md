# JSPBBS

MYSQL
데이터 베이스 이름 : bbs

테이블 1 : user
create table user(
	userID varchar(20),
    userPassword varchar(20),
    userName varchar(20),
    userGender varchar(20),
    userEmail varchar(50),
    primary key (userID)
);

테이블 2 : bbs
create table BBS(
	bbsID int,
    bbsTitle varchar(50),
    userID varchar(20),
    bbsDate datetime,
    bbsContent varchar(2048),
    bbsAvailable int,
    primary key(bbsID)
);
