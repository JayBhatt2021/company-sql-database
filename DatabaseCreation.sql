-- company database --
CREATE DATABASE company;

-- department table
CREATE TABLE department (
    department_number SERIAL PRIMARY KEY,
    department_name VARCHAR(80) NOT NULL UNIQUE,
    department_manager VARCHAR(100) NOT NULL,
    manager_start_date DATE NOT NULL
);

-- department_locator table
CREATE TABLE department_locator (
    department_number INT NOT NULL,
    department_location VARCHAR(80) NOT NULL,
    PRIMARY KEY (department_number, department_location),
    FOREIGN KEY (department_number) REFERENCES department (
        department_number
    ) ON UPDATE NO ACTION ON DELETE CASCADE
);

-- company_project table
CREATE TABLE company_project (
    project_number SERIAL PRIMARY KEY,
    project_name VARCHAR(60) NOT NULL UNIQUE,
    project_location VARCHAR(100) NOT NULL,
    department_number INT NOT NULL,
    FOREIGN KEY (department_number) REFERENCES department (
        department_number
    ) ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- employee table
CREATE TABLE employee (
    employee_ssn CHAR(11) PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL UNIQUE,
    employee_address VARCHAR(200) NOT NULL,
    employee_sex VARCHAR(20) NOT NULL,
    employee_birth_date DATE NOT NULL,
    employee_salary MONEY NOT NULL,
    employee_supervisor VARCHAR(100) NULL,
    department_number INT NOT NULL,
    FOREIGN KEY (employee_supervisor) REFERENCES employee (
        employee_name
    ) ON UPDATE NO ACTION ON DELETE NO ACTION,
    FOREIGN KEY (department_number) REFERENCES department (
        department_number
    ) ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- hours_worked table
CREATE TABLE hours_worked (
    employee_ssn CHAR(11) NOT NULL,
    project_number INT NOT NULL,
    pay_date DATE NOT NULL,
    employee_work_hours INT NULL,
    PRIMARY KEY (employee_ssn, project_number, pay_date),
    FOREIGN KEY (employee_ssn) REFERENCES employee (
        employee_ssn
    ) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (project_number) REFERENCES company_project (
        project_number
    ) ON UPDATE NO ACTION ON DELETE CASCADE
);

-- dependent table
CREATE TABLE dependent (
    dependent_first_name VARCHAR(50) NOT NULL,
    employee_ssn CHAR(11) NOT NULL,
    dependent_sex VARCHAR(20) NOT NULL,
    dependent_birth_date DATE NOT NULL,
    employee_relationship VARCHAR(20) NOT NULL,
    PRIMARY KEY (dependent_first_name, employee_ssn),
    FOREIGN KEY (employee_ssn) REFERENCES employee (
        employee_ssn
    ) ON UPDATE CASCADE ON DELETE CASCADE
);

