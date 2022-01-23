--
-- Structure de la table 'pokemon'
--

DROP TABLE IF EXISTS "pokemon_type";
DROP TABLE IF EXISTS "pokemon";


CREATE TABLE "pokemon" (
  "id" serial PRIMARY KEY,
  "nom" varchar(255) NOT NULL,
  "pv" int NOT NULL,
  "attaque" int NOT NULL,
  "defense" int NOT NULL,
  "attaque_spe" int NOT NULL,
  "defense_spe" int NOT NULL,
  "vitesse" int NOT NULL,
  "numero" int NOT NULL UNIQUE
);

--
-- Contenu de la table 'pokemon'
--

INSERT INTO "pokemon" ("id", "nom", "pv", "attaque", "defense", "attaque_spe", "defense_spe", "vitesse", "numero") VALUES
(1209, 'Bulbizarre', 45, 49, 49, 65, 65, 45, 1),
(1210, 'Herbizarre', 60, 62, 63, 80, 80, 60, 2),
(1211, 'Florizarre', 80, 82, 83, 100, 100, 80, 3),
(1212, 'Salameche', 39, 52, 43, 60, 50, 65, 4),
(1213, 'Reptincel', 58, 64, 58, 80, 65, 80, 5),
(1214, 'Dracaufeu', 78, 84, 78, 109, 85, 100, 6),
(1215, 'Carapuce', 44, 48, 65, 50, 64, 43, 7),
(1216, 'Carabaffe', 59, 63, 80, 65, 80, 58, 8),
(1217, 'Tortank', 79, 83, 100, 85, 105, 78, 9),
(1218, 'Chenipan', 45, 30, 35, 20, 20, 45, 10),
(1219, 'Chrysacier', 50, 20, 55, 25, 25, 30, 11),
(1220, 'Papilusion', 60, 45, 50, 80, 80, 70, 12),
(1221, 'Aspicot', 40, 35, 30, 20, 20, 50, 13),
(1222, 'Coconfort', 45, 25, 50, 25, 25, 35, 14),
(1223, 'Dardargnan', 65, 80, 40, 45, 80, 75, 15),
(1224, 'Roucool', 40, 45, 40, 35, 35, 56, 16),
(1225, 'Roucoups', 63, 60, 55, 50, 50, 71, 17),
(1226, 'Roucarnage', 83, 80, 75, 70, 70, 91, 18),
(1227, 'Rattata', 30, 56, 35, 25, 35, 72, 19),
(1228, 'Rattatac', 55, 81, 60, 50, 70, 97, 20),
(1229, 'Piafabec', 40, 60, 30, 31, 31, 70, 21),
(1230, 'Rapasdepic', 65, 90, 65, 61, 61, 100, 22),
(1231, 'Abo', 35, 60, 44, 40, 54, 55, 23),
(1232, 'Arbok', 60, 85, 69, 65, 79, 80, 24),
(1233, 'Pikachu', 35, 55, 30, 50, 40, 90, 25),
(1234, 'Raichu', 60, 90, 55, 90, 80, 100, 26),
(1235, 'Sabelette', 50, 75, 85, 20, 30, 40, 27),
(1236, 'Sablaireau', 75, 100, 110, 45, 55, 65, 28),
(1237, 'Nidoran F', 55, 47, 52, 40, 40, 41, 29),
(1238, 'Nidorina', 70, 62, 67, 55, 55, 56, 30),
(1239, 'Nidoqueen', 90, 82, 87, 75, 85, 76, 31),
(1240, 'Nidoran M', 46, 57, 40, 40, 40, 50, 32),
(1241, 'Nidorino', 61, 72, 57, 55, 55, 65, 33),
(1242, 'Nidoking', 81, 92, 77, 85, 75, 85, 34),
(1243, 'Melofee', 70, 45, 48, 60, 65, 35, 35),
(1244, 'Melodelfe', 95, 70, 73, 85, 90, 60, 36),
(1245, 'Goupix', 38, 41, 40, 50, 65, 65, 37),
(1246, 'Feunard', 73, 76, 75, 81, 100, 100, 38),
(1247, 'Rondoudou', 115, 45, 20, 45, 25, 20, 39),
(1248, 'Grodoudou', 140, 70, 45, 75, 50, 45, 40),
(1249, 'Nosferapti', 40, 45, 35, 30, 40, 55, 41),
(1250, 'Nosferalto', 75, 80, 70, 65, 75, 90, 42),
(1251, 'Mystherbe', 45, 50, 55, 75, 65, 30, 43),
(1252, 'Ortide', 60, 65, 70, 85, 75, 40, 44),
(1253, 'Rafflesia', 75, 80, 85, 100, 90, 50, 45),
(1254, 'Paras', 35, 70, 55, 45, 55, 25, 46),
(1255, 'Parasect', 60, 95, 80, 60, 80, 30, 47),
(1256, 'Mimitoss', 60, 55, 50, 40, 55, 45, 48),
(1257, 'Aeromite', 70, 65, 60, 90, 75, 90, 49),
(1258, 'Taupiqueur', 10, 55, 25, 35, 45, 95, 50),
(1259, 'Triopikeur', 35, 80, 50, 50, 70, 120, 51),
(1260, 'Miaouss', 40, 45, 35, 40, 40, 90, 52),
(1261, 'Persian', 65, 70, 60, 65, 65, 115, 53),
(1262, 'Psykokwak', 50, 52, 48, 65, 50, 55, 54),
(1263, 'Akwakwak', 80, 82, 78, 95, 80, 85, 55),
(1264, 'Ferosinge', 40, 80, 35, 35, 45, 70, 56),
(1265, 'Colossinge', 65, 105, 60, 60, 70, 95, 57),
(1266, 'Caninos', 55, 70, 45, 70, 50, 60, 58),
(1267, 'Arcanin', 90, 110, 80, 100, 80, 95, 59),
(1268, 'Ptitard', 40, 50, 40, 40, 40, 90, 60),
(1269, 'Tetarte', 65, 65, 65, 50, 50, 90, 61),
(1270, 'Tartard', 90, 85, 95, 70, 90, 70, 62),
(1271, 'Abra', 25, 20, 15, 105, 55, 90, 63),
(1272, 'Kadabra', 40, 35, 30, 120, 70, 105, 64),
(1273, 'Alakazam', 55, 50, 45, 135, 85, 120, 65),
(1274, 'Machoc', 70, 80, 50, 35, 35, 35, 66),
(1275, 'Machopeur', 80, 100, 70, 50, 60, 45, 67),
(1276, 'Mackogneur', 90, 130, 80, 65, 85, 55, 68),
(1277, 'Chetiflor', 50, 75, 35, 70, 30, 40, 69),
(1278, 'Boustiflor', 65, 90, 50, 85, 45, 55, 70),
(1279, 'Empiflor', 80, 105, 65, 100, 60, 70, 71),
(1280, 'Tentacool', 40, 40, 35, 50, 100, 70, 72),
(1281, 'Tentacruel', 80, 70, 65, 80, 120, 100, 73),
(1282, 'Racaillou', 40, 80, 100, 30, 30, 20, 74),
(1283, 'Gravalanch', 55, 95, 115, 45, 45, 35, 75),
(1284, 'Grolem', 80, 110, 130, 55, 65, 45, 76),
(1285, 'Ponyta', 50, 85, 55, 65, 65, 90, 77),
(1286, 'Galopa', 65, 100, 70, 80, 80, 105, 78),
(1287, 'Ramoloss', 90, 65, 65, 40, 40, 15, 79),
(1288, 'Flagadoss', 95, 75, 110, 100, 80, 30, 80),
(1289, 'Magneti', 25, 35, 70, 95, 55, 45, 81),
(1290, 'Magneton', 50, 60, 95, 120, 70, 70, 82),
(1291, 'Canarticho', 52, 65, 55, 58, 62, 60, 83),
(1292, 'Doduo', 35, 85, 45, 35, 35, 75, 84),
(1293, 'Dodrio', 60, 110, 70, 60, 60, 100, 85),
(1294, 'Otaria', 65, 45, 55, 45, 70, 45, 86),
(1295, 'Lamantine', 90, 70, 80, 70, 95, 70, 87),
(1296, 'Tadmorv', 80, 80, 50, 40, 50, 25, 88),
(1297, 'Grotadmorv', 105, 105, 75, 65, 100, 50, 89),
(1298, 'Kokiyas', 30, 65, 100, 45, 25, 40, 90),
(1299, 'Crustabri', 50, 95, 180, 85, 45, 70, 91),
(1300, 'Fantominus', 30, 35, 30, 100, 35, 80, 92),
(1301, 'Spectrum', 45, 50, 45, 115, 55, 95, 93),
(1302, 'Ectoplasma', 60, 65, 60, 130, 75, 110, 94),
(1303, 'Onix', 35, 45, 160, 30, 45, 70, 95),
(1304, 'Soporifik', 60, 48, 45, 43, 90, 42, 96),
(1305, 'Hypnomade', 85, 73, 70, 73, 115, 67, 97),
(1306, 'Krabby', 30, 105, 90, 25, 25, 50, 98),
(1307, 'Krabboss', 55, 130, 115, 50, 50, 75, 99),
(1308, 'Voltorbe', 40, 30, 50, 55, 55, 100, 100),
(1309, 'Electrode', 60, 50, 70, 80, 80, 140, 101),
(1310, 'Noeunoeuf', 60, 40, 80, 60, 45, 40, 102),
(1311, 'Noadkoko', 95, 95, 85, 125, 65, 55, 103),
(1312, 'Osselait', 50, 50, 95, 40, 50, 35, 104),
(1313, 'Ossatueur', 60, 80, 110, 50, 80, 45, 105),
(1314, 'Kicklee', 50, 120, 53, 35, 110, 87, 106),
(1315, 'Tygnon', 50, 105, 79, 35, 110, 76, 107),
(1316, 'Excelangue', 90, 55, 75, 60, 75, 30, 108),
(1317, 'Smogo', 40, 65, 95, 60, 45, 35, 109),
(1318, 'Smogogo', 65, 90, 120, 85, 70, 60, 110),
(1319, 'Rhinocorne', 80, 85, 95, 30, 30, 25, 111),
(1320, 'Rhinoferos', 105, 130, 120, 45, 45, 40, 112),
(1321, 'Leveinard', 250, 5, 5, 35, 105, 50, 113),
(1322, 'Saquedeneu', 65, 55, 115, 100, 40, 60, 114),
(1323, 'Kangourex', 105, 95, 80, 40, 80, 90, 115),
(1324, 'Hypotrempe', 30, 40, 70, 70, 25, 60, 116),
(1325, 'Hypocean', 55, 65, 95, 95, 45, 85, 117),
(1326, 'Poissirene', 45, 67, 60, 35, 50, 63, 118),
(1327, 'Poissoroy', 80, 92, 65, 65, 80, 68, 119),
(1328, 'Stari', 30, 45, 55, 70, 55, 85, 120),
(1329, 'Staross', 60, 75, 85, 100, 85, 115, 121),
(1330, 'M.Mime', 40, 45, 65, 100, 120, 90, 122),
(1331, 'Insecateur', 70, 110, 80, 55, 80, 105, 123),
(1332, 'Lippoutou', 65, 50, 35, 115, 95, 95, 124),
(1333, 'Elektek', 65, 83, 57, 95, 85, 105, 125),
(1334, 'Magmar', 65, 95, 57, 100, 85, 93, 126),
(1335, 'Scarabrute', 65, 125, 100, 55, 70, 85, 127),
(1336, 'Tauros', 75, 100, 95, 40, 70, 110, 128),
(1337, 'Magicarpe', 20, 10, 55, 15, 20, 80, 129),
(1338, 'Leviator', 95, 125, 79, 60, 100, 81, 130),
(1339, 'Lokhlass', 130, 85, 80, 85, 95, 60, 131),
(1340, 'Metamorph', 48, 48, 48, 48, 48, 48, 132),
(1341, 'Evoli', 55, 55, 50, 45, 65, 55, 133),
(1342, 'Aquali', 130, 65, 60, 110, 95, 65, 134),
(1343, 'Voltali', 65, 65, 60, 110, 95, 130, 135),
(1344, 'Pyroli', 65, 130, 60, 95, 110, 65, 136),
(1345, 'Porygon', 65, 60, 70, 85, 75, 40, 137),
(1346, 'Amonita', 35, 40, 100, 90, 55, 35, 138),
(1347, 'Amonistar', 70, 60, 125, 115, 70, 55, 139),
(1348, 'Kabuto', 30, 80, 90, 55, 45, 55, 140),
(1349, 'Kabutops', 60, 115, 105, 65, 70, 80, 141),
(1350, 'Ptera', 80, 105, 65, 60, 75, 130, 142),
(1351, 'Ronflex', 160, 110, 65, 65, 110, 30, 143),
(1352, 'Artikodin', 90, 85, 100, 95, 125, 85, 144),
(1353, 'Electhor', 90, 90, 85, 125, 90, 100, 145),
(1354, 'Sulfura', 90, 100, 90, 125, 85, 90, 146),
(1355, 'Minidraco', 41, 64, 45, 50, 50, 50, 147),
(1356, 'Draco', 61, 84, 65, 70, 70, 70, 148),
(1357, 'Dracolosse', 91, 134, 95, 100, 100, 80, 149),
(1358, 'Mewtwo', 106, 110, 90, 154, 90, 130, 150),
(1359, 'Mew', 100, 100, 100, 100, 100, 100, 151);

