USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_ingredient_malt`;

CREATE PROCEDURE sp_remove_ingredient_malt(
    IN maltID   INT,
    IN recipeID INT
)

BEGIN
	
    DELETE FROM brewify_db.ingredient_malt 
    WHERE malt_id = maltID AND recipe_id = recipeID;

END