-- 创建数据库
create database school;
use school;

-- 建表
-- 学生表：学生编号,学生姓名, 出生年月,学生性别
create table Student(sid varchar(10),sname nvarchar(10),sage datetime,ssex nvarchar(10));
insert into Student values('01' , N'赵雷' , '1990-01-01' , N'男');
insert into Student values('02' , N'钱电' , '1990-12-21' , N'男');
insert into Student values('03' , N'孙风' , '1990-05-20' , N'男');
insert into Student values('04' , N'李云' , '1990-08-06' , N'男');
insert into Student values('05' , N'周梅' , '1991-12-01' , N'女');
insert into Student values('06' , N'吴兰' , '1992-03-01' , N'女');
insert into Student values('07' , N'郑竹' , '1989-07-01' , N'女');
insert into Student values('08' , N'王菊' , '1990-01-20' , N'女');
-- 课程表：课程编号, 课程名称, 教师编号
create table Course(cid varchar(10),cname nvarchar(10),tid varchar(10));
insert into Course values('01' , N'语文' , '02');
insert into Course values('02' , N'数学' , '01');
insert into Course values('03' , N'英语' , '03');
-- 教师表：教师编号,教师姓名
create table Teacher(tid varchar(10),tname nvarchar(10));
insert into Teacher values('01' , N'张三');
insert into Teacher values('02' , N'李四');
insert into Teacher values('03' , N'王五');
-- 成绩表：学生编号,课程编号,分数
create table Score(sid varchar(10),cid varchar(10),score decimal(18,1));
insert into Score values('01' , '01' , 80);
insert into Score values('01' , '02' , 90);
insert into Score values('01' , '03' , 99);
insert into Score values('02' , '01' , 70);
insert into Score values('02' , '02' , 60);
insert into Score values('02' , '03' , 80);
insert into Score values('03' , '01' , 80);
insert into Score values('03' , '02' , 80);
insert into Score values('03' , '03' , 80);
insert into Score values('04' , '01' , 50);
insert into Score values('04' , '02' , 30);
insert into Score values('04' , '03' , 20);
insert into Score values('05' , '01' , 76);
insert into Score values('05' , '02' , 87);
insert into Score values('06' , '01' , 31);
insert into Score values('06' , '03' , 34);
insert into Score values('07' , '02' , 89);
insert into Score values('07' , '03' , 98);
create table Student_pivot (
sid varchar(10),sname nvarchar(10),sage datetime,ssex nvarchar(10), "语文" int, "数学" int,"英语" int);
insert into Student_pivot values('01' , N'赵雷' , '1990-01-01' , N'男', 80, 90, 99);
insert into Student_pivot values('02' , N'钱电' , '1990-12-21' , N'男', 70, 60, 80);
insert into Student_pivot values('03' , N'孙风' , '1990-05-20' , N'男', 80, 80, 80);
insert into Student_pivot values('04' , N'李云' , '1990-08-06' , N'男', 50, 30, 20);
insert into Student_pivot values('05' , N'周梅' , '1991-12-01' , N'女', 76, 87, null);
insert into Student_pivot values('06' , N'吴兰' , '1992-03-01' , N'女', 31, null, 34);
insert into Student_pivot values('07' , N'郑竹' , '1989-07-01' , N'女', null, 89, 98);
insert into Student_pivot values('08' , N'王菊' , '1990-01-20' , N'女', null,null,null);