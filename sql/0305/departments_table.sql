-- Table: human_resources.departments

-- DROP TABLE human_resources.departments;

CREATE TABLE human_resources.departments
(
    department_id integer NOT NULL,
    department_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    building character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (department_id)
)

TABLESPACE pg_default;

ALTER TABLE human_resources.departments
    OWNER to postgres;