create database db_hr;
use db_hr;
系统用户
create table hr_user(
	id int(11) primary key not null auto_increment,
	username varchar(50) not null,
	password varchar(50) not null,
	name varchar(50) not null,
	sex char(1) default '1',
	birthday date not null,
	createtime datetime not null,
	isadmin char(1) default '0',
	email varchar(50) not null,
	content text
);
insert into hr_user values(1,'admin','111','张三','1','1975-08-21','2015-01-01','1','254866196@qq.com','超级管理员');
insert into hr_user values(2,'jzwx','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(3,'jzwx1','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(4,'jzwx2','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(5,'jzwx3','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(6,'jzwx4','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(7,'jzwx5','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(8,'jzwx6','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(9,'jzwx7','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(10,'jzwx8','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(11,'jzwx9','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(12,'jzwx10','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(13,'jzwx11','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(14,'jzwx12','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(15,'jzwx13','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(16,'jzwx14','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(17,'jzwx15','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(18,'jzwx16','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(19,'jzwx17','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(20,'jzwx18','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(21,'jzwx19','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(22,'jzwx20','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(23,'jzwx21','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(24,'jzwx22','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(25,'jzwx23','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(26,'jzwx24','222','李四','0','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(27,'jzwx25','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(28,'jzwx26','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(29,'jzwx27','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(30,'jzwx28','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');
insert into hr_user values(31,'jzwx29','222','李四','1','1975-08-21','2015-01-01','0','254866196@qq.com','管理员');

毕业学校
create table hr_school(
	id int(11) primary key not null auto_increment,
	name varchar(50) not null,
	class varchar(50) not null,
	content text
);
编号 名称 所属类别 简述 操作
insert into hr_school values(1,'长春大学','本科','学校是211学校');
insert into hr_school values(2,'吉林大学','本科','学校是211学校');


部门管理
create table hr_dept(
	id int(11) primary key not null auto_increment,
	did int(11) not null,
	dname varchar(50) not null,
	lead varchar(50) not null,
	content text 
);

insert into hr_dept values(1,1001,'人事部','张三','管理人事');
insert into hr_dept values(2,1002,'营销部','张三','提高公司销售量');
insert into hr_dept values(3,1003,'研发部','张三','为公司开发新产品');
insert into hr_dept values(4,1004,'研发部','张三','为公司开发新产品');
insert into hr_dept values(5,1005,'研发部','张三','为公司开发新产品');
insert into hr_dept values(6,1006,'研发部','张三','为公司开发新产品');
insert into hr_dept values(7,1007,'研发部','张三','为公司开发新产品');
insert into hr_dept values(8,1008,'研发部','张三','为公司开发新产品');
insert into hr_dept values(9,1009,'研发部','张三','为公司开发新产品');
insert into hr_dept values(10,1010,'研发部','张三','为公司开发新产品');
insert into hr_dept values(11,1011,'研发部','张三','为公司开发新产品');
insert into hr_dept values(12,1012,'研发部','张三','为公司开发新产品');
insert into hr_dept values(13,1013,'研发部','张三','为公司开发新产品');
insert into hr_dept values(14,1014,'研发部','张三','为公司开发新产品');
insert into hr_dept values(15,1015,'研发部','张三','为公司开发新产品');
insert into hr_dept values(16,1016,'研发部','张三','为公司开发新产品');
insert into hr_dept values(17,1017,'研发部','张三','为公司开发新产品');
insert into hr_dept values(18,1018,'研发部','张三','为公司开发新产品');
insert into hr_dept values(19,1019,'研发部','张三','为公司开发新产品');
insert into hr_dept values(20,1020,'研发部','张三','为公司开发新产品');
insert into hr_dept values(21,1021,'研发部','张三','为公司开发新产品');
insert into hr_dept values(22,1022,'研发部','张三','为公司开发新产品');
insert into hr_dept values(23,1023,'研发部','张三','为公司开发新产品');

岗位管理
create table hr_job(
	id int(11) primary key not null auto_increment,
	jid int(11) not null,
	jname varchar(50) not null,
	jlead varchar(50) not null,
	dname varchar(50) not null,
	person int(11) not null,
	content text 
);

insert into hr_job values(1,2001,'人事经理','张三','人事部',2,'管理人事');
insert into hr_job values(2,2002,'人事助理','张三1','财务部',2,'管理人事');
insert into hr_job values(3,2003,'文员','张三2','人事部',2,'管理人事');
insert into hr_job values(4,2003,'人事经理','张三3','采购部',2,'管理人事');
insert into hr_job values(5,2004,'人事经理','张三4','人事部',2,'管理人事');
insert into hr_job values(6,2005,'人事经理','张三5','采购部',2,'管理人事');
insert into hr_job values(7,2006,'人事经理','张三6','人事部',2,'管理人事');
insert into hr_job values(8,2007,'人事经理','张三7','人事部',2,'管理人事');
insert into hr_job values(9,2008,'人事经理','张三8','财务部',2,'管理人事');
insert into hr_job values(10,2009,'人事经理','张三9','人事部',2,'管理人事');
insert into hr_job values(11,2010,'人事经理','张三00','人事部',2,'管理人事');
insert into hr_job values(12,2011,'人事经理','张三11','财务部',2,'管理人事');
insert into hr_job values(13,2012,'人事经理','张三111','采购部',2,'管理人事');
insert into hr_job values(14,2013,'总账会计','张三12','人事部',2,'管理人事');
insert into hr_job values(15,2014,'人事经理','张三123','行政支援部',2,'管理人事');
insert into hr_job values(16,2015,'总账会计','张三33','人事部',2,'管理人事');
insert into hr_job values(17,2016,'人事经理','张三44','财务部',2,'管理人事');
insert into hr_job values(18,2017,'人事经理','张三55','行政支援部',2,'管理人事');
insert into hr_job values(19,2018,'人事经理','张三66','人事部',2,'管理人事');
insert into hr_job values(20,2019,'总账会计','张三77','行政支援部',2,'管理人事');
insert into hr_job values(21,2020,'人事经理','张三99','人事部',2,'管理人事');
insert into hr_job values(22,2021,'财务总监','张三778','行政支援部',2,'管理人事');
insert into hr_job values(23,2022,'人事经理','张三114','行政支援部',2,'管理人事');
insert into hr_job values(24,2023,'财务总监','张三76','行政支援部',2,'管理人事');
insert into hr_job values(25,2024,'人事经理','张三85','人事部',2,'管理人事');

职称管理
create table hr_title(
	id int(11) primary key not null auto_increment,
	tid int(11) not null,
	tname varchar(50) not null,
	jname varchar(50) not null,
	content text
);

insert into hr_title values(1,3001,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(2,3002,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(3,3003,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(4,3004,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(5,3005,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(6,3006,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(7,3007,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(8,3008,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(9,3009,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(10,3010,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(11,3011,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(12,3012,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(13,3013,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(14,3014,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(15,3015,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(16,3016,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(17,3017,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(18,3018,'高级会计师','营销部','会计师的更高认证');
insert into hr_title values(19,3019,'高级会计师','营销部','会计师的更高认证');

薪金管理
create table hr_stipend(
  id int(11) primary key NOT NULL auto_increment,
  sid int(11) not null,
  name varchar(50) NOT NULL,
  basic float default NULL,
  eat float default NULL,
  house float default NULL,
  duty float default NULL,
  scot float default NULL,
  punishment float default NULL,
  other float default NULL,
  granttime date default NULL,
  totalize float default NULL
);
薪金信息表
序号 员工编号 员工姓名 基本薪金 饭补 房补 全勤补 赋税 额外补助 罚款 发放时间 总计

insert into hr_stipend values (1,130300,'张敏',1111,300,300,300,200,0,600,'2009-02-03',2411);
insert into hr_stipend values (2,130301,'张敏',1111,300,300,300,200,0,600,'2009-02-03',2411);
insert into hr_stipend values (3,130302,'李明',2523,300,300,300,200,100,200,'2009-02-03',3323);
insert into hr_stipend values (4,130303,'徐翔',2800,300,300,200,200,200,200,'2009-02-03',3400);
insert into hr_stipend values (5,130304,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (6,130306,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (7,130305,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (8,130307,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (9,130308,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (10,130309,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (11,130310,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (12,130311,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (13,130312,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (14,130313,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (15,130314,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (16,130315,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (17,130316,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (18,130317,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (19,130318,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (20,130319,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (21,130320,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (22,130321,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (23,130322,'张亮',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (24,130323,'徐翔',4500,200,200,120,400,300,500,'2009-02-03',4820);

奖惩管理
create table hr_institution(
  id int(11) primary key NOT NULL auto_increment,
  name varchar(50) NOT NULL,
  reason varchar(50) default NULL,
  explains text,
  createtime datetime default NULL
);

序号 奖惩名称 奖惩原因 奖惩说明 
insert into hr_institution values(1,'小李罚款100元','迟到1小时','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-22 14:11:39');
insert into hr_institution values(2,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
]insert into hr_institution values(3,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(4,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(5,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(6,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(7,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(8,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(9,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(10,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(11,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(12,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(13,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(14,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(15,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');
insert into hr_institution values(16,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(17,'杨明奖励100元','连续加班3天','凡是上班时间迟到者一律罚款50元，超过1小时罚款100元！','2009-10-26 14:25:22');
insert into hr_institution values(18,'杨明奖励100元','连续加班3天','','2009-10-26 14:25:22');

create table hr_workers(
	  id int(11) primary key NOT NULL auto_increment,
	  wid int(11) not null,
	  name varchar(50) not null,
	  sex char(1) default '1',
	  age int(11) default NULL,
	  dname varchar(50) default NULL,
	  job varchar(50) default NULL,
	  title varchar(50) default NULL,
	  specialty varchar(50) default NULL,
	  studyeffort varchar(50) default NULL,
	  school int(11) not null,
	  tel varchar(50) default NULL,
	  email varchar(50) default NULL,
	  content text,
	  createtime datetime default NULL,
	  constraint foreign key(school) references hr_school(id)
);
序号  职工编号 职工姓名 职工性别 职工年龄 所在部门 所在岗位 职称 所学专业 学历 毕业学校  联系电话 Email 详细经历
	insert into hr_workers values(1,13032101,'张三','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(2,13032102,'李四','1',25,'会计部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(3,13032103,'王武','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(4,13032104,'招六','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(5,13032105,'顺其','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(6,13032106,'留疤','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(7,13032107,'爱德华','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(8,13032108,'而','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(9,13032109,'而我','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(10,13032110,'他','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(11,13032111,'功夫','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(12,13032112,'分分','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(13,13032113,'好好','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(14,13032114,'从好吧','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(15,13032115,'一会见','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(16,13032116,'据','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(17,13032117,'好好','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',2,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());
	insert into hr_workers values(18,13032118,'好好','1',25,'技术部','程序员','高级java程序设计工程师','软件工程','本科',1,'15764306968','254866196@qq.com','有10年的javaweb开发经验',now());

constraint foreign key() references jjj();