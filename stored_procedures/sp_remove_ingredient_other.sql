USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_ingredient_other`;

CREATE PROCEDURE sp_remove_ingredient_other(
    IN otherID   INT,
    IN recipeID INT
)

BEGIN
	
    DELETE FROM brewify_db.ingredient_other 
    WHERE other_id = otherID AND recipe_id = recipeID;

END