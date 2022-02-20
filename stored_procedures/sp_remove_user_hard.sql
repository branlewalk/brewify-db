USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_user_hard`;

CREATE PROCEDURE sp_remove_user_hard(
    IN userID INT
)

BEGIN
	
    DELETE FROM brewify_db.user 
    WHERE user_id = sessionID AND user_status = 'D';

END