USE FlowBridgeERP;

DROP TABLE IF EXISTS approvals;
DROP TABLE IF EXISTS requests;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

CREATE TABLE requests (
    request_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    request_type VARCHAR(100),
    status VARCHAR(20),
    request_date DATE,

    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
);

CREATE TABLE approvals (
    approval_id INT PRIMARY KEY AUTO_INCREMENT,
    request_id INT,
    approver_name VARCHAR(100),
    decision VARCHAR(20),
    approval_date DATE,

    FOREIGN KEY (request_id)
    REFERENCES requests(request_id)
);