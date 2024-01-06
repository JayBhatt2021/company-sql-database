-- View #4: Departments Projects
CREATE VIEW department_projects AS
SELECT
    d.department_name,
    p.project_name
FROM
    department AS d
INNER JOIN
    company_project AS p ON d.department_number = p.department_number
ORDER BY
    d.department_name,
    p.project_name;

-- Example usage of the view
SELECT * FROM department_projects;

