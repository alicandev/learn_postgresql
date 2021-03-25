CREATE TABLE manufacturing.categories (
    category_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    market character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT categories_pkey PRIMARY KEY (category_id)
) TABLESPACE pg_default;
ALTER TABLE manufacturing.categories OWNER to postgres;

CREATE TABLE manufacturing.products (
    product_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    power integer,
    manufacturing_cost money NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT products_pkey PRIMARY KEY (product_id),
    CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id)
        REFERENCES manufacturing.categories (category_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
) TABLESPACE pg_default;
ALTER TABLE manufacturing.products OWNER to postgres;