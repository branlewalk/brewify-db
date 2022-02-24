USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_ingredient_hops`;

CREATE PROCEDURE sp_remove_ingredient_hops(
    IN hopsID   INT,
    IN recipeID INT
)

BEGIN
	
    DELETE FROM brewify_db.ingredient_hop 
    WHERE hops_id = hopsID AND recipe_id = recipeID;

END