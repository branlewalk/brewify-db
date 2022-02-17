USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_malt`;

CREATE PROCEDURE sp_get_ingredient_malt(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_malt
    WHERE recipe_id = recipeID;

END