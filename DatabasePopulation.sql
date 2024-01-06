-- Insert data into the "department" table
INSERT INTO department (
    department_name, department_manager, manager_start_date
) VALUES
('Administration', 'Miriam Doris', '2000-04-13'),
('Engineering', 'Nina Yates', '2013-08-20'),
('Information Technology', 'Julia Burns', '2004-08-30'),
('Legal', 'Kelly Farmer', '2001-08-13'),
('Marketing', 'Sheila Singleton', '2011-08-02'),
('Sales', 'Saul Meyer', '2010-08-09'),
('Production', 'Nancy Lawson', '2006-04-14'),
('Investor Relations', 'Amelia Cain', '2008-09-08'),
('Quality Assurance', 'Virgil Price', '2010-01-09'),
('Risk Management', 'Krista Rice', '2004-06-08');

-- Insert data into the "department_locator" table
INSERT INTO department_locator (department_number, department_location) VALUES
(1, 'Kuala Lumpur, Malaysia'),
(2, 'Kabul, Afghanistan'),
(3, 'Buenos Aires, Argentina'),
(4, 'Ljubljana, Slovenia'),
(5, 'Nairobi, Kenya'),
(6, 'Sarajevo, Bosnia and Herzegovina'),
(7, 'Las Vegas, United States'),
(8, 'Chicago, United States'),
(9, 'London, United Kingdom'),
(10, 'Atlanta, United States');

-- Insert data into the "company_project" table
INSERT INTO company_project (
    project_name, project_location, department_number
) VALUES
('Project A-1', 'Bologna, Italy', 1),
('Project A-2', 'Colombo, Sri Lanka', 1),
('Project A-3', 'Quito, Ecuador', 1),
('Project B-1', 'Montevideo, Uruguay', 2),
('Project B-2', 'Berlin, Germany', 2),
('Project C', 'Edinburgh, United Kingdom', 3),
('Project D-1', 'Tallinn, Estonia', 4),
('Project D-2', 'Charlotte, United States', 4),
('Project E-1', 'Dushanbe, Tajikistan', 5),
('Project E-2', 'Vancouver, Canada', 5),
('Project E-3', 'Valletta, Malta', 5),
('Project F-1', 'La Paz, Bolivia', 6),
('Project F-2', 'Budapest, Hungary', 6),
('Project G', 'Detroit, United States', 7),
('Project H-1', 'Ottawa, Canada', 8),
('Project H-2', 'New Orleans, United States', 8),
('Project I-1', 'Kabul, Afghanistan', 9),
('Project I-2', 'Rabat, Morocco', 9),
('Project I-3', 'Istanbul, Turkey', 9),
('Project J-1', 'Santo Domingo, Dominican Republic', 10),
('Project J-2', 'Monaco, Monaco', 10);

-- Insert data into the "employee" table
INSERT INTO employee (
    employee_ssn,
    employee_name,
    employee_address,
    employee_sex,
    employee_birth_date,
    employee_salary,
    employee_supervisor,
    department_number
) VALUES
(
    '005-92-3338',
    'Miriam Doris',
    '3 & 5, Jalan Usj 7/3B, Subang Jaya, Selangor, Malaysia',
    'Female',
    '1901-10-22',
    60833.00,
    NULL,
    1
),
(
    '529-36-7962',
    'Nina Yates',
    '3289 Jenni Walk, Ghor Province, Saghar, Zurni, Afghanistan',
    'Female',
    '1974-02-22',
    783457.00,
    NULL,
    2
),
(
    '035-28-3598',
    'Ian Garza',
    '590 Feil Place, Ghazni Province, Gelan, Afghanistan',
    'Male',
    '1981-01-31',
    65991.00,
    'Nina Yates',
    2
),
(
    '011-54-2889',
    'Julia Burns',
    'Av. Gral. Jose De San Martin Cacique Casimiro Bigua 1867, Río Gallegos, Santa Cruz, Argentina',
    'Female',
    '1942-02-09',
    300427.00,
    NULL,
    3
),
(
    '387-06-7926',
    'Gina Scott',
    'Cacique Casimiro Bigua 1867, Río Gallegos, Santa Cruz, Argentina',
    'Female',
    '1960-08-28',
    44120.00,
    'Julia Burns',
    3
),
(
    '531-48-4598',
    'Sally Brown',
    'Cacique Casimiro Bigua 1867, Río Gallegos, Santa Cruz, Argentina',
    'Female',
    '1975-07-26',
    97077.00,
    'Julia Burns',
    3
),
(
    '363-18-9249',
    'Kelly Farmer',
    'Kolodvorska 118, Lendava, Slovenia',
    'Male',
    '1955-09-15',
    654878.00,
    NULL,
    4
),
(
    '002-16-5499',
    'Kate Logan',
    'Letališka 10, Gozd Martuljek, Slovenia',
    'Female',
    '2000-04-09',
    55486.00,
    'Kelly Farmer',
    4
),
(
    '426-44-4930',
    'Sheila Singleton',
    'Tealand Plaza 4th Floor, Kericho, Kericho, Kenya',
    'Female',
    '1986-03-07',
    495585.00,
    NULL,
    5
),
(
    '335-26-9201',
    'Saul Meyer',
    '111, Sedrenik; Sedrenik, Sarajevo, Bosnia and Herzegovina',
    'Male',
    '1974-05-27',
    142668.00,
    NULL,
    6
),
(
    '449-91-9501',
    'Tommy Wong',
    '63, Brgule; Tuzla, Bosnia and Herzegovina',
    'Male',
    '2000-12-30',
    74079.00,
    'Saul Meyer',
    6
),
(
    '518-43-0773',
    'Nancy Lawson',
    '2000 Las Vegas Blvd S, Las Vegas, Nevada, United States',
    'Female',
    '1929-07-14',
    364426.00,
    NULL,
    7
),
(
    '429-29-9799',
    'Matt Perkins',
    '3570 S Las Vegas Blvd, Paradise, Nevada, United States',
    'Male',
    '1971-11-22',
    199021.00,
    'Nancy Lawson',
    7
),
(
    '362-80-9405',
    'Carol Poole',
    '3131 Las Vegas Blvd S, Las Vegas, Nevada, United States',
    'Female',
    '1994-01-27',
    79545.00,
    'Matt Perkins',
    7
),
(
    '409-10-2448',
    'Amelia Cain',
    '201 E Randolph St, Chicago, Illinois, United States',
    'Female',
    '1915-01-09',
    579027.00,
    NULL,
    8
),
(
    '429-26-8132',
    'Perry Richards',
    '5816 S Hoyne Ave, Chicago, Illinois, United States',
    'Male',
    '1954-01-06',
    321503.00,
    'Amelia Cain',
    8
),
(
    '304-28-9344',
    'Virgil Price',
    'London SW1A 0AA, United Kingdom',
    'Male',
    '1968-03-04',
    291021.00,
    NULL,
    9
),
(
    '503-46-8228',
    'Krista Rice',
    '225 Baker St NW, Atlanta, Georgia, United States',
    'Female',
    '1971-06-01',
    409992.00,
    NULL,
    10
),
(
    '525-70-8761',
    'Shannon Parks',
    '121 Baker St NW, Atlanta, Georgia, United States',
    'Female',
    '1975-11-15',
    190099.00,
    'Krista Rice',
    10
);

