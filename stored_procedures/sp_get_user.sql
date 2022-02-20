USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_user`;

CREATE PROCEDURE sp_get_user(
    IN userID INT
)

BEGIN
	
    SELECT * FROM brewify_db.user
    WHERE user_id = userID;

END