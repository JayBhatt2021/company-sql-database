-- View #10: Project with the Most Hours
CREATE VIEW project_most_hours AS
SELECT
    p.project_name,
    SUM(h.employee_work_hours) AS total_project_hours
FROM
    company_project AS p
INNER JOIN
    hours_worked AS h ON p.project_number = h.project_number
GROUP BY
    p.project_name
ORDER BY
    total_project_hours DESC
LIMIT 1;

-- Example usage of the view
SELECT * FROM project_most_hours;

