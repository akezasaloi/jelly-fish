CREATE SCHEMA malnutrition;
CREATE TABLE malnutrition.child_details(
   child_id VARCHAR (10) PRIMARY KEY,
   name VARCHAR (150) NOT NULL,
   date_of_birth DATE NOT NULL,
   gender VARCHAR (10) NOT NULL
);
INSERT INTO malnutrition.child_details(child_id,name,date_of_birth,gender)
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

----Show how many children under 1 year 10 months are in your table

SELECT COUNT (*) AS
children_below_1_year_10_months
FROM
malnutrition.child_details
WHERE age (CURRENT_DATE,date_of_birth)  < INTERVAL'1 year 10 months';

----In which year were most children born
SELECT EXTRACT(YEAR FROM date_of_birth) AS birth_year,
COUNT(*) AS children_count
FROM malnutrition.child_details
GROUP BY birth_year
ORDER BY children_count DESC
LIMIT 1;

CREATE TABLE malnutrition.disease_table(
   disease_id VARCHAR (10) PRIMARY KEY,
   child_id VARCHAR (10) NOT NULL,
   date_of_record DATE NOT NULL,
   disease VARCHAR (100) NOT NULL
   CONSTRAINT child_fk FOREIGN KEY(child_id) REFERENCES malnutrition.child_details(child_id)
);
INSERT INTO malnutrition.disease_table(disease_id,child_id,date_of_record,disease)
VALUES
('d001','COO1','2024-10-20','Measles'),
('d002','COO2','2024-10-20','Typhoid'),
('d003','COO3','2024-10-20','Kwashiorkor'),
('d004','COO4','2024-10-20','Malaria'),
('d005','COO5','2024-10-20','Measles'),
('d006','COO6','2024-10-20','Malaria'),
('d007','COO1','2025-3-20','Diabetes'),
('d008','COO2','2025-3-20','Diabetes'),
('d009','COO3','2025-3-20','Obesity'),
('d0010','COO4','2025-3-20','Malaria'),
('d0011','COO5','2025-3-20','Malaria'),
('d0012','COO6','2025-3-20','Malaria'),
('d0013','COO7','2025-3-20','Cholera'),
('d0014','COO8','2025-3-20','Cholera'),
('d0015','COO9','2025-3-20','Kwashiorkor');


select * FROM malnutrition.disease_table;

SELECT count(*) AS
children_under_ten_with_diseases
FROM
malnutrition.disease_table
WHERE AGE (CURRENT_DATE,date_of_record)< INTERVAL '4 months';
