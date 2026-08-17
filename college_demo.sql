create database Ramdeobaba_University;
use Ramdeobaba_University;
create table department (dep_id int primary key, dep_name varchar(50) unique not null);
create table student( roll no int primary key, name varchar(50) not null, email_id varchar(50) unique, addhar_no varchar(12) unique, dep_id int, foreign key (dep_id) references department(dep_id));
create table course (course_id int primary key , course_name varchar(60) not null, dep_id int ,foreign key (dep_id) references  department(dep_id));
create table enrollment (roll_no int, course_id int, semester int check(semester between 1 and 8),grade char(2),primary key (roll_no,course_id, semester),foreign key (roll_no) references student(roll_no),foreign key (course_id) references course(course_id));
insert into department values (1,'computer science'),(2,'electronics');
insert into student values (101,'Nilisha','nilisha@mail.com',12345679865,1);
insert into student values (102,'Rahul','rahul@mail.com',987654321012,2);
insert into course values (501,'DBMS',1),(502,'circuits',2);
insert into enrollment values (101, 501, 3, 'A');
insert into enrollment values (102, 502, 3, 'B');
show tables;
describe student;
alter table student drop column aadhar_no;
alter table student add phone_no int;
alter table student modify email varchar(100);
alter table student rename column email to email_id;
 alter table student add constraint unique_phone_no unique(phone_no);
 alter table student drop constraint unique_phone_no;
  select*from student ;
  select*from student where roll_no=101;
update student
     set phone_no=1135273899
     where roll_no=102;
update student
     set phone_no=1234567890
    where roll_no=101;
update student
    set email_id='nilisha.n@mail.com',dep_id=2
     where roll_no=101;
update student
     set dep_id =1
     where dep_id=2;
create table faculty (faculty_id int primary key,first_name varchar(50),last_name varchar(80), salary float,dep_id int, foreign key(dep_id) references department(dep_id));
alter table department add location varchar(100);
alter table student add dob varchar(60);
alter table student add gender varchar(30);
alter table student add cgpa float;
alter table course add credits int;
alter table course add faculty_id int foreign key (faculty_id) references faculty(faculty_id);
alter table course course_code varchar(60);
