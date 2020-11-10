create table ACCOUNT (
    ACCOUNT_ID int identity not null,
    AVAIL_BALANCE float,
    CLOSE_DATE datetime,
    LAST_ACTIVITY_DATE datetime,
    OPEN_DATE datetime not null,
    PENDING_BALANCE float,
    STATUS varchar(10),
    CUST_ID int,
    OPEN_BRANCH_ID int not null,
    OPEN_EMP_ID int not null,
    PRODUCT_CD varchar(10) not null,
    primary key (ACCOUNT_ID)
);

create table ACC_TRANSACTION (
    TXN_ID numeric(19,0) identity not null,
    AMOUNT float not null,
    FUNDS_AVAIL_DATE datetime not null,
    TXN_DATE datetime not null,
    TXN_TYPE_CD varchar(10),
    ACCOUNT_ID int,
    EXECUTION_BRANCH_ID int,
    TELLER_EMP_ID int,
    primary key (TXN_ID)
);

create table BRANCH (
    BRANCH_ID int identity not null,
    ADDRESS varchar(30),
    CITY varchar(20),
    NAME varchar(20) not null,
    STATE varchar(10),
    ZIP_CODE varchar(12),
    primary key (BRANCH_ID)
);

create table BUSINESS (
    INCORP_DATE datetime,
    NAME varchar(255) not null,
    STATE_ID varchar(10) not null,
    CUST_ID int not null,
    primary key (CUST_ID)
);

create table CUSTOMER (
    CUST_ID int identity not null,
    ADDRESS varchar(30),
    CITY varchar(20),
    CUST_TYPE_CD varchar(1) not null,
    FED_ID varchar(12) not null,
    POSTAL_CODE varchar(10),
    STATE varchar(20),
    primary key (CUST_ID)
);

create table DEPARTMENT (
    DEPT_ID int identity not null,
    NAME varchar(20) not null,
    primary key (DEPT_ID)
);

create table EMPLOYEE (
    EMP_ID int identity not null,
    END_DATE datetime,
    FIRST_NAME varchar(20) not null,
    LAST_NAME varchar(20) not null,
    START_DATE datetime not null,
    TITLE varchar(20),
    ASSIGNED_BRANCH_ID int,
    DEPT_ID int,
    SUPERIOR_EMP_ID int,
    primary key (EMP_ID)
);

create table INDIVIDUAL (
    BIRTH_DATE datetime,
    FIRST_NAME varchar(30) not null,
    LAST_NAME varchar(30) not null,
    CUST_ID int not null,
    primary key (CUST_ID)
);

create table OFFICER (
    OFFICER_ID int identity not null,
    END_DATE datetime,
    FIRST_NAME varchar(30) not null,
    LAST_NAME varchar(30) not null,
    START_DATE datetime not null,
    TITLE varchar(20),
    CUST_ID int,
    primary key (OFFICER_ID)
);

create table PRODUCT (
    PRODUCT_CD varchar(10) not null,
    DATE_OFFERED datetime,
    DATE_RETIRED datetime,
    NAME varchar(50) not null,
    PRODUCT_TYPE_CD varchar(255),
    primary key (PRODUCT_CD)
);

create table PRODUCT_TYPE (
    PRODUCT_TYPE_CD varchar(255) not null,
    NAME varchar(50),
    primary key (PRODUCT_TYPE_CD)
);

alter table ACCOUNT 
    add constraint ACCOUNT_CUSTOMER_FK 
    foreign key (CUST_ID) 
    references CUSTOMER;

alter table ACCOUNT 
    add constraint ACCOUNT_BRANCH_FK 
    foreign key (OPEN_BRANCH_ID) 
    references BRANCH;

alter table ACCOUNT 
    add constraint ACCOUNT_EMPLOYEE_FK 
    foreign key (OPEN_EMP_ID) 
    references EMPLOYEE;

alter table ACCOUNT 
    add constraint ACCOUNT_PRODUCT_FK 
    foreign key (PRODUCT_CD) 
    references PRODUCT;

alter table ACC_TRANSACTION 
    add constraint ACC_TRANSACTION_ACCOUNT_FK 
    foreign key (ACCOUNT_ID) 
    references ACCOUNT;

alter table ACC_TRANSACTION 
    add constraint ACC_TRANSACTION_BRANCH_FK 
    foreign key (EXECUTION_BRANCH_ID) 
    references BRANCH;

alter table ACC_TRANSACTION 
    add constraint ACC_TRANSACTION_EMPLOYEE_FK 
    foreign key (TELLER_EMP_ID) 
    references EMPLOYEE;

alter table BUSINESS 
    add constraint BUSINESS_EMPLOYEE_FK 
    foreign key (CUST_ID) 
    references CUSTOMER;

alter table EMPLOYEE 
    add constraint EMPLOYEE_BRANCH_FK 
    foreign key (ASSIGNED_BRANCH_ID) 
    references BRANCH;

alter table EMPLOYEE 
    add constraint EMPLOYEE_DEPARTMENT_FK 
    foreign key (DEPT_ID) 
    references DEPARTMENT;

alter table EMPLOYEE 
    add constraint EMPLOYEE_EMPLOYEE_FK 
    foreign key (SUPERIOR_EMP_ID) 
    references EMPLOYEE;

alter table INDIVIDUAL 
    add constraint INDIVIDUAL_CUSTOMER_FK 
    foreign key (CUST_ID) 
    references CUSTOMER;

alter table OFFICER 
    add constraint OFFICER_CUSTOMER_FK 
    foreign key (CUST_ID) 
    references CUSTOMER;

alter table PRODUCT 
    add constraint PRODUCT_PRODUCT_TYPE_FK 
    foreign key (PRODUCT_TYPE_CD) 
    references PRODUCT_TYPE;


