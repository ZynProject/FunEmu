CREATE TABLE `guild_level_system` (
	`gID` INT(10) UNSIGNED NOT NULL,
	`level` TINYINT(3) UNSIGNED NULL DEFAULT NULL,
	`current_xp` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`gID`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB;