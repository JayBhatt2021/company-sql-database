-- View #9: Employee Assigned to the Most Projects
CREATE VIEW employee_most_projects AS
SELECT
    e.employee_name,
    COUNT(h.project_number) AS number_of_projects
FROM
    employee AS e
INNER JOIN
    hours_worked AS h ON e.employee_ssn = h.employee_ssn
GROUP BY
    e.employee_name
ORDER BY
    number_of_projects DESC
LIMIT 1;

-- Example usage of the view
SELECT * FROM employee_most_projects;

