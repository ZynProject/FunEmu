-- --------------------------------------------------------
-- Host:                         hwow.de
-- Server Version:               5.1.66-0+squeeze1 - (Debian)
-- Server Betriebssystem:        debian-linux-gnu
-- HeidiSQL Version:             8.1.0.4587
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


CREATE TABLE IF NOT EXISTS `player_learnspell_bylevel` (
  `class` tinyint(3) unsigned NOT NULL ,
  `level` tinyint(3) unsigned NOT NULL ,
  `spellId` int(11) unsigned NOT NULL ,
  PRIMARY KEY (`class`,`spellId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DELETE FROM `player_learnspell_bylevel`;
/*!40000 ALTER TABLE `player_learnspell_bylevel` DISABLE KEYS */;
INSERT INTO `player_learnspell_bylevel` (`class`, `level`, `spellId`) VALUES
	(1, 9, 71),
	(1, 12, 72),
	(1, 4, 100),
	(1, 8, 284),
	(1, 16, 285),
	(1, 68, 469),
	(1, 20, 674),
	(1, 18, 676),
	(1, 16, 694),
	(1, 40, 750),
	(1, 4, 772),
	(1, 20, 845),
	(1, 28, 871),
	(1, 14, 1160),
	(1, 26, 1161),
	(1, 30, 1464),
	(1, 24, 1608),
	(1, 36, 1680),
	(1, 8, 1715),
	(1, 50, 1719),
	(1, 69, 2048),
	(1, 34, 2458),
	(1, 16, 2565),
	(1, 10, 2687),
	(1, 6, 3127),
	(1, 70, 3411),
	(1, 12, 5242),
	(1, 22, 5246),
	(1, 24, 5308),
	(1, 26, 6178),
	(1, 24, 6190),
	(1, 22, 6192),
	(1, 6, 6343),
	(1, 10, 6546),
	(1, 20, 6547),
	(1, 30, 6548),
	(1, 38, 6552),
	(1, 14, 6572),
	(1, 24, 6574),
	(1, 1, 6673),
	(1, 30, 7369),
	(1, 34, 7379),
	(1, 12, 7384),
	(1, 18, 8198),
	(1, 28, 8204),
	(1, 38, 8205),
	(1, 38, 8820),
	(1, 32, 11549),
	(1, 42, 11550),
	(1, 52, 11551),
	(1, 34, 11554),
	(1, 44, 11555),
	(1, 54, 11556),
	(1, 32, 11564),
	(1, 40, 11565),
	(1, 48, 11566),
	(1, 56, 11567),
	(1, 40, 11572),
	(1, 50, 11573),
	(1, 60, 11574),
	(1, 46, 11578),
	(1, 48, 11580),
	(1, 58, 11581),
	(1, 44, 11600),
	(1, 54, 11601),
	(1, 46, 11604),
	(1, 54, 11605),
	(1, 40, 11608),
	(1, 50, 11609),
	(1, 20, 12678),
	(1, 32, 18499),
	(1, 20, 20230),
	(1, 30, 20252),
	(1, 60, 20569),
	(1, 32, 20658),
	(1, 40, 20660),
	(1, 48, 20661),
	(1, 56, 20662),
	(1, 64, 23920),
	(1, 40, 23922),
	(1, 48, 23923),
	(1, 54, 23924),
	(1, 60, 23925),
	(1, 62, 25202),
	(1, 70, 25203),
	(1, 68, 25208),
	(1, 68, 25231),
	(1, 65, 25234),
	(1, 70, 25236),
	(1, 61, 25241),
	(1, 69, 25242),
	(1, 66, 25258),
	(1, 67, 25264),
	(1, 63, 25269),
	(1, 60, 25286),
	(1, 60, 25288),
	(1, 60, 25289),
	(1, 66, 29707),
	(1, 70, 30324),
	(1, 70, 30356),
	(1, 70, 30357),
	(1, 6, 34428),
	(1, 71, 46845),
	(1, 78, 47436),
	(1, 79, 47437),
	(1, 74, 47439),
	(1, 80, 47440),
	(1, 72, 47449),
	(1, 76, 47450),
	(1, 76, 47465),
	(1, 73, 47470),
	(1, 80, 47471),
	(1, 74, 47474),
	(1, 79, 47475),
	(1, 75, 47487),
	(1, 80, 47488),
	(1, 73, 47501),
	(1, 78, 47502),
	(1, 72, 47519),
	(1, 77, 47520),
	(1, 75, 55694),
	(1, 80, 57755),
	(1, 80, 57823),
	(1, 71, 64382),
	(2, 1, 465),
	(2, 6, 498),
	(2, 10, 633),
	(2, 6, 639),
	(2, 34, 642),
	(2, 20, 643),
	(2, 14, 647),
	(2, 40, 750),
	(2, 8, 853),
	(2, 20, 879),
	(2, 10, 1022),
	(2, 22, 1026),
	(2, 40, 1032),
	(2, 26, 1038),
	(2, 30, 1042),
	(2, 18, 1044),
	(2, 8, 1152),
	(2, 30, 2800),
	(2, 50, 2812),
	(2, 8, 3127),
	(2, 38, 3472),
	(2, 42, 4987),
	(2, 20, 5502),
	(2, 24, 5588),
	(2, 40, 5589),
	(2, 24, 5599),
	(2, 28, 5614),
	(2, 36, 5615),
	(2, 46, 6940),
	(2, 16, 7294),
	(2, 13, 7328),
	(2, 38, 10278),
	(2, 10, 10290),
	(2, 30, 10291),
	(2, 50, 10292),
	(2, 60, 10293),
	(2, 26, 10298),
	(2, 36, 10299),
	(2, 46, 10300),
	(2, 56, 10301),
	(2, 54, 10308),
	(2, 50, 10310),
	(2, 44, 10312),
	(2, 52, 10313),
	(2, 60, 10314),
	(2, 60, 10318),
	(2, 24, 10322),
	(2, 36, 10324),
	(2, 24, 10326),
	(2, 46, 10328),
	(2, 54, 10329),
	(2, 20, 13819),
	(2, 4, 19740),
	(2, 14, 19742),
	(2, 22, 19746),
	(2, 20, 19750),
	(2, 30, 19752),
	(2, 12, 19834),
	(2, 22, 19835),
	(2, 32, 19836),
	(2, 42, 19837),
	(2, 52, 19838),
	(2, 24, 19850),
	(2, 34, 19852),
	(2, 44, 19853),
	(2, 54, 19854),
	(2, 28, 19876),
	(2, 32, 19888),
	(2, 36, 19891),
	(2, 40, 19895),
	(2, 52, 19896),
	(2, 44, 19897),
	(2, 56, 19898),
	(2, 48, 19899),
	(2, 60, 19900),
	(2, 26, 19939),
	(2, 34, 19940),
	(2, 42, 19941),
	(2, 50, 19942),
	(2, 58, 19943),
	(2, 30, 20116),
	(2, 22, 20164),
	(2, 30, 20165),
	(2, 38, 20166),
	(2, 20, 20217),
	(2, 4, 20271),
	(2, 48, 20772),
	(2, 60, 20773),
	(2, 40, 20922),
	(2, 50, 20923),
	(2, 60, 20924),
	(2, 60, 24239),
	(2, 52, 24274),
	(2, 44, 24275),
	(2, 60, 25290),
	(2, 60, 25291),
	(2, 60, 25292),
	(2, 16, 25780),
	(2, 52, 25782),
	(2, 60, 25898),
	(2, 60, 25916),
	(2, 60, 25918),
	(2, 54, 25984),
	(2, 20, 26573),
	(2, 62, 27135),
	(2, 70, 27136),
	(2, 66, 27137),
	(2, 68, 27138),
	(2, 69, 27139),
	(2, 70, 27140),
	(2, 70, 27141),
	(2, 65, 27142),
	(2, 65, 27143),
	(2, 70, 27149),
	(2, 66, 27150),
	(2, 63, 27151),
	(2, 68, 27152),
	(2, 70, 27153),
	(2, 69, 27154),
	(2, 70, 27173),
	(2, 68, 27180),
	(2, 14, 31789),
	(2, 70, 31884),
	(2, 62, 32223),
	(2, 75, 48781),
	(2, 80, 48782),
	(2, 74, 48784),
	(2, 79, 48785),
	(2, 78, 48788),
	(2, 73, 48800),
	(2, 79, 48801),
	(2, 74, 48805),
	(2, 80, 48806),
	(2, 72, 48816),
	(2, 78, 48817),
	(2, 75, 48818),
	(2, 80, 48819),
	(2, 73, 48931),
	(2, 79, 48932),
	(2, 73, 48933),
	(2, 79, 48934),
	(2, 71, 48935),
	(2, 77, 48936),
	(2, 71, 48937),
	(2, 77, 48938),
	(2, 74, 48941),
	(2, 79, 48942),
	(2, 76, 48943),
	(2, 77, 48945),
	(2, 78, 48947),
	(2, 72, 48949),
	(2, 79, 48950),
	(2, 28, 53407),
	(2, 12, 53408),
	(2, 75, 53600),
	(2, 80, 53601),
	(2, 76, 54043),
	(2, 71, 54428),
	(2, 80, 61411),
	(2, 16, 62124),
	(3, 12, 136),
	(3, 20, 674),
	(3, 20, 781),
	(3, 14, 1002),
	(3, 6, 1130),
	(3, 24, 1462),
	(3, 1, 1494),
	(3, 16, 1495),
	(3, 20, 1499),
	(3, 40, 1510),
	(3, 14, 1513),
	(3, 32, 1543),
	(3, 4, 1978),
	(3, 18, 2643),
	(3, 12, 2974),
	(3, 36, 3034),
	(3, 22, 3043),
	(3, 6, 3044),
	(3, 26, 3045),
	(3, 20, 3111),
	(3, 8, 3127),
	(3, 28, 3661),
	(3, 36, 3662),
	(3, 8, 5116),
	(3, 16, 5118),
	(3, 30, 5384),
	(3, 14, 6197),
	(3, 40, 8737),
	(3, 40, 13159),
	(3, 30, 13161),
	(3, 4, 13163),
	(3, 10, 13165),
	(3, 44, 13542),
	(3, 51, 13543),
	(3, 60, 13544),
	(3, 10, 13549),
	(3, 18, 13550),
	(3, 26, 13551),
	(3, 34, 13552),
	(3, 42, 13553),
	(3, 50, 13554),
	(3, 58, 13555),
	(3, 16, 13795),
	(3, 28, 13809),
	(3, 34, 13813),
	(3, 8, 14260),
	(3, 16, 14261),
	(3, 24, 14262),
	(3, 32, 14263),
	(3, 40, 14264),
	(3, 48, 14265),
	(3, 56, 14266),
	(3, 30, 14269),
	(3, 44, 14270),
	(3, 58, 14271),
	(3, 12, 14281),
	(3, 20, 14282),
	(3, 28, 14283),
	(3, 36, 14284),
	(3, 44, 14285),
	(3, 52, 14286),
	(3, 60, 14287),
	(3, 30, 14288),
	(3, 42, 14289),
	(3, 54, 14290),
	(3, 50, 14294),
	(3, 58, 14295),
	(3, 26, 14302),
	(3, 36, 14303),
	(3, 46, 14304),
	(3, 56, 14305),
	(3, 40, 14310),
	(3, 60, 14311),
	(3, 44, 14316),
	(3, 54, 14317),
	(3, 18, 14318),
	(3, 28, 14319),
	(3, 38, 14320),
	(3, 48, 14321),
	(3, 58, 14322),
	(3, 22, 14323),
	(3, 40, 14324),
	(3, 58, 14325),
	(3, 30, 14326),
	(3, 46, 14327),
	(3, 60, 19263),
	(3, 60, 19801),
	(3, 32, 19878),
	(3, 50, 19879),
	(3, 26, 19880),
	(3, 40, 19882),
	(3, 10, 19883),
	(3, 18, 19884),
	(3, 24, 19885),
	(3, 46, 20043),
	(3, 56, 20190),
	(3, 12, 20736),
	(3, 10, 23356),
	(3, 10, 23357),
	(3, 60, 25294),
	(3, 60, 25295),
	(3, 60, 25296),
	(3, 63, 27014),
	(3, 67, 27016),
	(3, 69, 27019),
	(3, 67, 27021),
	(3, 67, 27022),
	(3, 65, 27023),
	(3, 61, 27025),
	(3, 68, 27044),
	(3, 68, 27045),
	(3, 68, 27046),
	(3, 66, 34026),
	(3, 20, 34074),
	(3, 62, 34120),
	(3, 70, 34477),
	(3, 68, 34600),
	(3, 70, 36916),
	(3, 74, 48989),
	(3, 80, 48990),
	(3, 71, 48995),
	(3, 77, 48996),
	(3, 73, 49000),
	(3, 79, 49001),
	(3, 73, 49044),
	(3, 79, 49045),
	(3, 74, 49047),
	(3, 80, 49048),
	(3, 71, 49051),
	(3, 77, 49052),
	(3, 72, 49055),
	(3, 78, 49056),
	(3, 71, 49066),
	(3, 77, 49067),
	(3, 76, 49071),
	(3, 75, 53271),
	(3, 76, 53338),
	(3, 80, 53339),
	(3, 71, 53351),
	(3, 50, 56641),
	(3, 74, 58431),
	(3, 80, 58434),
	(3, 80, 60192),
	(3, 75, 61005),
	(3, 80, 61006),
	(3, 74, 61846),
	(3, 80, 61847),
	(3, 80, 62757),
	(4, 4, 53),
	(4, 30, 408),
	(4, 14, 703),
	(4, 4, 921),
	(4, 22, 1725),
	(4, 6, 1757),
	(4, 14, 1758),
	(4, 22, 1759),
	(4, 30, 1760),
	(4, 12, 1766),
	(4, 6, 1776),
	(4, 1, 1784),
	(4, 16, 1804),
	(4, 26, 1833),
	(4, 30, 1842),
	(4, 22, 1856),
	(4, 40, 1857),
	(4, 40, 1860),
	(4, 20, 1943),
	(4, 16, 1966),
	(4, 28, 2070),
	(4, 34, 2094),
	(4, 12, 2589),
	(4, 20, 2590),
	(4, 28, 2591),
	(4, 24, 2836),
	(4, 10, 2983),
	(4, 12, 3127),
	(4, 10, 5171),
	(4, 8, 5277),
	(4, 70, 5938),
	(4, 8, 6760),
	(4, 16, 6761),
	(4, 24, 6762),
	(4, 28, 6768),
	(4, 10, 6770),
	(4, 40, 6774),
	(4, 38, 8621),
	(4, 32, 8623),
	(4, 40, 8624),
	(4, 22, 8631),
	(4, 30, 8632),
	(4, 38, 8633),
	(4, 40, 8637),
	(4, 28, 8639),
	(4, 36, 8640),
	(4, 50, 8643),
	(4, 14, 8647),
	(4, 18, 8676),
	(4, 34, 8696),
	(4, 36, 8721),
	(4, 26, 8724),
	(4, 34, 8725),
	(4, 40, 11267),
	(4, 50, 11268),
	(4, 58, 11269),
	(4, 44, 11273),
	(4, 52, 11274),
	(4, 60, 11275),
	(4, 44, 11279),
	(4, 52, 11280),
	(4, 60, 11281),
	(4, 46, 11289),
	(4, 54, 11290),
	(4, 46, 11293),
	(4, 54, 11294),
	(4, 48, 11297),
	(4, 48, 11299),
	(4, 56, 11300),
	(4, 52, 11303),
	(4, 58, 11305),
	(4, 60, 25300),
	(4, 60, 25302),
	(4, 50, 26669),
	(4, 64, 26679),
	(4, 61, 26839),
	(4, 62, 26861),
	(4, 70, 26862),
	(4, 68, 26863),
	(4, 64, 26865),
	(4, 68, 26867),
	(4, 70, 26884),
	(4, 62, 26889),
	(4, 66, 27441),
	(4, 64, 27448),
	(4, 60, 31016),
	(4, 66, 31224),
	(4, 62, 32645),
	(4, 69, 32684),
	(4, 76, 48637),
	(4, 80, 48638),
	(4, 74, 48656),
	(4, 80, 48657),
	(4, 72, 48658),
	(4, 78, 48659),
	(4, 73, 48667),
	(4, 79, 48668),
	(4, 74, 48671),
	(4, 79, 48672),
	(4, 70, 48673),
	(4, 76, 48674),
	(4, 75, 48675),
	(4, 80, 48676),
	(4, 70, 48689),
	(4, 75, 48690),
	(4, 80, 48691),
	(4, 20, 51722),
	(4, 80, 51723),
	(4, 71, 51724),
	(4, 75, 57934),
	(4, 74, 57992),
	(4, 80, 57993),
	(5, 6, 17),
	(5, 8, 139),
	(5, 20, 453),
	(5, 18, 527),
	(5, 14, 528),
	(5, 32, 552),
	(5, 8, 586),
	(5, 12, 588),
	(5, 4, 589),
	(5, 6, 591),
	(5, 12, 592),
	(5, 10, 594),
	(5, 30, 596),
	(5, 14, 598),
	(5, 18, 600),
	(5, 30, 602),
	(5, 30, 605),
	(5, 18, 970),
	(5, 30, 976),
	(5, 22, 984),
	(5, 36, 988),
	(5, 26, 992),
	(5, 40, 996),
	(5, 30, 1004),
	(5, 40, 1006),
	(5, 1, 1243),
	(5, 12, 1244),
	(5, 24, 1245),
	(5, 34, 1706),
	(5, 10, 2006),
	(5, 22, 2010),
	(5, 4, 2052),
	(5, 10, 2053),
	(5, 16, 2054),
	(5, 22, 2055),
	(5, 40, 2060),
	(5, 20, 2061),
	(5, 22, 2096),
	(5, 34, 2767),
	(5, 36, 2791),
	(5, 20, 2944),
	(5, 24, 3747),
	(5, 38, 6060),
	(5, 28, 6063),
	(5, 34, 6064),
	(5, 30, 6065),
	(5, 36, 6066),
	(5, 14, 6074),
	(5, 20, 6075),
	(5, 26, 6076),
	(5, 32, 6077),
	(5, 38, 6078),
	(5, 20, 6346),
	(5, 20, 7128),
	(5, 10, 8092),
	(5, 16, 8102),
	(5, 22, 8103),
	(5, 28, 8104),
	(5, 34, 8105),
	(5, 40, 8106),
	(5, 14, 8122),
	(5, 28, 8124),
	(5, 24, 8129),
	(5, 26, 9472),
	(5, 32, 9473),
	(5, 38, 9474),
	(5, 20, 9484),
	(5, 40, 9485),
	(5, 34, 10880),
	(5, 46, 10881),
	(5, 42, 10888),
	(5, 56, 10890),
	(5, 42, 10892),
	(5, 50, 10893),
	(5, 58, 10894),
	(5, 42, 10898),
	(5, 48, 10899),
	(5, 54, 10900),
	(5, 60, 10901),
	(5, 44, 10909),
	(5, 44, 10915),
	(5, 50, 10916),
	(5, 56, 10917),
	(5, 44, 10927),
	(5, 50, 10928),
	(5, 56, 10929),
	(5, 46, 10933),
	(5, 54, 10934),
	(5, 48, 10937),
	(5, 60, 10938),
	(5, 46, 10945),
	(5, 52, 10946),
	(5, 58, 10947),
	(5, 50, 10951),
	(5, 60, 10952),
	(5, 60, 10955),
	(5, 42, 10957),
	(5, 56, 10958),
	(5, 50, 10960),
	(5, 60, 10961),
	(5, 46, 10963),
	(5, 52, 10964),
	(5, 58, 10965),
	(5, 30, 14752),
	(5, 40, 14818),
	(5, 50, 14819),
	(5, 20, 14914),
	(5, 20, 15237),
	(5, 60, 15261),
	(5, 24, 15262),
	(5, 30, 15263),
	(5, 36, 15264),
	(5, 42, 15265),
	(5, 48, 15266),
	(5, 54, 15267),
	(5, 28, 15430),
	(5, 36, 15431),
	(5, 28, 19276),
	(5, 36, 19277),
	(5, 44, 19278),
	(5, 52, 19279),
	(5, 60, 19280),
	(5, 58, 20770),
	(5, 48, 21562),
	(5, 60, 21564),
	(5, 63, 25210),
	(5, 68, 25213),
	(5, 65, 25217),
	(5, 70, 25218),
	(5, 65, 25221),
	(5, 70, 25222),
	(5, 61, 25233),
	(5, 67, 25235),
	(5, 68, 25308),
	(5, 70, 25312),
	(5, 60, 25314),
	(5, 60, 25315),
	(5, 60, 25316),
	(5, 68, 25331),
	(5, 61, 25363),
	(5, 69, 25364),
	(5, 65, 25367),
	(5, 70, 25368),
	(5, 63, 25372),
	(5, 69, 25375),
	(5, 66, 25384),
	(5, 70, 25389),
	(5, 70, 25392),
	(5, 69, 25431),
	(5, 68, 25433),
	(5, 68, 25435),
	(5, 68, 25467),
	(5, 60, 27681),
	(5, 56, 27683),
	(5, 44, 27799),
	(5, 52, 27800),
	(5, 60, 27801),
	(5, 60, 27841),
	(5, 70, 32375),
	(5, 62, 32379),
	(5, 64, 32546),
	(5, 70, 32996),
	(5, 70, 32999),
	(5, 68, 33076),
	(5, 66, 34433),
	(5, 70, 39374),
	(5, 71, 48040),
	(5, 75, 48045),
	(5, 73, 48062),
	(5, 78, 48063),
	(5, 75, 48065),
	(5, 80, 48066),
	(5, 75, 48067),
	(5, 80, 48068),
	(5, 73, 48070),
	(5, 79, 48071),
	(5, 76, 48072),
	(5, 80, 48073),
	(5, 80, 48074),
	(5, 75, 48077),
	(5, 80, 48078),
	(5, 74, 48112),
	(5, 79, 48113),
	(5, 72, 48119),
	(5, 78, 48120),
	(5, 74, 48122),
	(5, 79, 48123),
	(5, 75, 48124),
	(5, 80, 48125),
	(5, 74, 48126),
	(5, 79, 48127),
	(5, 72, 48134),
	(5, 78, 48135),
	(5, 75, 48157),
	(5, 80, 48158),
	(5, 80, 48161),
	(5, 80, 48162),
	(5, 77, 48168),
	(5, 76, 48169),
	(5, 77, 48170),
	(5, 78, 48171),
	(5, 73, 48299),
	(5, 79, 48300),
	(5, 80, 53023),
	(5, 80, 64843),
	(5, 80, 64901),
	(6, 61, 3714),
	(6, 80, 42650),
	(6, 60, 43265),
	(6, 70, 45463),
	(6, 58, 45524),
	(6, 64, 45529),
	(6, 56, 46584),
	(6, 59, 47476),
	(6, 57, 47528),
	(6, 75, 47568),
	(6, 57, 48263),
	(6, 70, 48265),
	(6, 68, 48707),
	(6, 58, 48721),
	(6, 66, 48743),
	(6, 62, 48792),
	(6, 61, 49020),
	(6, 62, 49892),
	(6, 68, 49893),
	(6, 76, 49894),
	(6, 80, 49895),
	(6, 61, 49896),
	(6, 67, 49903),
	(6, 73, 49904),
	(6, 78, 49909),
	(6, 60, 49917),
	(6, 65, 49918),
	(6, 70, 49919),
	(6, 75, 49920),
	(6, 80, 49921),
	(6, 75, 49923),
	(6, 80, 49924),
	(6, 59, 49926),
	(6, 64, 49927),
	(6, 69, 49928),
	(6, 74, 49929),
	(6, 80, 49930),
	(6, 67, 49936),
	(6, 73, 49937),
	(6, 80, 49938),
	(6, 66, 49939),
	(6, 72, 49940),
	(6, 78, 49941),
	(6, 56, 49998),
	(6, 63, 49999),
	(6, 56, 50842),
	(6, 67, 51423),
	(6, 73, 51424),
	(6, 79, 51425),
	(6, 63, 53323),
	(6, 60, 53331),
	(6, 55, 53341),
	(6, 57, 53342),
	(6, 55, 53343),
	(6, 70, 53344),
	(6, 63, 54446),
	(6, 57, 54447),
	(6, 65, 56222),
	(6, 67, 56815),
	(6, 65, 57330),
	(6, 75, 57623),
	(6, 72, 61999),
	(6, 72, 62158),
	(6, 72, 70164),
	(7, 22, 131),
	(7, 8, 324),
	(7, 16, 325),
	(7, 6, 332),
	(7, 12, 370),
	(7, 32, 421),
	(7, 16, 526),
	(7, 8, 529),
	(7, 28, 546),
	(7, 12, 547),
	(7, 14, 548),
	(7, 30, 556),
	(7, 24, 905),
	(7, 18, 913),
	(7, 20, 915),
	(7, 40, 930),
	(7, 24, 939),
	(7, 26, 943),
	(7, 32, 945),
	(7, 32, 959),
	(7, 40, 1064),
	(7, 12, 1535),
	(7, 12, 2008),
	(7, 66, 2062),
	(7, 6, 2484),
	(7, 16, 2645),
	(7, 48, 2860),
	(7, 68, 2894),
	(7, 16, 3599),
	(7, 64, 3738),
	(7, 30, 5394),
	(7, 26, 5675),
	(7, 8, 5730),
	(7, 32, 6041),
	(7, 26, 6196),
	(7, 20, 6363),
	(7, 30, 6364),
	(7, 40, 6365),
	(7, 30, 6375),
	(7, 40, 6377),
	(7, 18, 6390),
	(7, 28, 6391),
	(7, 38, 6392),
	(7, 34, 6495),
	(7, 20, 8004),
	(7, 40, 8005),
	(7, 28, 8008),
	(7, 36, 8010),
	(7, 32, 8012),
	(7, 1, 8017),
	(7, 8, 8018),
	(7, 16, 8019),
	(7, 10, 8024),
	(7, 18, 8027),
	(7, 26, 8030),
	(7, 20, 8033),
	(7, 28, 8038),
	(7, 4, 8042),
	(7, 8, 8044),
	(7, 14, 8045),
	(7, 24, 8046),
	(7, 10, 8050),
	(7, 18, 8052),
	(7, 28, 8053),
	(7, 20, 8056),
	(7, 34, 8058),
	(7, 4, 8071),
	(7, 10, 8075),
	(7, 40, 8134),
	(7, 18, 8143),
	(7, 14, 8154),
	(7, 24, 8155),
	(7, 24, 8160),
	(7, 38, 8161),
	(7, 38, 8170),
	(7, 30, 8177),
	(7, 24, 8181),
	(7, 28, 8184),
	(7, 26, 8190),
	(7, 28, 8227),
	(7, 30, 8232),
	(7, 40, 8235),
	(7, 38, 8249),
	(7, 22, 8498),
	(7, 32, 8499),
	(7, 32, 8512),
	(7, 40, 8737),
	(7, 38, 10391),
	(7, 44, 10392),
	(7, 48, 10395),
	(7, 56, 10396),
	(7, 24, 10399),
	(7, 34, 10406),
	(7, 44, 10407),
	(7, 54, 10408),
	(7, 36, 10412),
	(7, 48, 10413),
	(7, 60, 10414),
	(7, 48, 10427),
	(7, 58, 10428),
	(7, 48, 10431),
	(7, 56, 10432),
	(7, 50, 10437),
	(7, 60, 10438),
	(7, 52, 10442),
	(7, 40, 10447),
	(7, 52, 10448),
	(7, 38, 10456),
	(7, 50, 10462),
	(7, 44, 10466),
	(7, 52, 10467),
	(7, 60, 10468),
	(7, 46, 10472),
	(7, 58, 10473),
	(7, 38, 10478),
	(7, 54, 10479),
	(7, 50, 10486),
	(7, 36, 10495),
	(7, 46, 10496),
	(7, 56, 10497),
	(7, 48, 10526),
	(7, 42, 10537),
	(7, 58, 10538),
	(7, 60, 10563),
	(7, 36, 10585),
	(7, 46, 10586),
	(7, 56, 10587),
	(7, 30, 10595),
	(7, 44, 10600),
	(7, 60, 10601),
	(7, 56, 10605),
	(7, 46, 10622),
	(7, 54, 10623),
	(7, 42, 11314),
	(7, 52, 11315),
	(7, 50, 15207),
	(7, 56, 15208),
	(7, 36, 16339),
	(7, 46, 16341),
	(7, 56, 16342),
	(7, 48, 16355),
	(7, 58, 16356),
	(7, 60, 16362),
	(7, 58, 16387),
	(7, 30, 20608),
	(7, 24, 20609),
	(7, 36, 20610),
	(7, 48, 20776),
	(7, 60, 20777),
	(7, 62, 24398),
	(7, 60, 25357),
	(7, 60, 25361),
	(7, 63, 25391),
	(7, 70, 25396),
	(7, 66, 25420),
	(7, 61, 25422),
	(7, 68, 25423),
	(7, 63, 25439),
	(7, 70, 25442),
	(7, 62, 25448),
	(7, 67, 25449),
	(7, 69, 25454),
	(7, 70, 25457),
	(7, 68, 25464),
	(7, 63, 25469),
	(7, 70, 25472),
	(7, 64, 25489),
	(7, 66, 25500),
	(7, 68, 25505),
	(7, 63, 25508),
	(7, 70, 25509),
	(7, 67, 25525),
	(7, 65, 25528),
	(7, 69, 25533),
	(7, 61, 25546),
	(7, 70, 25547),
	(7, 65, 25552),
	(7, 67, 25557),
	(7, 67, 25560),
	(7, 68, 25563),
	(7, 69, 25567),
	(7, 65, 25570),
	(7, 69, 25574),
	(7, 69, 25590),
	(7, 60, 29228),
	(7, 69, 33736),
	(7, 30, 36936),
	(7, 74, 49230),
	(7, 79, 49231),
	(7, 75, 49232),
	(7, 80, 49233),
	(7, 73, 49235),
	(7, 78, 49236),
	(7, 73, 49237),
	(7, 79, 49238),
	(7, 74, 49270),
	(7, 80, 49271),
	(7, 75, 49272),
	(7, 80, 49273),
	(7, 72, 49275),
	(7, 77, 49276),
	(7, 80, 49277),
	(7, 75, 49280),
	(7, 80, 49281),
	(7, 75, 51505),
	(7, 80, 51514),
	(7, 30, 51730),
	(7, 40, 51988),
	(7, 50, 51991),
	(7, 60, 51992),
	(7, 70, 51993),
	(7, 80, 51994),
	(7, 20, 52127),
	(7, 28, 52129),
	(7, 34, 52131),
	(7, 41, 52134),
	(7, 48, 52136),
	(7, 55, 52138),
	(7, 74, 55458),
	(7, 80, 55459),
	(7, 75, 57622),
	(7, 76, 57960),
	(7, 16, 57994),
	(7, 71, 58580),
	(7, 75, 58581),
	(7, 78, 58582),
	(7, 80, 58643),
	(7, 71, 58649),
	(7, 75, 58652),
	(7, 80, 58656),
	(7, 71, 58699),
	(7, 75, 58703),
	(7, 80, 58704),
	(7, 73, 58731),
	(7, 78, 58734),
	(7, 75, 58737),
	(7, 80, 58739),
	(7, 75, 58741),
	(7, 80, 58745),
	(7, 75, 58746),
	(7, 80, 58749),
	(7, 73, 58751),
	(7, 78, 58753),
	(7, 71, 58755),
	(7, 76, 58756),
	(7, 80, 58757),
	(7, 71, 58771),
	(7, 76, 58773),
	(7, 80, 58774),
	(7, 71, 58785),
	(7, 76, 58789),
	(7, 80, 58790),
	(7, 71, 58794),
	(7, 76, 58795),
	(7, 80, 58796),
	(7, 71, 58801),
	(7, 76, 58803),
	(7, 80, 58804),
	(7, 80, 60043),
	(7, 75, 61649),
	(7, 80, 61657),
	(7, 30, 66842),
	(7, 40, 66843),
	(7, 50, 66844),
	(8, 20, 10),
	(8, 68, 66),
	(8, 4, 116),
	(8, 8, 118),
	(8, 26, 120),
	(8, 10, 122),
	(8, 12, 130),
	(8, 6, 143),
	(8, 12, 145),
	(8, 8, 205),
	(8, 18, 475),
	(8, 20, 543),
	(8, 6, 587),
	(8, 12, 597),
	(8, 12, 604),
	(8, 28, 759),
	(8, 14, 837),
	(8, 26, 865),
	(8, 22, 990),
	(8, 18, 1008),
	(8, 42, 1056),
	(8, 14, 1449),
	(8, 1, 1459),
	(8, 14, 1460),
	(8, 28, 1461),
	(8, 20, 1463),
	(8, 20, 1953),
	(8, 16, 2120),
	(8, 24, 2121),
	(8, 6, 2136),
	(8, 14, 2137),
	(8, 22, 2138),
	(8, 24, 2139),
	(8, 22, 2948),
	(8, 18, 3140),
	(8, 38, 3552),
	(8, 8, 5143),
	(8, 16, 5144),
	(8, 24, 5145),
	(8, 4, 5504),
	(8, 10, 5505),
	(8, 20, 5506),
	(8, 34, 6117),
	(8, 30, 6127),
	(8, 32, 6129),
	(8, 40, 6131),
	(8, 28, 6141),
	(8, 22, 6143),
	(8, 10, 7300),
	(8, 20, 7301),
	(8, 30, 7302),
	(8, 40, 7320),
	(8, 20, 7322),
	(8, 24, 8400),
	(8, 30, 8401),
	(8, 36, 8402),
	(8, 26, 8406),
	(8, 32, 8407),
	(8, 38, 8408),
	(8, 30, 8412),
	(8, 38, 8413),
	(8, 32, 8416),
	(8, 40, 8417),
	(8, 32, 8422),
	(8, 40, 8423),
	(8, 36, 8427),
	(8, 22, 8437),
	(8, 30, 8438),
	(8, 38, 8439),
	(8, 28, 8444),
	(8, 34, 8445),
	(8, 40, 8446),
	(8, 24, 8450),
	(8, 36, 8451),
	(8, 30, 8455),
	(8, 30, 8457),
	(8, 40, 8458),
	(8, 32, 8461),
	(8, 42, 8462),
	(8, 34, 8492),
	(8, 28, 8494),
	(8, 36, 8495),
	(8, 48, 10053),
	(8, 58, 10054),
	(8, 40, 10138),
	(8, 50, 10139),
	(8, 60, 10140),
	(8, 42, 10144),
	(8, 52, 10145),
	(8, 42, 10148),
	(8, 48, 10149),
	(8, 54, 10150),
	(8, 60, 10151),
	(8, 56, 10157),
	(8, 42, 10159),
	(8, 50, 10160),
	(8, 58, 10161),
	(8, 42, 10169),
	(8, 54, 10170),
	(8, 48, 10173),
	(8, 60, 10174),
	(8, 52, 10177),
	(8, 44, 10179),
	(8, 50, 10180),
	(8, 56, 10181),
	(8, 44, 10185),
	(8, 52, 10186),
	(8, 60, 10187),
	(8, 44, 10191),
	(8, 52, 10192),
	(8, 60, 10193),
	(8, 46, 10197),
	(8, 54, 10199),
	(8, 46, 10201),
	(8, 54, 10202),
	(8, 46, 10205),
	(8, 52, 10206),
	(8, 58, 10207),
	(8, 48, 10211),
	(8, 56, 10212),
	(8, 48, 10215),
	(8, 56, 10216),
	(8, 50, 10219),
	(8, 60, 10220),
	(8, 50, 10223),
	(8, 60, 10225),
	(8, 54, 10230),
	(8, 20, 12051),
	(8, 20, 12824),
	(8, 40, 12825),
	(8, 60, 12826),
	(8, 46, 22782),
	(8, 58, 22783),
	(8, 56, 23028),
	(8, 60, 25304),
	(8, 62, 25306),
	(8, 60, 25345),
	(8, 66, 27070),
	(8, 63, 27071),
	(8, 69, 27072),
	(8, 65, 27073),
	(8, 70, 27074),
	(8, 63, 27075),
	(8, 61, 27078),
	(8, 70, 27079),
	(8, 62, 27080),
	(8, 70, 27082),
	(8, 68, 27085),
	(8, 64, 27086),
	(8, 65, 27087),
	(8, 67, 27088),
	(8, 70, 27090),
	(8, 68, 27101),
	(8, 69, 27124),
	(8, 69, 27125),
	(8, 70, 27126),
	(8, 70, 27127),
	(8, 69, 27128),
	(8, 63, 27130),
	(8, 68, 27131),
	(8, 60, 28609),
	(8, 60, 28612),
	(8, 70, 30449),
	(8, 64, 30451),
	(8, 66, 30455),
	(8, 62, 30482),
	(8, 70, 32796),
	(8, 70, 33717),
	(8, 67, 33944),
	(8, 69, 33946),
	(8, 65, 37420),
	(8, 70, 38692),
	(8, 70, 38697),
	(8, 69, 38699),
	(8, 70, 38704),
	(8, 78, 42010),
	(8, 74, 42832),
	(8, 78, 42833),
	(8, 75, 42841),
	(8, 79, 42842),
	(8, 75, 42843),
	(8, 79, 42846),
	(8, 73, 42858),
	(8, 78, 42859),
	(8, 74, 42872),
	(8, 80, 42873),
	(8, 71, 42894),
	(8, 76, 42896),
	(8, 80, 42897),
	(8, 72, 42913),
	(8, 78, 42914),
	(8, 75, 42917),
	(8, 76, 42920),
	(8, 80, 42921),
	(8, 72, 42925),
	(8, 79, 42926),
	(8, 72, 42930),
	(8, 79, 42931),
	(8, 74, 42939),
	(8, 80, 42940),
	(8, 75, 42955),
	(8, 80, 42956),
	(8, 77, 42985),
	(8, 80, 42995),
	(8, 80, 43002),
	(8, 79, 43008),
	(8, 79, 43012),
	(8, 76, 43015),
	(8, 77, 43017),
	(8, 73, 43019),
	(8, 79, 43020),
	(8, 71, 43023),
	(8, 79, 43024),
	(8, 71, 43045),
	(8, 79, 43046),
	(8, 70, 43987),
	(8, 75, 44614),
	(8, 30, 45438),
	(8, 80, 47610),
	(8, 80, 55342),
	(8, 80, 58659),
	(9, 22, 126),
	(9, 26, 132),
	(9, 4, 172),
	(9, 1, 348),
	(9, 60, 603),
	(9, 1, 688),
	(9, 14, 689),
	(9, 29, 691),
	(9, 18, 693),
	(9, 6, 695),
	(9, 10, 696),
	(9, 8, 697),
	(9, 20, 698),
	(9, 22, 699),
	(9, 4, 702),
	(9, 12, 705),
	(9, 20, 706),
	(9, 10, 707),
	(9, 30, 709),
	(9, 28, 710),
	(9, 20, 712),
	(9, 12, 755),
	(9, 8, 980),
	(9, 18, 1014),
	(9, 30, 1086),
	(9, 20, 1088),
	(9, 20, 1094),
	(9, 30, 1098),
	(9, 28, 1106),
	(9, 12, 1108),
	(9, 10, 1120),
	(9, 6, 1454),
	(9, 16, 1455),
	(9, 26, 1456),
	(9, 32, 1490),
	(9, 26, 1714),
	(9, 30, 1949),
	(9, 36, 2362),
	(9, 30, 2941),
	(9, 20, 3698),
	(9, 28, 3699),
	(9, 36, 3700),
	(9, 24, 5138),
	(9, 40, 5484),
	(9, 24, 5500),
	(9, 18, 5676),
	(9, 16, 5697),
	(9, 34, 5699),
	(9, 20, 5740),
	(9, 8, 5782),
	(9, 20, 5784),
	(9, 10, 6201),
	(9, 22, 6202),
	(9, 22, 6205),
	(9, 32, 6213),
	(9, 56, 6215),
	(9, 28, 6217),
	(9, 34, 6219),
	(9, 14, 6222),
	(9, 24, 6223),
	(9, 32, 6229),
	(9, 48, 6353),
	(9, 28, 6366),
	(9, 42, 6789),
	(9, 36, 7641),
	(9, 32, 7646),
	(9, 34, 7648),
	(9, 38, 7651),
	(9, 24, 8288),
	(9, 38, 8289),
	(9, 44, 11659),
	(9, 52, 11660),
	(9, 60, 11661),
	(9, 40, 11665),
	(9, 50, 11667),
	(9, 60, 11668),
	(9, 44, 11671),
	(9, 54, 11672),
	(9, 52, 11675),
	(9, 46, 11677),
	(9, 58, 11678),
	(9, 42, 11683),
	(9, 54, 11684),
	(9, 36, 11687),
	(9, 46, 11688),
	(9, 56, 11689),
	(9, 44, 11693),
	(9, 52, 11694),
	(9, 60, 11695),
	(9, 46, 11699),
	(9, 54, 11700),
	(9, 42, 11707),
	(9, 52, 11708),
	(9, 38, 11711),
	(9, 48, 11712),
	(9, 58, 11713),
	(9, 50, 11719),
	(9, 46, 11721),
	(9, 60, 11722),
	(9, 44, 11725),
	(9, 58, 11726),
	(9, 46, 11729),
	(9, 58, 11730),
	(9, 40, 11733),
	(9, 50, 11734),
	(9, 60, 11735),
	(9, 42, 11739),
	(9, 52, 11740),
	(9, 48, 17727),
	(9, 60, 17728),
	(9, 26, 17919),
	(9, 34, 17920),
	(9, 42, 17921),
	(9, 50, 17922),
	(9, 58, 17923),
	(9, 56, 17924),
	(9, 50, 17925),
	(9, 58, 17926),
	(9, 54, 17928),
	(9, 36, 17951),
	(9, 46, 17952),
	(9, 56, 17953),
	(9, 48, 18647),
	(9, 30, 20752),
	(9, 40, 20755),
	(9, 50, 20756),
	(9, 60, 20757),
	(9, 62, 25307),
	(9, 60, 25309),
	(9, 60, 25311),
	(9, 69, 27209),
	(9, 65, 27210),
	(9, 64, 27211),
	(9, 69, 27212),
	(9, 68, 27213),
	(9, 69, 27215),
	(9, 65, 27216),
	(9, 67, 27217),
	(9, 67, 27218),
	(9, 62, 27219),
	(9, 69, 27220),
	(9, 68, 27222),
	(9, 68, 27223),
	(9, 61, 27224),
	(9, 69, 27228),
	(9, 68, 27230),
	(9, 70, 27238),
	(9, 70, 27243),
	(9, 66, 27250),
	(9, 67, 27259),
	(9, 70, 27260),
	(9, 66, 28172),
	(9, 62, 28176),
	(9, 69, 28189),
	(9, 60, 28610),
	(9, 64, 29722),
	(9, 66, 29858),
	(9, 68, 29893),
	(9, 70, 30459),
	(9, 70, 30545),
	(9, 69, 30909),
	(9, 70, 30910),
	(9, 70, 32231),
	(9, 76, 47793),
	(9, 74, 47808),
	(9, 79, 47809),
	(9, 75, 47810),
	(9, 80, 47811),
	(9, 71, 47812),
	(9, 77, 47813),
	(9, 74, 47814),
	(9, 79, 47815),
	(9, 72, 47819),
	(9, 79, 47820),
	(9, 78, 47823),
	(9, 75, 47824),
	(9, 80, 47825),
	(9, 75, 47835),
	(9, 80, 47836),
	(9, 74, 47837),
	(9, 80, 47838),
	(9, 77, 47855),
	(9, 76, 47856),
	(9, 78, 47857),
	(9, 73, 47859),
	(9, 78, 47860),
	(9, 73, 47863),
	(9, 79, 47864),
	(9, 78, 47865),
	(9, 80, 47867),
	(9, 73, 47871),
	(9, 79, 47878),
	(9, 76, 47884),
	(9, 72, 47886),
	(9, 78, 47888),
	(9, 80, 47889),
	(9, 72, 47890),
	(9, 78, 47891),
	(9, 74, 47892),
	(9, 79, 47893),
	(9, 75, 47897),
	(9, 80, 48018),
	(9, 80, 48020),
	(9, 71, 50511),
	(9, 80, 57946),
	(9, 80, 58887),
	(9, 74, 60219),
	(9, 80, 60220),
	(9, 72, 61191),
	(9, 80, 61290),
	(11, 10, 99),
	(11, 8, 339),
	(11, 6, 467),
	(11, 30, 740),
	(11, 20, 768),
	(11, 34, 769),
	(11, 18, 770),
	(11, 4, 774),
	(11, 16, 779),
	(11, 24, 780),
	(11, 14, 782),
	(11, 16, 783),
	(11, 10, 1058),
	(11, 18, 1062),
	(11, 16, 1066),
	(11, 24, 1075),
	(11, 20, 1079),
	(11, 20, 1082),
	(11, 1, 1126),
	(11, 16, 1430),
	(11, 20, 1735),
	(11, 24, 1822),
	(11, 34, 1823),
	(11, 44, 1824),
	(11, 26, 1850),
	(11, 22, 2090),
	(11, 28, 2091),
	(11, 18, 2637),
	(11, 24, 2782),
	(11, 26, 2893),
	(11, 22, 2908),
	(11, 20, 2912),
	(11, 28, 3029),
	(11, 34, 3627),
	(11, 6, 5177),
	(11, 14, 5178),
	(11, 22, 5179),
	(11, 30, 5180),
	(11, 8, 5186),
	(11, 14, 5187),
	(11, 20, 5188),
	(11, 26, 5189),
	(11, 28, 5195),
	(11, 38, 5196),
	(11, 38, 5201),
	(11, 28, 5209),
	(11, 14, 5211),
	(11, 20, 5215),
	(11, 24, 5217),
	(11, 22, 5221),
	(11, 32, 5225),
	(11, 12, 5229),
	(11, 10, 5232),
	(11, 30, 5234),
	(11, 8, 5487),
	(11, 20, 6756),
	(11, 32, 6778),
	(11, 38, 6780),
	(11, 32, 6785),
	(11, 42, 6787),
	(11, 36, 6793),
	(11, 30, 6798),
	(11, 30, 6800),
	(11, 8, 6807),
	(11, 18, 6808),
	(11, 26, 6809),
	(11, 38, 8903),
	(11, 46, 8905),
	(11, 40, 8907),
	(11, 40, 8910),
	(11, 34, 8914),
	(11, 40, 8918),
	(11, 4, 8921),
	(11, 10, 8924),
	(11, 16, 8925),
	(11, 22, 8926),
	(11, 28, 8927),
	(11, 34, 8928),
	(11, 40, 8929),
	(11, 12, 8936),
	(11, 18, 8938),
	(11, 24, 8939),
	(11, 30, 8940),
	(11, 36, 8941),
	(11, 26, 8949),
	(11, 34, 8950),
	(11, 42, 8951),
	(11, 38, 8955),
	(11, 46, 8983),
	(11, 38, 8992),
	(11, 28, 8998),
	(11, 40, 9000),
	(11, 36, 9005),
	(11, 32, 9490),
	(11, 28, 9492),
	(11, 36, 9493),
	(11, 40, 9634),
	(11, 42, 9745),
	(11, 42, 9747),
	(11, 42, 9750),
	(11, 44, 9752),
	(11, 44, 9754),
	(11, 44, 9756),
	(11, 44, 9758),
	(11, 46, 9821),
	(11, 46, 9823),
	(11, 56, 9827),
	(11, 46, 9829),
	(11, 54, 9830),
	(11, 46, 9833),
	(11, 52, 9834),
	(11, 58, 9835),
	(11, 46, 9839),
	(11, 52, 9840),
	(11, 58, 9841),
	(11, 48, 9845),
	(11, 60, 9846),
	(11, 48, 9849),
	(11, 58, 9850),
	(11, 48, 9852),
	(11, 58, 9853),
	(11, 48, 9856),
	(11, 54, 9857),
	(11, 60, 9858),
	(11, 50, 9862),
	(11, 60, 9863),
	(11, 50, 9866),
	(11, 58, 9867),
	(11, 50, 9875),
	(11, 58, 9876),
	(11, 50, 9880),
	(11, 58, 9881),
	(11, 50, 9884),
	(11, 60, 9885),
	(11, 50, 9888),
	(11, 56, 9889),
	(11, 52, 9892),
	(11, 52, 9894),
	(11, 60, 9896),
	(11, 52, 9898),
	(11, 54, 9901),
	(11, 54, 9904),
	(11, 54, 9908),
	(11, 54, 9910),
	(11, 54, 9912),
	(11, 10, 16689),
	(11, 18, 16810),
	(11, 28, 16811),
	(11, 38, 16812),
	(11, 48, 16813),
	(11, 18, 16857),
	(11, 40, 16914),
	(11, 58, 17329),
	(11, 50, 17401),
	(11, 60, 17402),
	(11, 38, 18657),
	(11, 58, 18658),
	(11, 20, 20484),
	(11, 40, 20719),
	(11, 30, 20739),
	(11, 40, 20742),
	(11, 50, 20747),
	(11, 60, 20748),
	(11, 50, 21849),
	(11, 60, 21850),
	(11, 32, 22568),
	(11, 62, 22570),
	(11, 44, 22812),
	(11, 40, 22827),
	(11, 48, 22828),
	(11, 56, 22829),
	(11, 36, 22842),
	(11, 63, 24248),
	(11, 60, 25297),
	(11, 60, 25298),
	(11, 60, 25299),
	(11, 62, 26978),
	(11, 69, 26979),
	(11, 65, 26980),
	(11, 63, 26981),
	(11, 69, 26982),
	(11, 70, 26983),
	(11, 61, 26984),
	(11, 69, 26985),
	(11, 67, 26986),
	(11, 63, 26987),
	(11, 70, 26988),
	(11, 68, 26989),
	(11, 70, 26990),
	(11, 70, 26991),
	(11, 64, 26992),
	(11, 69, 26994),
	(11, 70, 26995),
	(11, 67, 26996),
	(11, 64, 26997),
	(11, 62, 26998),
	(11, 67, 27000),
	(11, 61, 27001),
	(11, 70, 27002),
	(11, 64, 27003),
	(11, 69, 27004),
	(11, 66, 27005),
	(11, 66, 27006),
	(11, 67, 27008),
	(11, 68, 27009),
	(11, 70, 27012),
	(11, 40, 29166),
	(11, 60, 31018),
	(11, 60, 31709),
	(11, 65, 33357),
	(11, 66, 33745),
	(11, 64, 33763),
	(11, 70, 33786),
	(11, 60, 33943),
	(11, 71, 40120),
	(11, 74, 48377),
	(11, 79, 48378),
	(11, 75, 48440),
	(11, 80, 48441),
	(11, 71, 48442),
	(11, 77, 48443),
	(11, 75, 48446),
	(11, 80, 48447),
	(11, 72, 48450),
	(11, 80, 48451),
	(11, 74, 48459),
	(11, 79, 48461),
	(11, 75, 48462),
	(11, 80, 48463),
	(11, 72, 48464),
	(11, 78, 48465),
	(11, 80, 48467),
	(11, 80, 48469),
	(11, 80, 48470),
	(11, 79, 48477),
	(11, 73, 48479),
	(11, 79, 48480),
	(11, 71, 48559),
	(11, 77, 48560),
	(11, 72, 48561),
	(11, 77, 48562),
	(11, 73, 48567),
	(11, 80, 48568),
	(11, 73, 48569),
	(11, 79, 48570),
	(11, 75, 48571),
	(11, 80, 48572),
	(11, 72, 48573),
	(11, 78, 48574),
	(11, 76, 48575),
	(11, 72, 48576),
	(11, 78, 48577),
	(11, 73, 48578),
	(11, 79, 48579),
	(11, 71, 49799),
	(11, 80, 49800),
	(11, 74, 49802),
	(11, 77, 49803),
	(11, 71, 50212),
	(11, 79, 50213),
	(11, 80, 50464),
	(11, 80, 50763),
	(11, 69, 50764),
	(11, 60, 50765),
	(11, 48, 50766),
	(11, 36, 50767),
	(11, 24, 50768),
	(11, 12, 50769),
	(11, 75, 52610),
	(11, 74, 53307),
	(11, 78, 53308),
	(11, 78, 53312),
	(11, 71, 62078),
	(11, 40, 62600),
	(11, 34, 89672);
/*!40000 ALTER TABLE `player_learnspell_bylevel` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;