-- --------------------------------------------------------
DROP TABLE IF EXISTS "type";

CREATE TABLE "type" (
  "id" serial PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "color" varchar(6) NOT NULL
);

--
-- Contenu de la table "type"
--

INSERT INTO "type" ("id", "name", "color") VALUES
(1, 'Acier', 'aaaabb'),
(2, 'Combat', 'bb5544'),
(3, 'Dragon', '7766ee'),
(4, 'Eau', '3399ff'),
(5, 'Électrik', 'ffbb33'),
(6, 'Feu', 'ff4422'),
(7, 'Glace', '77ddff'),
(8, 'Insecte', 'aabb22'),
(9, 'Normal', 'bbaabb'),
(10, 'Plante', '77cc55'),
(11, 'Poison', 'aa5599'),
(12, 'Psy', 'ff5599'),
(13, 'Roche', 'bbaa66'),
(14, 'Sol', 'ddbb55'),
(15, 'Spectre', '6666bb'),
(16, 'Ténèbres', '665544'),
(17, 'Vol', '6699ff');
--
-- Structure de la table 'pokemon_type'
--

CREATE TABLE "pokemon_type" (
  "pokemon_numero" integer REFERENCES "pokemon"("numero"),
  "type_id" integer REFERENCES "type"("id"),
  PRIMARY KEY ("pokemon_numero", "type_id")

);

