--average points per minute 
SELECT MAX (("Ps"/sec)*60) AS points_per_minute 
FROM boxscores AS b 
WHERE sec >300;

-- point range from 0-40
-- MAX 12
-- Avg 0,36
-- Max >5 minutes 1,76




SELECT MAX("Ps") AS  most_Points
FROM boxscores AS b 
WHERE sec > 0;

SELECT MAX(("3P_P"*1.5+ "2P_P")/("FG_A")) AS EfG
FROM boxscores AS b 
WHERE sec>0
AND "FG_A" > 0;

--Maximum TO
SELECT MAX("TOs")
FROM boxscores AS b 
WHERE sec >0;
-- 13 TO max, 1,3 per category

-- Max Steals
SELECT MAX("STs")
FROM boxscores AS b 
WHERE sec >0;
--9 st max, 0,9 per category
SELECT MAX("BLs")
FROM boxscores AS b 
WHERE sec >0;
-- 8 bl max. 0,8 per category
SELECT MAX("As")
FROM boxscores AS b 
WHERE sec >0;
--17 As max. 1,7 per category
SELECT MAX("Rs")
FROM boxscores AS b 
WHERE sec >0;
-- 23 REs max 2,3 per category
SELECT COUNT(*)
FROM boxscores AS b
WHERE "Ps" > 25;

SELECT COUNT(*)
FROM boxscores AS b 
WHERE sec>0;


-- count of PG
SELECT COUNT(*)
FROM rosters AS r 
WHERE "position" = 'PG';

SELECT "position", 
 	   season 
FROM rosters AS r 
WHERE name = 'Kevin Smit';

SELECT MAX("Ps")
FROM boxscores AS b 
WHERE "number"= '0';


SELECT "Ps",
      home, 
      date
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE name = 'Kevin Smit'
AND matchday = '1'
AND season = 'Saison_2018_2019';

SELECT SUM("As")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE name = 'Kevin Smit'
AND matchday = '1';

SELECT "position",
	   AVG("Ps")
FROM boxscores AS b 
FULL JOIN rosters AS r 
	 ON b."name"  = r."name"
WHERE sec > 0
GROUP BY "position";

SELECT (SUM(home_points)+SUM(guest_points))/COUNT(DISTINCT (id))
FROM matchdays AS m 
WHERE season = 'Saison_2020_2021'
AND guest <> 'spielfrei'
AND home <> 'spielfrei'
AND home_points <> 0;

SELECT AVG("EFs")
FROM boxscores AS b
WHERE sec > 0;

SELECT AVG("Ps")
FROM boxscores AS b
WHERE sec > 0;


SELECT SUM("As")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id

-- Joining databases
SELECT *
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team)
WHERE r.name = 'Kevin Smit';

SELECT COUNT(*)
FROM boxscores AS b 
WHERE b."Ps" = 0;

SELECT *
FROM (SELECT *
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team)) AS match_roster_join
LEFT JOIN boxscores AS b 
	ON match_roster_join.id = b."matchId"
	AND match_roster_join.name = b."name";



	 