USE brewify_db;

DROP PROCEDURE IF EXISTS `sp_store_other`;

CREATE PROCEDURE sp_store_other(
    IN otherName VARCHAR(100),
    IN otherType VARCHAR(100),
    IN otherUse  VARCHAR(100))

BEGIN
	
    INSERT INTO brewify_db.other
    (`other_name`,
     `other_type`,
     `other_use`)
    VALUES
    (otherName,
     otherType,
     otherUse)
    
    ON DUPLICATE KEY UPDATE 
    other_name = COALESCE(otherName, other_name),
    other_type = COALESCE(otherType, other_type),
    otherUse = COALESCE(otherUse, otherUse);

END