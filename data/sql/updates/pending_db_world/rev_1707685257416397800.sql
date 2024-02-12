-- Update gameobject 201716 'Chemical Wagon' with sniffed values
-- updated spawns
DELETE FROM `gameobject` WHERE (`id` = 201716) AND (`guid` IN (242298, 242308, 242309, 242310, 242311, 242312, 242313, 242314, 242315, 242316, 242317, 242318, 242319));
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(242298, 201716, 1, 0, 0, 1, 1, 6764.8193359375, -4905.126953125, 774.26409912109375, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242308, 201716, 0, 0, 0, 1, 1, -406.282989501953125, 163.5868072509765625, 75.4813995361328125, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242309, 201716, 1, 0, 0, 1, 1, -3370.9462890625, -4168.55712890625, 17.80469894409179687, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242310, 201716, 0, 0, 0, 1, 1, 88.59375, -2477.99658203125, 124.779296875, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242311, 201716, 1, 0, 0, 1, 1, 4862.0009765625, 160.6180572509765625, 52.87637710571289062, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 120, 255, 1, "", 52237, NULL),
(242312, 201716, 571, 0, 0, 1, 1, 5638.05029296875, 107.1215286254882812, 154.9245452880859375, 1.082102894783020019, 0, 0, 0.51503753662109375, 0.857167601585388183, 120, 255, 1, "", 52237, NULL),
(242313, 201716, 530, 0, 0, 1, 1, -1808.5086669921875, 4844.5771484375, 1.868746042251586914, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242314, 201716, 1, 0, 0, 1, 1, 1264.0572509765625, -4084.614501953125, 25.43340110778808593, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242315, 201716, 0, 0, 0, 1, 1, -9454.0830078125, 522.8125, 55.8221435546875, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242316, 201716, 0, 0, 0, 1, 1, -50.1909713745117187, 1150.404541015625, 66.00772857666015625, 0, 0, 0, 0, 1, 120, 255, 1, "", 52237, NULL),
(242317, 201716, 571, 0, 0, 1, 1, 5592.7646484375, 68.61284637451171875, 148.5281829833984375, 3.735006093978881835, 0, 0, -0.95630455017089843, 0.292372345924377441, 120, 255, 1, "", 52237, NULL),
(242318, 201716, 571, 0, 0, 1, 1, 5579.16748046875, 179.388885498046875, 149.8949737548828125, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798, 120, 255, 1, "", 52237, NULL),
(242319, 201716, 571, 0, 0, 1, 1, 5576.55126953125, 124.4253463745117187, 150.719146728515625, 5.811946868896484375, 0, 0, -0.2334451675415039, 0.972369968891143798, 120, 255, 1, "", 52237, NULL);

-- enable all spawns for eventEntry 8
DELETE FROM `game_event_gameobject` WHERE (`eventEntry` = 8) AND (`guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 201716));
INSERT INTO `game_event_gameobject` (SELECT 8, `guid` FROM `gameobject` WHERE `id` = 201716);
