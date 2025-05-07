CREATE SCHEMA malnutrition;
create table malnutrition.parent_details(
	parent_id VARCHAR(10) primary key,
	parent_name VARCHAR(150) not null,
	contact_information VARCHAR (20) not null,
	location VARCHAR(100) not null,
	estimated_income VARCHAR not null,
    gender VARCHAR (10),
    national_id VARCHAR (10) 
);

select * from malnutrition.parent_details;

alter table malnutrition.parent_details add constraint unique_id unique (national_id);

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
('P0016', 'Edith', '+25923987890', 'Latitude: 88.68429, Longitude: -139.18121', '2000ks', 'Female', '32548897' );


select * from malnutrition.parent_details;

insert into malnutrition.parent_details (parent_id, parent_name, contact_information, location, estimated_income, gender, national_id)
values ('P0017', 'Karen Queen', '+25920987843', 'Latitude: 50.68429, Longitude: -139.18121', '4000ksh', 'Female', '39003188'),
('P0019', 'kiyo Hailu', '+25634223123', 'Latitude: 48.68429, Longitude: -139.18121', '4000ksh', 'Male', '40982178' );


--
select * from malnutrition.parent_details;


select COUNT(*) 
	parent_name_start_with_k 
	from malnutrition.parent_details where LEFT(parent_name, 1) in ('k', 'K'); 
    

