USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_get_temps`;

CREATE PROCEDURE sp_get_temps(
    IN beginDateTime DATETIME,
    IN endDateTime   DATETIME,
    IN sessionID     INT
)

BEGIN
	
    SELECT * FROM brewify_db.temps
    WHERE temp_created BETWEEN beginDateTime AND endDateTime;

END