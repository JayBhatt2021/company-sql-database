-- View #2: Department Project Hours
CREATE VIEW department_project_hours AS
SELECT
    d.department_name,
    p.project_name,
    SUM(h.employee_work_hours) AS total_work_hours
FROM
    department AS d
INNER JOIN
    company_project AS p ON d.department_number = p.department_number
INNER JOIN
    hours_worked AS h ON p.project_number = h.project_number
GROUP BY
    d.department_name,
    p.project_name
ORDER BY
    d.department_name,
    p.project_name;

-- Example usage of the view
SELECT * FROM department_project_hours;

