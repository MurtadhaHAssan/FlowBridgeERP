USE FlowBridgeERP;

INSERT INTO departments (department_name)
VALUES
('IT'),
('Finance'),
('Human Resources');

INSERT INTO employees (full_name, email, department_id)
VALUES
('Murtadha Hasan', 'murtadha@email.com', 1),
('Alaa Khaled', 'alaa@email.com', 2),
('Mohammad Ibrahim', 'moha@email.com', 3);

INSERT INTO requests (employee_id, request_type, status, request_date)
VALUES
(1, 'Laptop Purchase', 'Pending', '2026-07-14'),
(2, 'Annual Leave', 'Approved', '2026-07-13'),
(3, 'Software License', 'Rejected', '2026-07-12');

INSERT INTO approvals (request_id, approver_name, decision, approval_date)
VALUES
(1, 'IT Manager', 'Pending', '2026-07-14'),
(2, 'Finance Manager', 'Approved', '2026-07-13'),
(3, 'HR Manager', 'Rejected', '2026-07-12');