ALTER TABLE manufacturing.categories
    ADD CONSTRAINT categories_market_check
        CHECK (market = 'domestic' OR market = 'industrial')
;