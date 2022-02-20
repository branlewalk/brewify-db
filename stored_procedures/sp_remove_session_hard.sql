USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_session_hard`;

CREATE PROCEDURE sp_remove_session_hard(
    IN sessionID INT
)

BEGIN
	
    DELETE FROM brewify_db.sesssion 
    WHERE session_id = sessionID AND session_status = 'D';

END