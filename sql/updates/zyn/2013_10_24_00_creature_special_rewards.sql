DROP TABLE IF EXISTS `creature_special_rewards`;
CREATE TABLE `creature_special_rewards` (
  `entry` int(11) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `param1` int(11) unsigned NOT NULL,
  `param2` int(11) unsigned NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
