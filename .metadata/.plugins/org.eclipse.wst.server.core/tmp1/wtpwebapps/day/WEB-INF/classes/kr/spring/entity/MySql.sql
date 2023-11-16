CREATE TABLE DAYUSER(
USERNAME VARCHAR(100),
PASSWORD VARCHAR(100),
NICKNAME VARCHAR(100),
EMAIL VARCHAR(100),
AUTH VARCHAR(100),
PRIMARY KEY(USERNAME));

SELECT * FROM DAYBLOG;
select * from DAYUSER;



CREATE TABLE DAYGUEST (
    IDX INT PRIMARY KEY,
    NICKNAME VARCHAR(100) NOT NULL,
    VISIT_DAY DATE NOT NULL,
    CONTENT VARCHAR(2000));
  
select * from member;    

CREATE TABLE FOLLOW(
    IDX INT PRIMARY KEY,
    FOLLOW_ID VARCHAR(100) NOT NULL,
    FOLLOWING_ID VARCHAR(100) NOT NULL
);
CREATE TABLE DAYLIKE (
    LIKE_IDX INT PRIMARY KEY,
    BOARD_IDX INT NOT NULL,
    USERNAME VARCHAR(100) NOT NULL
);


CREATE TABLE DAYBLOG (
    USERNAME VARCHAR(100) PRIMARY KEY,
    BLOG_PROFILE VARCHAR(3000),
    BLOG_INTRO VARCHAR(2000) NOT NULL,
    BLOG_HEADER VARCHAR(3000),
    BLOG_BODY VARCHAR(3000),
    BLOG_SIDE VARCHAR(3000),
	BLOG_TITLE VARCHAR(500) NOT NULL
);


CREATE TABLE DAYSTICKER (
    IDX INT PRIMARY KEY,
    NICKNAME VARCHAR(100) NOT NULL,
    PHOTO VARCHAR(5000) NOT NULL
);
CREATE TABLE DAYBOARD (
    IDX INT PRIMARY KEY,
    DATE DATE NOT NULL,
    LIKE INT NOT NULL,
    CONTENT VARCHAR(5000) NOT NULL,
    NICKNAME VARCHAR(100) NOT NULL,
    CATEGORY VARCHAR(300) NOT NULL,
    DIARYNAME VARCHAR(300) NOT NULL
);
CREATE TABLE AUTH (
    ADMIN VARCHAR(100) NOT NULL,
    VIP VARCHAR(100) NOT NULL,
    USER VARCHAR(100) NOT NULL
);

insert into dayuser (username,password,nickname,email,auth) values('admin','1234','관리자','admin@admin.com','admin');

insert into dayblog (username, blog_profile, blog_intro, blog_header, blog_body, blog_side, blog_title) values('admin11','https://pbs.twimg.com/profile_images/1615738154333667331/NTng-9ke_400x400.jpg','안녕하세요', 'https://pbs.twimg.com/profile_images/1615738154333667331/NTng-9ke_400x400.jpg', '#0000ff', '#0000ff', '미리보기');

select * from DAYBLOG where username = 'admin11'
