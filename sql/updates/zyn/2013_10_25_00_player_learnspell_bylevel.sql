DROP TABLE IF EXISTS `player_learnspell_bylevel`;
CREATE TABLE `player_learnspell_bylevel` (
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `spellId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`class`,`spellId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
