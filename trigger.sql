CREATE TABLE activityrecord_audit LIKE activityrecord;
INSERT activityrecord_audit SELECT * FROM activityrecord;

TRUNCATE TABLE activityrecord_audit

DELIMITER $$
CREATE TRIGGER before_activity_delete
	BEFORE DELETE ON activityrecord
    FOR EACH ROW
BEGIN
    
    INSERT INTO activityrecord_audit
    SET action = 'insert',
    `activityrecord_audit`.`Dog ID` = `Dog ID`,
    `activityrecord_audit`.`Staff ID` = `Staff ID`,
    `activityrecord_audit`.`Activity` = `Activity`,
    `activityrecord_audit`.`Date` = `Date`;
END$$
DELIMITER ;