-- Insert data into the "hours_worked" table
INSERT INTO hours_worked (
    employee_ssn, project_number, pay_date, employee_work_hours
) VALUES
('005-92-3338', 1, '2024-05-25', 27),
('005-92-3338', 2, '2024-05-25', 82),
('005-92-3338', 3, '2024-05-25', 57),
('529-36-7962', 4, '2024-11-28', 5),
('035-28-3598', 5, '2024-11-28', 99),
('011-54-2889', 6, '2024-04-25', 39),
('387-06-7926', 6, '2024-04-25', 37),
('531-48-4598', 6, '2024-04-25', 16),
('363-18-9249', 7, '2024-02-25', 3),
('002-16-5499', 8, '2024-02-25', 24),
('426-44-4930', 9, '2024-10-05', 53),
('426-44-4930', 10, '2024-10-05', 70),
('426-44-4930', 11, '2024-10-05', 84),
('335-26-9201', 12, '2024-07-21', 90),
('449-91-9501', 13, '2024-07-21', 87),
('518-43-0773', 14, '2024-02-25', 67),
('429-29-9799', 14, '2024-02-25', 43),
('362-80-9405', 14, '2024-02-25', 96),
('409-10-2448', 15, '2024-09-10', 95),
('429-26-8132', 16, '2024-09-10', 3),
('304-28-9344', 17, '2024-04-22', 46),
('304-28-9344', 18, '2024-04-22', 38),
('304-28-9344', 19, '2024-04-22', 20),
('503-46-8228', 20, '2024-08-02', 72),
('525-70-8761', 21, '2024-08-02', 27);

-- Insert data into the "dependent" table
INSERT INTO dependent (
    dependent_first_name,
    employee_ssn,
    dependent_sex,
    dependent_birth_date,
    employee_relationship
) VALUES
('Cathleen', '529-36-7962', 'Female', '1995-08-19', 'Daughter'),
('Margarita', '035-28-3598', 'Female', '2003-12-08', 'Daughter'),
('Tommie', '011-54-2889', 'Male', '1971-09-14', 'Son'),
('Otis', '011-54-2889', 'Male', '1967-12-23', 'Son'),
('Melvin', '531-48-4598', 'Male', '2002-07-14', 'Son'),
('Jon', '363-18-9249', 'Male', '1998-12-22', 'Son'),
('Michael', '002-16-5499', 'Male', '2024-01-01', 'Son'),
('Tasha', '002-16-5499', 'Female', '2024-01-01', 'Daughter'),
('Minerva', '335-26-9201', 'Female', '2001-11-15', 'Daughter'),
('Thad', '449-91-9501', 'Male', '2024-01-04', 'Son'),
('Juliette', '518-43-0773', 'Female', '1970-11-20', 'Daughter'),
('Glenda', '518-43-0773', 'Female', '1964-01-16', 'Daughter'),
('Mandy', '362-80-9405', 'Female', '2020-04-28', 'Daughter'),
('Rodger', '409-10-2448', 'Male', '1959-05-06', 'Son'),
('Emil', '429-26-8132', 'Male', '1984-10-04', 'Son'),
('Kevin', '429-26-8132', 'Male', '1987-04-03', 'Son'),
('Michael', '503-46-8228', 'Male', '2003-07-21', 'Son'),
('Rosemary', '525-70-8761', 'Female', '2000-09-14', 'Daughter');

