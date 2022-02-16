------------------------------------
--- Get Malts - Stored Procedure ---
------------------------------------

--- Log
----- Created Procedure 2/15/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_malts`;
DELIMITER $$
CREATE PROCEDURE sp_get_malts()

BEGIN
	
    SELECT * FROM brewify_db.malt;

END$$