-------------------------------------
--- Get Others - Stored Procedure ---
-------------------------------------

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_others`;
DELIMITER $$
CREATE PROCEDURE sp_get_others()

BEGIN
	
    SELECT * FROM brewify_db.other;

END$$