-------------------------------------------------
--- Create Ingredient - Other Store Procedure ---
-------------------------------------------------

--- Log
----- Created Procedure 2/14/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_ingredient_other`;
DELIMITER $$
CREATE PROCEDURE sp_store_ingredient_other(
	IN otherId          INT,
	IN recipeId         INT,
	IN otherIngredQty   FLOAT,
	IN otherIngredTime  INT
)

BEGIN
	
    INSERT INTO `brewify_db`.`ingredient_other`
    (`other_id`,
    `recipe_id`,
    `other_ingred_qty`,
    `other_ingred_time`)
    VALUES
    (otherId,
    recipeId,
    otherIngredQty,
    otherIngredTime)
    
    ON DUPLICATE KEY UPDATE 
    other_id = COALESCE(otherId, other_id),
    recipe_id = COALESCE(recipeID, recipe_id),
    other_ingred_qty = COALESCE(otherIngredQty, other_ingred_qty),
    other_ingred_time = COALESCE(otherIngredTime, other_ingred_time);

END$$
