USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_other`;

CREATE PROCEDURE sp_get_ingredient_other(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_other
    WHERE recipe_id = recipeID;

END