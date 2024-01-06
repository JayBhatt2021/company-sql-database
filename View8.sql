-- View #8: Department with the Most Projects
CREATE VIEW department_most_projects AS
SELECT
    d.department_name,
    COUNT(p.project_number) AS number_of_projects
FROM
    department AS d
INNER JOIN
    company_project AS p ON d.department_number = p.department_number
GROUP BY
    d.department_name
ORDER BY
    number_of_projects DESC
LIMIT 1;

-- Example usage of the view
SELECT * FROM department_most_projects;

