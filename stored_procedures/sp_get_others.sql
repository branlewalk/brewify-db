USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_others`;

CREATE PROCEDURE sp_get_others()

BEGIN
	
    SELECT * FROM brewify_db.other;

END