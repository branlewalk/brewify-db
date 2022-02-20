USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_user_soft`;

CREATE PROCEDURE sp_remove_user_soft(
    IN userID INT
)

BEGIN
	
    UPDATE brewify_db.user
    SET user_status = 'D'
    WHERE user_id = userID;

END