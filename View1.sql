-- View #1: Dependent Names Associated with Each Employee
CREATE VIEW employee_dependent_names AS
SELECT
    e.employee_name,
    d.dependent_first_name AS dependent_name
FROM
    employee AS e
INNER JOIN
    dependent AS d ON e.employee_ssn = d.employee_ssn
ORDER BY
    e.employee_name,
    dependent_name;

-- Example usage of the view
SELECT * FROM employee_dependent_names;

