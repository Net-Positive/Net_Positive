/* Three Point Percentage*/
#THREE POINT Percentage SEASON 2014/15, 16 Teams

SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 100000 AND 100999;

-- 30,44%
--#Three Point Percentage Season 2015/16, 16 Teams

SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 101000 AND 101999;
--28,32 %

--#Three Point Percentage Season 2016/17, 16 Teams

SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 102000 AND 102999;
--30,79%

--#Three Point Percentage Season 2017/18, 16 Teams
SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 103000 AND 103999;
--30,48


--#Three Point Percentage Season 2018/19, 16 Teams
SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 104000 AND 104999;
--30,54

--Three Point Percentage Season 2019/20, 17 Teams, nur 27 Spieltage Corona
SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 105000 AND 105999;
--31,43

--# Three Point Percentage Season 2020/21, 15 Teams anderer Playoff Modus
SELECT AVG("3P_R")* 100 AS three_point_percentage
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 106000 AND 107999;
--33,48%

--#Three Point Percentage Season 2021/22, 17 Teams
SELECT AVG("3P_R")* 100 AS three_point_percentage
       --team 
FROM boxscores AS b
WHERE "3P_A" > 0
AND "matchId" BETWEEN 108000 AND 108999;

--32,11

SELECT 