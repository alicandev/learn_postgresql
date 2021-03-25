CREATE INDEX products_product_id_idx
    ON manufacturing.products
        USING btree
            (product_id)
;