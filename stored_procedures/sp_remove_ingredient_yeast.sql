USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_ingredient_yeast`;

CREATE PROCEDURE sp_remove_ingredient_yeast(
    IN yeastID   INT,
    IN recipeID INT
)

BEGIN
	
    DELETE FROM brewify_db.ingredient_yeast 
    WHERE yeast_id = yeastID AND recipe_id = recipeID;

END