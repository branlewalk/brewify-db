-----------------------------------
--- Get Hops - Stored Procedure ---
-----------------------------------

--- Log
----- Created Procedure 2/15/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_hops`;
DELIMITER $$
CREATE PROCEDURE sp_get_hops()

BEGIN
	
    SELECT * FROM brewify_db.hops;

END$$