-- CREACIÓN DEL TABLAS

-- 1. REGIONS
CREATE TABLE regions (
    region_id   NUMBER PRIMARY KEY,
    region_name VARCHAR2(50) NOT NULL
);

-- 2. COUNTRIES
CREATE TABLE countries (
    country_id   CHAR(2) PRIMARY KEY,     
    country_name VARCHAR2(50) NOT NULL,  
    region_id    NUMBER NOT NULL,
    CONSTRAINT fk_region FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- 3. LOCATIONS
CREATE TABLE locations (
    location_id    NUMBER PRIMARY KEY,
    street_address VARCHAR2(100),
    postal_code    VARCHAR2(20),
    city           VARCHAR2(50) NOT NULL,
    state_province VARCHAR2(50),
    country_id     CHAR(2) NOT NULL,
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

-- 4. DEPARTMENTS
CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL,
    manager_id      NUMBER,
    location_id     NUMBER NOT NULL,
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- 5. JOBS
CREATE TABLE jobs (
    job_id     VARCHAR2(10) PRIMARY KEY,
    job_title  VARCHAR2(50) NOT NULL,
    min_salary NUMBER,
    max_salary NUMBER
);

-- 6. EMPLOYEES
CREATE TABLE employees (
    employee_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(50),
    last_name     VARCHAR2(50) NOT NULL,
    email         VARCHAR2(50) UNIQUE NOT NULL,
    phone_number  VARCHAR2(20),
    hire_date     DATE NOT NULL,
    job_id        VARCHAR2(10) NOT NULL,
    salary        NUMBER(8,2),
    commission_pct NUMBER(2,2),
    manager_id    NUMBER,
    department_id NUMBER,
    CONSTRAINT fk_job FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

-- 7. JOB_HISTORY
CREATE TABLE job_history (
    employee_id   NUMBER NOT NULL,
    start_date    DATE NOT NULL,
    end_date      DATE NOT NULL,
    job_id        VARCHAR2(10) NOT NULL,
    department_id NUMBER,
    CONSTRAINT pk_job_history PRIMARY KEY (employee_id, start_date),
    CONSTRAINT fk_jh_employee FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    CONSTRAINT fk_jh_job FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    CONSTRAINT fk_jh_dept FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
