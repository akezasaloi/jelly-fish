--CHILD DETAILS TABLE
create table malnutrition.child_details(
   child_id VARCHAR (10) primary key,
   name VARCHAR (150) not null,
   date_of_birth DATE not null,
   gender VARCHAR (10) not null
);
insert into malnutrition.child_details(child_id,name,date_of_birth,gender)
VALUES
('COO1','Alice Moraa','2017-05-15','Female'),
('COO2','John Kembo','2019-07-12','Male'),
('COO3','Joan Faith','2022-08-15','Female'),
('COO4','Alicia Keys','2018-05-15','Female'),
('COO5','Kelly Rowland','2019-08-12','Male'),
('COO6','Joan  Moraa','2022-08-18','Female'),
('COO7','John Amok','2021-07-13','Male'),
('COO8','Kelly Keith','2019-08-22','Male'),
('COO9','Alice  Aketch','2022-08-18','Female'),
('COO10','Adeday Haftu','2019-08-23','Female'),
('COO11','Adeday Haftu','2019-08-23','Female'),
('COO12','Queen  CArine','2015-09-24','Female'),
('COO13','Shem Jakes','2019-06-25','Male'),
('COO14','Paul Okoth','2022-09-23','Male'),
('COO15','Cynthia Akoth','2020-06-20','Female');
select * FROM malnutrition.child_details;

--PARENT DETAILS TABLE
create table malnutrition.parent_details(
	parent_id VARCHAR(10) primary key,
	parent_name VARCHAR(150) not null,
	contact_information VARCHAR (20) not null,
	location VARCHAR(100) not null,
	estimated_income VARCHAR(10) not null
);
alter table malnutrition.parent_details add column gender VARCHAR (10);
alter table malnutrition.parent_details add column national_id VARCHAR (10);
insert into malnutrition.parent_details (parent_id, parent_name, contact_information, location, estimated_income, gender, national_id)
values ('P001', 'Zafi Saloi', '+25923987843', 'Latitude: 48.68429, Longitude: -139.18121', '2000ksh', 'Female', '30003188'),
('P002', 'Etenesh Hailu', '+25634223124', 'Latitude: 48.68429, Longitude: -139.18121', '4000ksh', 'Female', '41382178' ),
('P003', 'Helen Atieno', '+251953422389', 'Latitude: 59.68429, Longitude: -139.18121', '3000ksh', 'Female', '38779856' ),
('P004', 'Hagos Haftu', '+254987234678', 'Latitude: 98.68429, Longitude: -139.18121', '2000ksh', 'Male', '41892988' ),
('P005', 'Mengesha Haben', '+25923987887', 'Latitude: 34.234429, Longitude: -139.18121', '2000ksh', 'Male', '21887766' ),
('P006', 'Ermiyas Tsgabu', '+25923117843', 'Latitude: 48.68239, Longitude: -139.18121', '7000ksh', 'Male', '23457897' ),
('P007', 'Joyce H', '+25978987843', 'Latitude: 41.68323, Longitude: -139.18121', '2000ksh', 'Female', '45376503' ),
('P008', 'Amuor Mangar', '+25920987843', 'Latitude: 44.623429, Longitude: -139.18121', '3000ksh', 'Female', '43789823' ),
('P009', 'Carine E', '+25923987832', 'Latitude: 23.61229, Longitude: -139.18121', '4000ksh', 'Female', '54879832' ),
('P0010', 'Arsema Aregawi', '+2592398779', 'Latitude: 50.68429, Longitude: -139.18121', '7000ksh', 'Female', '789812465' ),
('P0011', 'Bosko John', '+25923987800', 'Latitude: 53.68429, Longitude: -139.18121', '5000ksh', 'Male', '23590827' ),
('P0012', 'Mutoto Boni', '+25923987812', 'Latitude: 80.68429, Longitude: -139.18121', '2000ksh', 'Male', '43872308' ),
('P0013', 'Ruto Mangar', '+25923987865', 'Latitude: 34.68429, Longitude: -139.18121', '2000', 'Male', '78982343' ),
('P0014', 'Helen', '+25923987845', 'Latitude: 28.68429, Longitude: -139.18121', '5000ksh', 'Female', '90123247' ),
('P0016', 'Edith', '+25923987890', 'Latitude: 88.68429, Longitude: -139.18121', '2000ks', 'Female', '32548897' )
select * from malnutrition.parent_details;

insert into malnutrition.parent_details (parent_id, parent_name, contact_information, location, estimated_income, gender, national_id)
values ('P0017', 'Karen Queen', '+25920987843', 'Latitude: 50.68429, Longitude: -139.18121', '4000ksh', 'Female', '39003188'),
('P0019', 'Kiyo Hailu', '+25634223123', 'Latitude: 48.68429, Longitude: -139.18121', '4000ksh', 'Male', '40982178' )

select * from malnutrition.parent_details;
alter table parent_details add constraint unique_id unique (national_id);

