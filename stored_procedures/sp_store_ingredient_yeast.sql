-------------------------------------------------
--- Create Ingredient - Yeast Store Procedure ---
-------------------------------------------------

--- Log
----- Created Procedure 2/14/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_ingredient_yeast`;
DELIMITER $$
CREATE PROCEDURE sp_store_ingredient_yeast(
	IN yeastId             INT,
	IN recipeId            INT,
	IN yeastIngredQty      FLOAT,
	IN yeastIngredStarter  VARCHAR(100),
	IN yeastIngredTime     INT
)

BEGIN
	
    INSERT INTO `brewify_db`.`ingredient_yeast`
    (`yeast_id`,
    `recipe_id`,
    `yeast_ingred_qty`,
    `yeast_ingred_starter`,
    `yeast_ingred_time`)
    VALUES
    (yeastId,
    recipeId,
    yeastIngredQty,
    yeastIngredStarter,
    yeastIngredTime)
    
    ON DUPLICATE KEY UPDATE 
    yeast_id = COALESCE(yeastId, yeast_id),
    recipe_id = COALESCE(recipeID, recipe_id),
    yeast_ingred_qty = COALESCE(yeastIngredQty, yeast_ingred_qty),
    yeast_ingred_starter = COALESCE(yeastIngredStarter, yeast_ingred_starter),
    yeast_ingred_time = COALESCE(yeastIngredTime, yeast_ingred_time);

END$$
