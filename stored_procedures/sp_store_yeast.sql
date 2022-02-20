USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_yeast`;

CREATE PROCEDURE sp_store_yeast(
    IN yeastStrain  VARCHAR(100),
    IN yeastLab     VARCHAR(100),
    IN yeastCode    VARCHAR(100),
    IN yeastType    VARCHAR(100),
    IN yeastFloc    VARCHAR(100),
    IN yeastAtten   FLOAT,
    IN yeastMinTemp FLOAT,
    IN yeastMaxTemp FLOAT)

BEGIN
	
    INSERT INTO brewify_db.yeast
    (`yeast_strain`,
     `yeast_lab`,
     `yeast_code`,
     `yeast_type`,
     `yeast_floc`,
     `yeast_atten`,
     `yeast_min_temp`,
     `yeast_max_temp`)
    VALUES
    (yeastStrain,
     yeastLab,
     yeastCode,
     yeastType,
     yeastFloc,
     yeastAtten,
     yeastMinTemp,
     yeastMaxTemp)
    
    ON DUPLICATE KEY UPDATE 
    yeast_strain = COALESCE(yeastStrain, yeast_strain),
    yeast_lab = COALESCE(yeastLab, yeast_lab),
    yeast_code = COALESCE(yeastCode, yeast_code),
    yeast_type = COALESCE(yeastType, yeast_type),
    yeast_floc = COALESCE(yeastFloc, yeast_floc),
    yeast_atten = COALESCE(yeastAtten, yeast_atten),
    yeast_min_temp = COALESCE(yeastMinTemp, yeast_min_temp),
    yeast_max_temp = COALESCE(yeastMaxTemp, yeast_max_temp);

END