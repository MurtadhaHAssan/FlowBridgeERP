USE FlowBridgeERP;

SELECT * FROM employees;

SELECT *
FROM requests
WHERE status = 'Approved';

SELECT
employees.full_name,
requests.request_type,
requests.status
FROM employees
JOIN requests
ON employees.employee_id = requests.employee_id;

SELECT
employees.full_name,
departments.department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id;

SELECT
employees.full_name,
COUNT(requests.request_id) AS total_requests
FROM employees
JOIN requests
ON employees.employee_id = requests.employee_id
GROUP BY employees.full_name;

SELECT
employees.full_name,
departments.department_name,
requests.request_type,
requests.status,
approvals.approver_name,
approvals.decision
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
JOIN requests
ON employees.employee_id = requests.employee_id
JOIN approvals
ON requests.request_id = approvals.request_id;