--FEEDING TABLE
create table malnutrition.feeding_table(
feeding_id VARCHAR(10) primary key,
child_id VARCHAR(10) not null,
number_of_meals_before INT not null,
number_of_meals_after INT not null,
constraint fk foreign key(child_id)references malnutrition.child_details(child_id)
on delete CASCADE
);

insert into malnutrition.feeding_table(feeding_id,child_id,number_of_meals_before,number_of_meals_after)
values
('F01','COO1',1,3),
('F02','COO2',1,3),
('F03','COO3',1,3),
('F04','COO4',1,3),
('F05','COO5',1,3),
('F06','COO6',1,3),
('F07','COO7',1,3),
('F08','COO8',0,3),
('F09','COO9',1,3),
('F010','COO10',1,3),
('F011','COO11',1,3),
('F012','COO12',0,3),
('F013','COO13',1,3),
('F014','COO14',1,3),
('F015','COO15',1,3)

select * from malnutrition.feeding_table

--RELATIONSHIP TABLE
create table malnutrition.relationship_table(
relationship_id VARCHAR(10) primary key,
child_id VARCHAR(10) not null,
parent_id VARCHAR(10) not null,
relationship TEXT not null,
constraint fk_parent foreign key(parent_id)references malnutrition.parent_details(parent_id)
on delete cascade,
constraint fk_child foreign key(child_id)references malnutrition.child_details(child_id)
on delete CASCADE
);

insert into malnutrition.relationship_table(relationship_id,child_id,parent_id,relationship)
values 
('M01','COO1','P001','mother'),
('M02','COO2','P002','father'),
('M03','COO3','P003','step_mother'),
('M04','COO4','P004','mother'),
('M05','COO5','P005','mother'),
('M06','COO6','P006','mother'),
('M07','COO7','P007','mother'),
('M08','COO8','P008','mother'),
('M09','COO9','P009','mother'),
('M010','COO10','P0010','father'),
('M011','COO11','P0011','mother'),
('M012','COO12','P0012','father'),
('M013','COO13','P0013','father'),
('M014','COO14','P0014','mother'),
('M015','COO15','P0016','step_mother')

select * from malnutrition.child_details;

--DISTRIBUTION TABLE

create table malnutrition.bi_monthly_distribution(
distribution_id VARCHAR(5) primary key,
parent_id VARCHAR(5) not null,
distribution_date DATE not null,
donation_type VARCHAR(50),
donation_amount VARCHAR(50),
foreign key (parent_id) references malnutrition.parent_details(parent_id)
);
insert into malnutrition.bi_monthly_distribution(distribution_id, parent_id, distribution_date, donation_type, donation_amount)
values ('D001', 'P001', '2024-10-10', 'Flour', '1000KG'),
('D002', 'P002', '2024-10-10', 'Flour', '1000KG'),
('D003', 'P003', '2024-10-10', 'Flour', '1000KG'),
('D004', 'P004', '2024-10-25', 'food oil', '10 liter'),
('D005', 'P005', '2024-10-25', 'food oil', '10 liter'),
('D006', 'P006', '2024-10-25', 'food oil', '10 liter'),
('D007', 'P007', '2024-11-10', 'Rice', '100KG'),
('D008', 'P008', '2024-11-10', 'Rice', '100KG'),
('D009', 'P009', '2024-11-10', 'Rice', '100KG'),
('D0010', 'P0010', '2024-11-25', 'Flour', '1000KG'),
('D0011', 'P0011', '2024-11-25', 'Flour', '1000KG'),
('D0012', 'P0012', '2024-11-25', 'Flour', '1000KG'),
('D0013', 'P0013', '2024-12-10', 'food oil', '10 liter'),
('D0014', 'P0014', '2024-12-10', 'food oil', '10 liter'),
('D0015', 'P0016', '2024-12-10', 'food oil', '10 liter'),
select * from malnutrition.bi_monthly_distribution

--DATA MANIPULATION
--Number of parents whose name starts with 'k' or 'K'
select COUNT(*) 
from malnutrition.parent_details
where parent_name like 'k%' or parent_name like 'K%';

--Number of children who have more than one parent 
SELECT COUNT(*) AS more_parents
FROM (
    SELECT child_id
    FROM malnutrition.relationship_table 
    GROUP BY child_id
    HAVING COUNT(parent_id) > 1
) AS many_parents;

--Most dominant birth year 
select extract( year from date_of_birth) as birth_year,
COUNT(*) as dominating_year
from malnutrition.child_details
group by birth_year
order by dominating_year desc
limit 1;

--Number of children whose age is below 1 year and 10 months 
SELECT COUNT(*) AS total_under_1_year_10_months
FROM malnutrition.child_details 
WHERE AGE(CURRENT_DATE,date_of_birth ) < INTERVAL '1 year 10 months';

--Number of children who have multiple meals a day
SELECT COUNT (*) AS multiple_meals
FROM malnutrition.feeding_table
WHERE number_of_meals_after > 1;
















