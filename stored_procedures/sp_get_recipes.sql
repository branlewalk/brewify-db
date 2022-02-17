USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_recipes`;

CREATE PROCEDURE sp_get_recipes()

BEGIN
	
    SELECT * FROM brewify_db.recipe
    WHERE recipe_status = 'A';

END