-- Joining the two tables
SELECT *
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id;
-- Homecourt Advantage?
SELECT COUNT(*)
FROM matchdays AS m 
WHERE home_points > guest_points;
 
SELECT COUNT(*)
FROM matchdays AS m 
WHERE home_points < guest_points;
-- more wins for the home team   1198:838

--Hypothesis higher 3 point % -> wins +
/*SELECT COUNT(*)
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points;
-- compare 3% on home wins 
SELECT team AS TEAM,  
	   AVG("3P_R")*100 AS three_percent,
	   
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points
AND "3P_A" > 0
GROUP BY team;*/
SELECT AVG("3P_R"),
	   home 
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
GROUP BY home;
--
SELECT AVG("3P_R"),
	   guest
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
GROUP BY guest;

-- compare avg of home and road games und home wins...
--for season 2019/20
SELECT AVG("3P_R")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
AND team = home;

SELECT AVG("3P_R")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points > guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
AND team = guest;
-- average three point percentage for a home team winning at home 34,36%
--average three point percentage for a road team loosing on the road 28%
SELECT AVG("3P_R")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points < guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
AND team = home;
-- average three point percentag for a home team loosing at home 26.9%
SELECT AVG("3P_R")
FROM boxscores AS b 
FULL JOIN matchdays AS m 
	 ON b."matchId" = m.id
WHERE home_points < guest_points
AND "3P_A" > 0
AND season = 'Saison_2019_2020'
AND team = guest;
--average three point percentage for a road team winning on the road 34.08 %

--

