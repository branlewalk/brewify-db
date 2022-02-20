USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_temp`;

CREATE PROCEDURE sp_store_temp(
    IN tempKettle   VARCHAR(100),
    IN tempData     FLOAT,
    IN sessionID    INT)

BEGIN
	
    INSERT INTO brewify_db.temps
    (`temp_kettle`,
     `temp_data`,
     `session_id`)
    VALUES
    (tempKettle,
     tempData,
     sessionID);

END