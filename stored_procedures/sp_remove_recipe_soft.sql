USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_recipe_soft`;

CREATE PROCEDURE sp_remove_recipe_soft(
    IN recipeID INT
)

BEGIN
	
    UPDATE brewify_db.recipe
    SET recipe_status = 'D'
    WHERE recipe_id = recipeID;

END