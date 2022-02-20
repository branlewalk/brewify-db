USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_recipe_hard`;

CREATE PROCEDURE sp_remove_recipe_hard(
    IN recipeID INT
)

BEGIN
	
    DELETE FROM brewify_db.recipe 
    WHERE recipe_id = recipeID AND recipe_status = 'D';

END