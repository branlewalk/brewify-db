USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_recipe`;

CREATE PROCEDURE sp_get_recipe(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.recipe
    WHERE recipe_id = recipeID AND recipe_status = 'A';

END