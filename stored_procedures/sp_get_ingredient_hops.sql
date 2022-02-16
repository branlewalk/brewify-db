----------------------------------------------
--- Get Ingredient Hops - Stored Procedure ---
----------------------------------------------

--- Log
----- Created Procedure 2/15/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_hops`;
DELIMITER $$
CREATE PROCEDURE sp_get_ingredient_hops(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_hops
    WHERE recipe_id = recipeID;

END$$