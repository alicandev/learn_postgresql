CREATE TABLE human_resources.departments (
    department_id integer NOT NULL,
    department_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    building character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (department_id)
) TABLESPACE pg_default;
ALTER TABLE human_resources.departments OWNER to postgres;

CREATE TABLE human_resources.employees (
    employee_id integer NOT NULL,
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    department_id integer NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (employee_id),
    CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id)
        REFERENCES human_resources.departments (department_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)TABLESPACE pg_default;
ALTER TABLE human_resources.employees OWNER to postgres;