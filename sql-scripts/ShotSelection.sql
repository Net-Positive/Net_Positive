-- How many shots per game per season and the development of the percentage
-- SEason 2014/15

SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 100000 AND 100999;

--35% of Field goals are threes
-- 123 field goals per game
-- 42,56 free throws per game

--Season 15/16
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 101000 AND 101999;
-- 35,87 %  of field goals are threes
-- 118 field goals per game
--  42, 86 free throws per game

-- Season 16/17
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 102000 AND 102999;

-- 35,56 % of field goals are threes
-- 121,9 field goals per game
-- 39 ft per game

-- Season 17/18
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 103000 AND 103999;

--37,44 % of field goals are threes
-- 123,7 field goals per game
-- 39,62 ft per game

-- Season 18/19
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 104000 AND 104999;

-- 36,87% of field goals are threes
-- 124,6 field goals per game
--41,1 ft per game

--Season 19/20
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 105000 AND 105999;

-- 38,03 % of field goals are threes
-- 124,9 field goals per game
-- 43,31 ft per game

-- Season 20/21

SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 106000 AND 107999;

-- 39,7 %  of field goals are three
-- 124,87  field goals per game
-- 41,9 ft per game

-- Season 21/22
SELECT SUM("3P_A") AS total_threes,
	   SUM("FG_A") AS total_field_goals, 
	   SUM("2P_A") AS total_twos, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   SUM("FG_A")/COUNT(DISTINCT ("matchId")) AS Attempts_per_game,
	   SUM("2P_A")/COUNT(DISTINCT ("matchId")) AS twos_per_game, 
	   (SUM("3P_A")/COUNT(DISTINCT ("matchId")))/(SUM("FG_A")/COUNT(DISTINCT ("matchId"))) *100 AS three_point_attempt_percentage, 
	   SUM("FT_A")/COUNT(DISTINCT ("matchId")) AS ft_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999;

-- 40,4 % of field goals are threes
-- 128,14 field goals per game
-- 42,60 ft per game





