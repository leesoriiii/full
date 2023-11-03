USE BBS;

drop table if exists USER;

create table USER ( 
     userID VARCHAR(20),
     userPassword VARCHAR(20),
     userName VARCHAR(20),
     userGender VARCHAR(20),
     userEmail VARCHAR(50),
     PRIMARY KEY (userID)

);

INSERT INTO USER VALUES('gildong', '1234', '홍길동', '남자', 'gildong@naver.com');
insert into USER values ('sori', '1234', '소리', '여자', 'sori@naver.com');
insert into USER values ('test', '1234', '테스트', '남', 'test@naver.com');

commit;

select * from USER;




drop table if exists BBS;

create table BBS ( 
     bbsID INT,
     bbsTitle VARCHAR(50),
     bbsDate DATETIME,
     bbsContent VARCHAR(2048),
     bbsAvailable INT,
     PRIMARY KEY(bbsID)

);


commit;

select * from USER;