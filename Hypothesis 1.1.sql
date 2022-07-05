#THREE POINT ATTEMPTS SEASON 2014/15, 16 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 100000 AND 100999;
#10.349, 240 games , 43,12 threes per game

#Three Point Attempts Season 2015/16, 16 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 101000 AND 101999;

# 11.219, 263games, 42,66 threes per game

#Three Point Attempts Season 2016/17, 16 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 102000 AND 102999;

#11.412, 263 games, 43,39 threes per game

#Three Point Attempts Season 2017/18, 16 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 103000 AND 103999;

#12.365, 267 games, 46,31 threes per game

#Three Point Attempts Season 2018/19, 16 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 104000 AND 104999;
# 12.128, 264 games, 45,94 threes per game

#Three Point Attempts Season 2019/20, 17 Teams, nur 27 Spieltage Corona

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 105000 AND 105999;
#12.164, 256 Games, 47,51 threes per game



# Three Point Attempts Season 2020/21, 15 Teams anderer Playoff Modus
# Season 

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 106000 AND 107999;

#11.202, 226 games, 49,57 threes per game

#Three Point Attempts Season 2021/22, 17 Teams

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999;

#15.639, 297 games, 51,75 threes per game

# Attempts per game per team

SELECT SUM("3P_A") AS total_threes, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_A")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   team
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999
GROUP BY team
ORDER BY threes_per_game DESC;

# Made threes per game per team

SELECT SUM("3P_P") AS total_threes_made, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   SUM("3P_P")/COUNT(DISTINCT ("matchId")) AS threes_per_game, 
	   team
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999
GROUP BY team
ORDER BY threes_per_game DESC;

#3´r ratio per game per team

SELECT AVG("3P_R") AS total_threes_ratio, 
	   COUNT(DISTINCT ("matchId")) AS total_games, 
	   team
FROM boxscores AS b 
WHERE "matchId" BETWEEN 108000 AND 108999 
GROUP BY team
ORDER BY total_threes_ratio DESC;

