USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_hops`;

CREATE PROCEDURE sp_get_hops()

BEGIN
	
    SELECT * FROM brewify_db.hops;

END