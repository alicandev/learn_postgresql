-- View tables from the kinetico database
SELECT * FROM manufacturing.products;
SELECT * FROM human_resources.employees WHERE employee_id = 502;

-- Insert values into the employees database
INSERT INTO human_resources.employees(
    employee_id, first_name, last_name, hire_date
) VALUES (502, 'Samantha', 'Kennedy', '2020-04-01');

-- Impersonate the hr_manager
SET ROLE hr_manager;

-- Switch back to the postgres superuser
RESET ROLE;

-- Check who you're logged in as
SELECT current_user;

-- Give hr_manager permissions in the database
GRANT USAGE ON SCHEMA human_resources TO hr_manager;
GRANT SELECT ON ALL TABLES IN SCHEMA human_resources TO hr_manager;
GRANT ALL ON ALL TABLES IN SCHEMA human_resources TO hr_manager;

-- Remove the hr_manager role from the database
RESET ROLE;
REVOKE ALL ON ALL TABLES IN SCHEMA human_resources FROM hr_manager;
REVOKE USAGE ON SCHEMA human_resources FROM hr_manager;
DROP ROLE hr_manager;
