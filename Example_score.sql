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
WHERE "Ps" > 26;
