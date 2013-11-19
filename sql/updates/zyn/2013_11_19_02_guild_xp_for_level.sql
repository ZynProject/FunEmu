CREATE TABLE `guild_xp_for_level` (
	`level` TINYINT(3) UNSIGNED NOT NULL,
	`xp_needed` INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`level`)
)
COLLATE='utf8_general_ci'
ENGINE=MyISAM
ROW_FORMAT=FIXED;