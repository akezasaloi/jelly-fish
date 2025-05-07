create schema malnutrition;

-- parent table
create table malnutrition.parent_details (
    parent_id VARCHAR(10) primary key,
    parent_name VARCHAR(150) not null,
    contact_information VARCHAR(20) not null,
    location VARCHAR(100) not null,
    estimated_income VARCHAR not null,
    gender VARCHAR(10),
    national_id VARCHAR(10)
);

alter table malnutrition.parent_details
add constraint unique_id unique (national_id);

SELECT * FROM malnutrition.parent_details;

insert into
    malnutrition.parent_details (
        parent_id,
        parent_name,
        contact_information,
        location,
        estimated_income,
        gender,
        national_id
    )
values (
        'P001',
        'Zafi Saloi',
        '+25923987843',
        'Latitude: 48.68429, Longitude: -139.18121',
        '2000ksh',
        'Female',
        '1000308'
    ),
    (
        'P002',
        'Etenesh Hailu',
        '+25634223124',
        'Latitude: 48.68429, Longitude: -139.18121',
        '4000ksh',
        'Female',
        '401382178'
    ),
    (
        'P003',
        'Helen Atieno',
        '+251953422389',
        'Latitude: 59.68429, Longitude: -139.18121',
        '3000ksh',
        'Female',
        '38779856'
    ),
    (
        'P004',
        'Hagos Haftu',
        '+254987234678',
        'Latitude: 98.68429, Longitude: -139.18121',
        '2000ksh',
        'Male',
        '41892088'
    ),
    (
        'P005',
        'Mengesha Haben',
        '+25923987887',
        'Latitude: 34.234429, Longitude: -139.18121',
        '2000ksh',
        'Male',
        '21887766'
    ),
    (
        'P006',
        'Ermiyas Tsgabu',
        '+25923117843',
        'Latitude: 48.68239, Longitude: -139.18121',
        '7000ksh',
        'Male',
        '23457897'
    ),
    (
        'P007',
        'Joyce H',
        '+25978987843',
        'Latitude: 41.68323, Longitude: -139.18121',
        '2000ksh',
        'Female',
        '45376503'
    ),
    (
        'P008',
        'Amuor Mangar',
        '+25920987843',
        'Latitude: 44.623429, Longitude: -139.18121',
        '3000ksh',
        'Female',
        '43789823'
    ),
    (
        'P009',
        'Carine E',
        '+25923987832',
        'Latitude: 23.61229, Longitude: -139.18121',
        '4000ksh',
        'Female',
        '54879832'
    ),
    (
        'P0010',
        'Arsema Aregawi',
        '+2592398779',
        'Latitude: 50.68429, Longitude: -139.18121',
        '7000ksh',
        'Female',
        '789812465'
    ),
    (
        'P0011',
        'Bosko John',
        '+25923987800',
        'Latitude: 53.68429, Longitude: -139.18121',
        '5000ksh',
        'Male',
        '20590827'
    ),
    (
        'P0012',
        'Mutoto Boni',
        '+25923987812',
        'Latitude: 80.68429, Longitude: -139.18121',
        '2000ksh',
        'Male',
        '430872308'
    ),
    (
        'P0013',
        'Ruto Mangar',
        '+25923987865',
        'Latitude: 34.68429, Longitude: -139.18121',
        '2000',
        'Male',
        '709820343'
    ),
    (
        'P0014',
        'Helen',
        '+25923987845',
        'Latitude: 28.68429, Longitude: -139.18121',
        '5000ksh',
        'Female',
        '901023247'
    ),
    (
        'P0016',
        'Edith',
        '+25923987890',
        'Latitude: 88.68429, Longitude: -139.18121',
        '2000ks',
        'Female',
        '325408897'
    );

insert into
    malnutrition.parent_details (
        parent_id,
        parent_name,
        contact_information,
        location,
        estimated_income,
        gender,
        national_id
    )
values (
        'P0017',
        'Karen Queen',
        '+25920987843',
        'Latitude: 50.68429, Longitude: -139.18121',
        '4000ksh',
        'Female',
        '39003188'
    ),
    (
        'P0019',
        'kiyo Hailu',
        '+25634223123',
        'Latitude: 48.68429, Longitude: -139.18121',
        '4000ksh',
        'Male',
        '40982178'
    );

-- child table
create table malnutrition.child_details (
    child_id VARCHAR(10) primary key,
    name VARCHAR(150) not null,
    date_of_birth DATE not null,
    gender VARCHAR(10) not null
);

insert into
    malnutrition.child_details (
        child_id,
        name,
        date_of_birth,
        gender
    )
VALUES (
        'COO1',
        'Alice Moraa',
        '2017-05-15',
        'Female'
    ),
    (
        'COO2',
        'John Kembo',
        '2019-07-12',
        'Male'
    ),
    (
        'COO3',
        'Joan Faith',
        '2022-08-15',
        'Female'
    ),
    (
        'COO4',
        'Alicia Keys',
        '2018-05-15',
        'Female'
    ),
    (
        'COO5',
        'Kelly Rowland',
        '2019-08-12',
        'Male'
    ),
    (
        'COO6',
        'Joan  Moraa',
        '2022-08-18',
        'Female'
    ),
    (
        'COO7',
        'John Amok',
        '2021-07-13',
        'Male'
    ),
    (
        'COO8',
        'Kelly Keith',
        '2019-08-22',
        'Male'
    ),
    (
        'COO9',
        'Alice  Aketch',
        '2022-08-18',
        'Female'
    ),
    (
        'COO10',
        'Adeday Haftu',
        '2019-08-23',
        'Female'
    ),
    (
        'COO11',
        'Adeday Haftu',
        '2019-08-23',
        'Female'
    ),
    (
        'COO12',
        'Queen  CArine',
        '2015-09-24',
        'Female'
    ),
    (
        'COO13',
        'Shem Jakes',
        '2019-06-25',
        'Male'
    ),
    (
        'COO14',
        'Paul Okoth',
        '2022-09-23',
        'Male'
    ),
    (
        'COO15',
        'Cynthia Akoth',
        '2020-06-20',
        'Female'
    );

select * FROM malnutrition.child_details;

-- feeding table
create table malnutrition.feeding_table (
    feeding_id VARCHAR(10) primary key,
    child_id VARCHAR(10) not null,
    number_of_meals_before INT not null,
    number_of_meals_after INT not null,
    constraint fk foreign key (child_id) references malnutrition.child_details (child_id) on delete CASCADE
);

insert into
    malnutrition.feeding_table (
        feeding_id,
        child_id,
        number_of_meals_before,
        number_of_meals_after
    )
values ('F01', 'COO1', 1, 3),
    ('F02', 'COO2', 1, 3),
    ('F03', 'COO3', 1, 3),
    ('F04', 'COO4', 1, 3),
    ('F05', 'COO5', 1, 3),
    ('F06', 'COO6', 1, 3),
    ('F07', 'COO7', 1, 3),
    ('F08', 'COO8', 0, 3),
    ('F09', 'COO9', 1, 3),
    ('F010', 'COO10', 1, 3),
    ('F011', 'COO11', 1, 3),
    ('F012', 'COO12', 0, 3),
    ('F013', 'COO13', 1, 3),
    ('F014', 'COO14', 1, 3),
    ('F015', 'COO15', 1, 3)

select * from malnutrition.feeding_table;

-- How many children have multiple meals a day?
SELECT COUNT(*) AS children_with_multiple_meals
FROM malnutrition.feeding_table
WHERE
    number_of_meals_after > 1;

-- How many parents have a name that starts with 'K' or 'k'
SELECT COUNT(*) AS parents_starting_with_k
FROM malnutrition.parent_details
WHERE
    parent_name ILIKE 'k%';