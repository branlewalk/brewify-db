USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_ingredient_hops`;

CREATE PROCEDURE sp_get_ingredient_hops(
    IN recipeID INT
)

BEGIN
	
    SELECT * FROM brewify_db.ingredient_hop
    WHERE recipe_id = recipeID;

END