------------------------------------------------
--- Create Ingredient - Malt Store Procedure ---
------------------------------------------------

--- Log
----- Created Procedure 2/14/2022

USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_ingredient_malt`;
DELIMITER $$
CREATE PROCEDURE sp_store_ingredient_malt(
	IN maltId          INT,
	IN recipeId        INT,
	IN maltIngredQty   FLOAT,
	IN maltIngredTime  INT,
	IN maltIngredType  VARCHAR(100),
	IN maltIngredTemp  FLOAT,
	IN maltIngredStage VARCHAR(100)
)

BEGIN
	
    INSERT INTO `brewify_db`.`ingredient_malt`
    (`malt_id`,
    `recipe_id`,
    `malt_ingred_qty`,
    `malt_ingred_time`,
    `malt_ingred_type`,
    `malt_ingred_temp`,
    `malt_ingred_stage`)
    VALUES
    (maltId,
    recipeId,
    maltIngredQty,
    maltIngredTime,
    maltIngredType,
    maltIngredTemp,
    maltIngredStage)
    
    ON DUPLICATE KEY UPDATE 
    malt_id = COALESCE(maltId, malt_id),
    recipe_id = COALESCE(recipeID, recipe_id),
    malt_ingred_qty = COALESCE(maltIngredQty, malt_ingred_qty),
    malt_ingred_time = COALESCE(maltIngredTime, malt_ingred_time),
    malt_ingred_type = COALESCE(maltIngredType, malt_ingred_type),
    malt_ingred_temp = COALESCE(maltIngredTemp, malt_ingred_temp),
    malt_ingred_stage = COALESCE(maltIngredStage, malt_ingred_stage);

END$$
