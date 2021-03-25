SELECT name, manufacturing_cost, category_id
FROM manufacturing.products
WHERE category_id = 3
AND manufacturing_cost < '$10'
;