USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_yeasts`;

CREATE PROCEDURE sp_get_yeasts()

BEGIN
	
    SELECT * FROM brewify_db.yeast;

END