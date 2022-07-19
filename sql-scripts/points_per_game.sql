--Season 14/15

SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 100000 AND 100999;

-- 152,21 points per game

--Season 15/16
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 101000 AND 101999;

--143,77 points per game

-- Season 16/17
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 102000 AND 102999;
--151,78 points per game

--Season 17/18
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 103000 AND 103999;
-- 155,07 points per game

--Season 18/19
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 104000 AND 104999;

--159,70 points per game

--Season 19/20
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 105000 AND 105999;
--164,88 points per game

--Season 20/21
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 106000 AND 107999;
--168,14 points per game

--Season 21/22
SELECT SUM("Ps") AS total_points, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("Ps")/COUNT(DISTINCT ("matchId")) AS points_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999;
--169,93 points per game