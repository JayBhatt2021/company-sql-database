-- View #3: Department Locations
CREATE VIEW department_locations AS
SELECT
    dep.department_name,
    dep_loc.department_location
FROM
    department AS dep
INNER JOIN
    department_locator AS dep_loc
    ON dep.department_number = dep_loc.department_number
ORDER BY
    dep.department_name;

-- Example usage of the view
SELECT * FROM department_locations;

