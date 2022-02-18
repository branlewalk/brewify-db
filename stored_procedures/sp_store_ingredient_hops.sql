USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_ingredient_hops`;

CREATE PROCEDURE sp_store_ingredient_hops(
	IN hopsId          INT,
	IN recipeId        INT,
	IN hopsIngredQty   FLOAT,
	IN hopsIngredTime  INT,
	IN hopsIngredUse   VARCHAR(100)
)

BEGIN
	
    INSERT INTO `brewify_db`.`ingredient_hop`
    (`hops_id`,
    `recipe_id`,
    `hops_ingred_qty`,
    `hops_ingred_time`,
    `hops_ingred_use`)
    VALUES
    (hopsId,
    recipeId,
    hopsIngredQty,
    hopsIngredTime,
    hopsIngredUse)
    
    ON DUPLICATE KEY UPDATE 
    hops_id = COALESCE(hopsId, hops_id),
    recipe_id = COALESCE(recipeID, recipe_id),
    hops_ingred_qty = COALESCE(hopsIngredQty, hops_ingred_qty),
    hops_ingred_time = COALESCE(hopsIngredTime, hops_ingred_time),
    hops_ingred_use = COALESCE(hopsIngredUse, hops_ingred_use);

END
