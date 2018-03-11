create database db_hr;
use db_hr;
ϵͳ�û�
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
insert into hr_user values(1,'admin','111','����','1','1975-08-21','2015-01-01','1','254866196@qq.com','��������Ա');
insert into hr_user values(2,'jzwx','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(3,'jzwx1','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(4,'jzwx2','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(5,'jzwx3','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(6,'jzwx4','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(7,'jzwx5','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(8,'jzwx6','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(9,'jzwx7','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(10,'jzwx8','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(11,'jzwx9','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(12,'jzwx10','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(13,'jzwx11','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(14,'jzwx12','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(15,'jzwx13','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(16,'jzwx14','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(17,'jzwx15','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(18,'jzwx16','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(19,'jzwx17','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(20,'jzwx18','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(21,'jzwx19','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(22,'jzwx20','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(23,'jzwx21','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(24,'jzwx22','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(25,'jzwx23','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(26,'jzwx24','222','����','0','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(27,'jzwx25','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(28,'jzwx26','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(29,'jzwx27','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(30,'jzwx28','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');
insert into hr_user values(31,'jzwx29','222','����','1','1975-08-21','2015-01-01','0','254866196@qq.com','����Ա');

��ҵѧУ
create table hr_school(
	id int(11) primary key not null auto_increment,
	name varchar(50) not null,
	class varchar(50) not null,
	content text
);
��� ���� ������� ���� ����
insert into hr_school values(1,'������ѧ','����','ѧУ��211ѧУ');
insert into hr_school values(2,'���ִ�ѧ','����','ѧУ��211ѧУ');


���Ź���
create table hr_dept(
	id int(11) primary key not null auto_increment,
	did int(11) not null,
	dname varchar(50) not null,
	lead varchar(50) not null,
	content text 
);

insert into hr_dept values(1,1001,'���²�','����','��������');
insert into hr_dept values(2,1002,'Ӫ����','����','��߹�˾������');
insert into hr_dept values(3,1003,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(4,1004,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(5,1005,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(6,1006,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(7,1007,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(8,1008,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(9,1009,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(10,1010,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(11,1011,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(12,1012,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(13,1013,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(14,1014,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(15,1015,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(16,1016,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(17,1017,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(18,1018,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(19,1019,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(20,1020,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(21,1021,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(22,1022,'�з���','����','Ϊ��˾�����²�Ʒ');
insert into hr_dept values(23,1023,'�з���','����','Ϊ��˾�����²�Ʒ');

��λ����
create table hr_job(
	id int(11) primary key not null auto_increment,
	jid int(11) not null,
	jname varchar(50) not null,
	jlead varchar(50) not null,
	dname varchar(50) not null,
	person int(11) not null,
	content text 
);

insert into hr_job values(1,2001,'���¾���','����','���²�',2,'��������');
insert into hr_job values(2,2002,'��������','����1','����',2,'��������');
insert into hr_job values(3,2003,'��Ա','����2','���²�',2,'��������');
insert into hr_job values(4,2003,'���¾���','����3','�ɹ���',2,'��������');
insert into hr_job values(5,2004,'���¾���','����4','���²�',2,'��������');
insert into hr_job values(6,2005,'���¾���','����5','�ɹ���',2,'��������');
insert into hr_job values(7,2006,'���¾���','����6','���²�',2,'��������');
insert into hr_job values(8,2007,'���¾���','����7','���²�',2,'��������');
insert into hr_job values(9,2008,'���¾���','����8','����',2,'��������');
insert into hr_job values(10,2009,'���¾���','����9','���²�',2,'��������');
insert into hr_job values(11,2010,'���¾���','����00','���²�',2,'��������');
insert into hr_job values(12,2011,'���¾���','����11','����',2,'��������');
insert into hr_job values(13,2012,'���¾���','����111','�ɹ���',2,'��������');
insert into hr_job values(14,2013,'���˻��','����12','���²�',2,'��������');
insert into hr_job values(15,2014,'���¾���','����123','����֧Ԯ��',2,'��������');
insert into hr_job values(16,2015,'���˻��','����33','���²�',2,'��������');
insert into hr_job values(17,2016,'���¾���','����44','����',2,'��������');
insert into hr_job values(18,2017,'���¾���','����55','����֧Ԯ��',2,'��������');
insert into hr_job values(19,2018,'���¾���','����66','���²�',2,'��������');
insert into hr_job values(20,2019,'���˻��','����77','����֧Ԯ��',2,'��������');
insert into hr_job values(21,2020,'���¾���','����99','���²�',2,'��������');
insert into hr_job values(22,2021,'�����ܼ�','����778','����֧Ԯ��',2,'��������');
insert into hr_job values(23,2022,'���¾���','����114','����֧Ԯ��',2,'��������');
insert into hr_job values(24,2023,'�����ܼ�','����76','����֧Ԯ��',2,'��������');
insert into hr_job values(25,2024,'���¾���','����85','���²�',2,'��������');

ְ�ƹ���
create table hr_title(
	id int(11) primary key not null auto_increment,
	tid int(11) not null,
	tname varchar(50) not null,
	jname varchar(50) not null,
	content text
);

insert into hr_title values(1,3001,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(2,3002,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(3,3003,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(4,3004,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(5,3005,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(6,3006,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(7,3007,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(8,3008,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(9,3009,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(10,3010,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(11,3011,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(12,3012,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(13,3013,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(14,3014,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(15,3015,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(16,3016,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(17,3017,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(18,3018,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');
insert into hr_title values(19,3019,'�߼����ʦ','Ӫ����','���ʦ�ĸ�����֤');

н�����
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
н����Ϣ��
��� Ա����� Ա������ ����н�� ���� ���� ȫ�ڲ� ��˰ ���ⲹ�� ���� ����ʱ�� �ܼ�

insert into hr_stipend values (1,130300,'����',1111,300,300,300,200,0,600,'2009-02-03',2411);
insert into hr_stipend values (2,130301,'����',1111,300,300,300,200,0,600,'2009-02-03',2411);
insert into hr_stipend values (3,130302,'����',2523,300,300,300,200,100,200,'2009-02-03',3323);
insert into hr_stipend values (4,130303,'����',2800,300,300,200,200,200,200,'2009-02-03',3400);
insert into hr_stipend values (5,130304,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (6,130306,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (7,130305,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (8,130307,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (9,130308,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (10,130309,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (11,130310,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (12,130311,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (13,130312,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (14,130313,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (15,130314,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (16,130315,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (17,130316,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (18,130317,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (19,130318,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (20,130319,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (21,130320,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (22,130321,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);
insert into hr_stipend values (23,130322,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
insert into hr_stipend values (24,130323,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);

���͹���
create table hr_institution(
  id int(11) primary key NOT NULL auto_increment,
  name varchar(50) NOT NULL,
  reason varchar(50) default NULL,
  explains text,
  createtime datetime default NULL
);

��� �������� ����ԭ�� ����˵�� 
insert into hr_institution values(1,'С���100Ԫ','�ٵ�1Сʱ','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-22 14:11:39');
insert into hr_institution values(2,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
]insert into hr_institution values(3,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(4,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(5,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(6,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(7,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(8,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(9,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(10,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(11,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(12,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(13,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(14,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(15,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');
insert into hr_institution values(16,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(17,'��������100Ԫ','�����Ӱ�3��','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-26 14:25:22');
insert into hr_institution values(18,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');

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
���  ְ����� ְ������ ְ���Ա� ְ������ ���ڲ��� ���ڸ�λ ְ�� ��ѧרҵ ѧ�� ��ҵѧУ  ��ϵ�绰 Email ��ϸ����
	insert into hr_workers values(1,13032101,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(2,13032102,'����','1',25,'��Ʋ�','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(3,13032103,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(4,13032104,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(5,13032105,'˳��','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(6,13032106,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(7,13032107,'���»�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(8,13032108,'��','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(9,13032109,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(10,13032110,'��','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(11,13032111,'����','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(12,13032112,'�ַ�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(13,13032113,'�ú�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(14,13032114,'�Ӻð�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(15,13032115,'һ���','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(16,13032116,'��','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(17,13032117,'�ú�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',2,'15764306968','254866196@qq.com','��10���javaweb��������',now());
	insert into hr_workers values(18,13032118,'�ú�','1',25,'������','����Ա','�߼�java������ƹ���ʦ','�������','����',1,'15764306968','254866196@qq.com','��10���javaweb��������',now());

constraint foreign key() references jjj();