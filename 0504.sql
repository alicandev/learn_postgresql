CREATE INDEX employees_employee_id_idx
    ON human_resources.employees
        USING btree (employee_id)
;

CREATE INDEX employees_last_name_idx
    ON human_resources.employees
        USING btree (last_name)
;

ALTER TABLE human_resources.employees
    ALTER COLUMN department_id
        SET DEFAULT 800
;

ALTER TABLE human_resources.employees
    ADD CONSTRAINT employees_hire_date
        CHECK (hire_date > '2020-01-01') NOT VALID
;
