-- View #6: Employee Project Hours
CREATE VIEW employee_project_hours AS
SELECT
    e.employee_name,
    p.project_name,
    SUM(h.employee_work_hours) AS total_project_hours
FROM
    employee AS e
INNER JOIN
    hours_worked AS h ON e.employee_ssn = h.employee_ssn
INNER JOIN
    company_project AS p ON h.project_number = p.project_number
GROUP BY
    e.employee_name,
    p.project_name
ORDER BY
    e.employee_name,
    p.project_name;

-- Example usage of the view
SELECT * FROM employee_project_hours;

