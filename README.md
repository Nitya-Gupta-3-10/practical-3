Command usage,

create table - used to create table; 

datatypes -int , varchar 

insert - used to enter data into table 

primary key -used to define any variable as primary key

foreign key -used to define any variable as foreign key

unique -used to define any variable as unique( acts as primary key)

update table_name - used to update any table

set - used to reset the value

alter table table_name -used to make changes in any table's columns

alter table table_name drop column column_name - used to remove any column in any table

alter table table_name add column_name datatype - used to add a column in any table

alter table table_name modify column_name dataype - used to change any column's datatype in any table

alter table table_name rename column name to full _name - used to change any column's name

alter table table_name add constraint unique_phone unique(phone) - used to add constraint to any column of a table

alter table table_name drop constraint unique_phone  - used to remove a constraint rom any column of a table

select*from table_name - displays data of a particular table

select*from table_name where primary_key = desired_value- displays data of a particular row in a table

describe table_name - used to see all the columns with their constraints in a table

show tables - used to see all the tables ina ny database

show create table table_name - used to see detailed structure of any table
![image alt]( https://github.com/Nitya-Gupta-3-10/practical-3/blob/5493f8e14d07e0e4051a4c30b55bf91f830dc516/college2.drawio.png)
# Normalizations,
1NF is followed in each table.

2NF is used as no partial dependencies , all non-key attributes depends on primary key.

3NF is used as no non-key attributes depends on non-key attributes.

