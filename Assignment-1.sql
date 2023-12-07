create database Assignment1 on primary
(name='Customer_Db',Filename='C:\Mphasis\Simplilearn-P3\Day-1\Assignment1_Db_mdf'
,size=24mb,maxsize=48mb,filegrowth=8mb)
log on(name='Customer_Db_log',Filename='C:\Mphasis\Simplilearn-P3\Day-1\Assignment1_Db_log_ldf')
collate SQL_Latin1_General_CP1_CI_AS

use Assignment1
create table Product(
PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice int check(PPrice>=50 and PPrice<=100000),
PComapany nvarchar(50) not null,
PQty int check(PQty>=1)  default 1)

insert into Product(PName,PPrice,PComapany) values('Tv',500,'Samsung')
insert into Product values('Tab',1000,'Apple',2)
insert into Product values('Tv',5000,'Redmi',3)
insert into Product values('Mobile',26000,'HTC',4)
insert into Product values('Mobile',10000,'iPhone',5)
insert into Product(PName,PPrice,PComapany) values('Mobile',60000,'Nokia')

select * from Product