--
-- Contenu de la table 'pokemon_type'
--

INSERT INTO "pokemon_type" ("pokemon_numero", "type_id") VALUES
(1, 10),
(1, 11),
(2, 10),
(2, 11),
(3, 10),
(3, 11),
(4, 6),
(5, 6),
(6, 6),
(6, 17),
(7, 4),
(8, 4),
(9, 4),
(10, 8),
(11, 8),
(12, 8),
(12, 17),
(13, 8),
(13, 11),
(14, 8),
(14, 11),
(15, 8),
(15, 11),
(16, 9),
(16, 17),
(17, 9),
(17, 17),
(18, 9),
(18, 17),
(19, 9),
(20, 9),
(21, 9),
(21, 17),
(22, 9),
(22, 17),
(23, 11),
(24, 11),
(25, 5),
(26, 5),
(27, 14),
(28, 14),
(29, 11),
(30, 11),
(31, 11),
(31, 14),
(32, 11),
(33, 11),
(34, 11),
(34, 14),
(35, 9),
(36, 9),
(37, 6),
(38, 6),
(39, 9),
(40, 9),
(41, 11),
(41, 17),
(42, 11),
(42, 17),
(43, 10),
(43, 11),
(44, 10),
(44, 11),
(45, 10),
(45, 11),
(46, 8),
(46, 10),
(47, 8),
(47, 10),
(48, 8),
(48, 11),
(49, 8),
(49, 11),
(50, 14),
(51, 14),
(52, 9),
(53, 9),
(54, 4),
(55, 4),
(56, 2),
(57, 2),
(58, 6),
(59, 6),
(60, 4),
(61, 4),
(62, 4),
(62, 2),
(63, 12),
(64, 12),
(65, 12),
(66, 2),
(67, 2),
(68, 2),
(69, 10),
(69, 11),
(70, 10),
(70, 11),
(71, 10),
(71, 11),
(72, 4),
(72, 11),
(73, 4),
(73, 11),
(74, 13),
(74, 14),
(75, 13),
(75, 14),
(76, 13),
(76, 14),
(77, 6),
(78, 6),
(79, 4),
(79, 12),
(80, 4),
(80, 12),
(81, 5),
(81, 1),
(82, 5),
(82, 1),
(83, 9),
(83, 17),
(84, 9),
(84, 17),
(85, 9),
(85, 17),
(86, 4),
(87, 4),
(87, 7),
(88, 11),
(89, 11),
(90, 4),
(91, 4),
(91, 7),
(92, 15),
(92, 11),
(93, 15),
(93, 11),
(94, 15),
(94, 11),
(95, 13),
(95, 14),
(96, 12),
(97, 12),
(98, 4),
(99, 4),
(100, 5),
(101, 5),
(102, 10),
(102, 12),
(103, 10),
(103, 12),
(104, 14),
(105, 14),
(106, 2),
(107, 2),
(108, 9),
(109, 11),
(110, 11),
(111, 14),
(111, 13),
(112, 14),
(112, 13),
(113, 9),
(114, 10),
(115, 9),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(121, 12),
(122, 12),
(123, 8),
(123, 17),
(124, 7),
(124, 12),
(125, 5),
(126, 6),
(127, 8),
(128, 9),
(129, 4),
(130, 4),
(130, 17),
(131, 4),
(131, 7),
(132, 9),
(133, 9),
(134, 4),
(135, 5),
(136, 6),
(137, 9),
(138, 13),
(138, 4),
(139, 13),
(139, 4),
(140, 13),
(140, 4),
(141, 13),
(141, 4),
(142, 13),
(142, 17),
(143, 9),
(144, 7),
(144, 17),
(145, 5),
(145, 17),
(146, 6),
(146, 17),
(147, 3),
(148, 3),
(149, 3),
(149, 17),
(150, 12),
(151, 12);

-- --------------------------------------------------------

--
-- Structure de la table 'type'
--

