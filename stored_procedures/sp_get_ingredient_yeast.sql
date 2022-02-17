USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_yeast`;

CREATE PROCEDURE sp_get_ingredient_yeast(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_yeast
    WHERE recipe_id = recipeID;

END