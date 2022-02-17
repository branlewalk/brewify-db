USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_session`;

CREATE PROCEDURE sp_get_session(
    IN recipeID  INT
)

BEGIN
	
    SELECT * FROM brewify_db.session
    WHERE recipe_id = recipeID AND recipe_status = 'A';

END