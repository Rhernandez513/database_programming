CREATE TABLE activityrecord_audit LIKE activityrecord;
-- INSERT activityrecord_audit SELECT * FROM activityrecord;

-- TRUNCATE TABLE activityrecord_audit

DELIMITER $$
CREATE TRIGGER before_activity_delete
	BEFORE DELETE ON activityrecord
    FOR EACH ROW
BEGIN
    
    INSERT INTO activityrecord_audit
    -- SET action = 'insert',
	SET action = 'update',
    `activityrecord_audit`.`Dog ID` = OLD.`Dog ID`,
    `activityrecord_audit`.`Staff ID` = OLD.`Staff ID`,
    `activityrecord_audit`.`Activity` = OLD.`Activity`,
    `activityrecord_audit`.`Date` = OLD.`Date`;
END$$
DELIMITER ;
