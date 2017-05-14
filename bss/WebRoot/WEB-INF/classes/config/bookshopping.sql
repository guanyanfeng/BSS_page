--用户表
create table users(
    id NUMBER(6)  Primary Key,      
    name VARCHAR2(25) Not Null, 
    password varchar2(25),
    account number(8,2),--账户
    age number(4),       
    birthday VARCHAR2(25),                       
    gender varchar2(6),
    email varchar2(25)  --邮箱               
);
--drop table users;
select * from users;
create sequence usersId start with 10000 increment by 1; 
drop sequence usersid;
select usersid.nextval from dual;
delete users  where id=10026;
insert into users values(usersid.nextval,'gyf','123456',5000,24,'1993-11-11','男','1391968591@qq.com');
update users set name='gyf' where id=10000;


--商品表
create table book(
    id NUMBER(6)  Primary Key,      
    name VARCHAR2(50) Not Null, 
    price NUMBER(6,2),
    storage number(6),
    describe varchar2(300), --商品描述  
	img varchar2(20)          
);
--drop table book;
select * from book;
create sequence bookId start with 20000 increment by 1; 
--drop sequence bookid;
alter table book modify(name varchar2(50));
insert into book values(bookId.nextval,'Angular JS实战',46.9,50,'学习Angular的权威参考书，精心设计的经典案例对各个知识点进行了充分阐释。','product9.jpg');
select* from book where name like '%Java%';


--订单表
create table orders(
     id number(6) primary key,
     userid number(6),
     total number(8,2),
     status number(2),--订单状态 0未支付 1已支付 2退单
     orderDate varchar2(25)
     
);
drop table orders;
select *from orders;
create sequence ordersId start with 30000 increment by 1; 
drop sequence ordersid;



--订单子项表
create table orderitem(
     id number(6)primary key,
     orderid number(6),
     name varchar2(25),
     price number(6,2),
     num number(6),
     total number(8,2)
);
 drop table orderitem;
 select *from orderitem;
 alter table orderItem modify(name varchar2(50));
 create sequence orderitemId start with 70000 increment by 1; 
drop sequence orderitemid;


--购物车表
create table shoppingcart(
     id number(6)primary key,
     userid number(6),
     total number(8,2)
);
drop table shoppingcart;
select * from shoppingcart;
create sequence cartId start with 40000 increment by 1; 
drop sequence cartid;
insert into shoppingcart values(cartid.nextval,10001,320);
delete 
--购物车子项表
create table cartitem(
     id number(6)primary key,
     cartid number(6),
     name varchar2(25),
     price number(6,2),
     num number(6),
     img varchar2(20),
     total number(8,2)
);

-- drop table cartitem;
alter table cartItem modify(name varchar2(50));
 select *from cartitem;
 alter table cartitem add(img varchar2(20));
 create sequence cartitemId start with 50000 increment by 1; 
drop sequence cartitemid;
insert into cartitem values(cartitemid.nextval,40000,'Thinking in Java' ,85.00,1,85.00);
 select shoppingCart.*,cartItem.id cId,cartItem.cartId,cartItem.name,cartItem.price,cartItem.num,cartItem.total itemTotal from shoppingCart join cartItem on shoppingCart.id=cartItem.cartid where shoppingCart.userId=10003
--地址表
create table address(
    id  number(6),
    userid number(6),
    name varchar2(10),--收件人
    phone varchar2(11),--电话号码
    site varchar2(25)--地址
);
drop table address;
select *from address;
create sequence addressId start with 60000 increment by 1; 
drop sequence addressid;
