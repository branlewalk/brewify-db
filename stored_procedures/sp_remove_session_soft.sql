USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_remove_session_soft`;

CREATE PROCEDURE sp_remove_session_soft(
    IN sesisonID INT
)

BEGIN
	
    UPDATE brewify_db.session
    SET session_status = 'D'
    WHERE session_id = sessionID;

END