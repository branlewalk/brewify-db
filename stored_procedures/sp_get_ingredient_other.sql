-----------------------------------------------
--- Get Ingredient Other - Stored Procedure ---
-----------------------------------------------

--- Log
----- Created Procedure 2/15/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_other`;
DELIMITER $$
CREATE PROCEDURE sp_get_ingredient_other(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_other
    WHERE recipe_id = recipeID;

END$$