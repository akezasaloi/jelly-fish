create schema malnutrition;

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
('COO3','Joan Faith','2022-08-15','Female');


select * FROM malnutrition.child_details;





insert into malnutrition.child_details(child_id,name,date_of_birth,gender)
VALUES 
('COO4','Alicia Keys','2018-05-15','Female'),
('COO5','Kelly Rowland','2019-08-12','Male'),
('COO6','Joan  Moraa','2022-08-18','Female');


insert into malnutrition.child_details(child_id,name,date_of_birth,gender)
VALUES 
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


CREATE TABLE malnutrition.progress
    (
       progress_id VARCHAR(10) PRIMARY KEY,
       date DATE not null,
       child_id VARCHAR(10) NOT NULL,
       height_cm numeric NOT NULL,
		 weight_kg numeric NOT NULL,
		 CONSTRAINT child_fk FOREIGN KEY (child_id)	REFERENCES malnutrition.child_details(child_id) ON DELETE SET NULL
    );

INSERT INTO malnutrition.progress(progress_id,date,child_id,height_cm,weight_kg)
values
('P001','2024-01-01','COO15',120,10),
('P002','2024-01-01','COO14',100,9.1),
('P003','2022-01-01','COO13',110,7.9),
('P004','2022-01-01','COO12',109,6.2),
('P005','2022-01-01','COO11',108,6.5),

('P006','2024-03-01','COO15',120,15),
('P007','2024-03-01','COO14',100,14.1),
('P008','2022-03-01','COO13',110,16.9),
('P009','2022-03-01','COO12',109,12.2),
('P0010','2022-03-01','COO11',108,15.5),
('P0011','2024-04-01','COO9',120,10),
('P0012','2024-04-01','COO8',100,9.1),
('P0013','2022-04-01','COO7',110,7.9),
('P0014','2022-04-01','COO6',109,6.2),
('P0015','2022-04-01','COO5',108,6.5);






--How many children have positive progress i.e (BMI improving)

select count (*)  as children_with_improved_bmi
from (
select 
child_id,
MIN (weight_kg / POWER (height_cm/100.0,2)) as bmi_start,
MAX(weight_kg / POWER(height_cm/100.0,2)) as bmi_end
from  malnutrition.progress
group by child_id
)as bmi_comparison

where bmi_end >bmi_start;

--Show how many children under 1 year 10 months are in your table
SELECT COUNT (*) as
children_below_1_year_10_months
from  
malnutrition.child_details 
where age (current_date,date_of_birth)  < interval'1 year 10 months';


--In which year were most children born
select extract (year from date_of_birth) as birth_year, COUNT(*) as children_count 
from malnutrition.child_details
group by birth_year
order by children_count desc
limit 1;





















































