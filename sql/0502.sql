ALTER TABLE manufacturing.products
    ALTER COLUMN category_id
        SET DEFAULT 4
;

INSERT INTO manufacturing.products(
    product_id, name, power, manufacturing_cost
) VALUES ('KE250', 'K-Eco 250w Solar Panel', 250, 325.00)
;

SELECT * FROM manufacturing.products
;
