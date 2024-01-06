-- View #5: Supervisor Employees
CREATE VIEW supervisor_employees AS
SELECT
    employee_supervisor,
    employee_name
FROM
    employee
WHERE
    employee_supervisor IS NOT NULL
ORDER BY
    employee_supervisor,
    employee_name;

-- Example usage of the view
SELECT * FROM supervisor_employees;

