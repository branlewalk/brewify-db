USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_malts`;

CREATE PROCEDURE sp_get_malts()

BEGIN
	
    SELECT * FROM brewify_db.malt;

END