-- Table: manufacturing.products

-- DROP TABLE manufacturing.products;

CREATE TABLE manufacturing.products
(
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
)

TABLESPACE pg_default;

ALTER TABLE manufacturing.products
    OWNER to postgres;