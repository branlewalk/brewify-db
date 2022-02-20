USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_malt`;

CREATE PROCEDURE sp_store_malt(
    IN maltName      VARCHAR(100),
    IN maltOrigin    VARCHAR(100),
    IN maltCategory  VARCHAR(100),
    IN maltType      VARCHAR(100),
    IN maltLovibond  INT,
    IN maltPpg       FLOAT)

BEGIN
	
    INSERT INTO brewify_db.malt
    (`malt_name`,
     `malt_origin`,
     `malt_category`,
     `malt_type`,
     `malt_lovibond`,
     `malt_ppg`)
    VALUES
    (maltName,
     maltOrigin,
     maltCategory,
     maltType,
     maltLovibond,
     maltPpg)
    
    ON DUPLICATE KEY UPDATE 
    malt_name = COALESCE(maltName, malt_name),
    malt_origin = COALESCE(maltOrigin, malt_origin),
    malt_category = COALESCE(maltCategory, malt_category),
    malt_type = COALESCE(maltType, malt_type),
    malt_lovibond = COALESCE(maltLovibond, malt_lovibond),
    malt_ppg = COALESCE(maltPpg, malt_ppg);

END