USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_hop`;

CREATE PROCEDURE sp_store_hop(
    IN hopsVariety VARCHAR(100),
    IN hopsType    VARCHAR(100),
    IN hopsAA      FLOAT,
    IN hopsUse     VARCHAR(100))

BEGIN
	
    INSERT INTO brewify_db.hops
    (`hops_variety`,
     `hops_type`,
     `hops_aa`,
     `hops_use`)
    VALUES
    (hopsVariety,
     hopsType,
     hopsAA,
     hopsUse)
    
    ON DUPLICATE KEY UPDATE 
    hops_variety = COALESCE(hopsVariety, hops_variety),
    hops_type = COALESCE(hopsType, hops_type),
    hops_aa = COALESCE(hopsAA, hops_aa),
    hops_use = COALESCE(hopsUse, hops_use);

END