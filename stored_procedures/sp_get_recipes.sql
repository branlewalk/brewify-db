--------------------------------------
--- Get Recipes - Stored Procedure ---
--------------------------------------

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_recipes`;
DELIMITER $$
CREATE PROCEDURE sp_get_recipes()

BEGIN
	
    SELECT * FROM brewify_db.recipe
    WHERE recipe_status = 'A';

END$$