-- Joining databases
SELECT *
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team);

SELECT match_roster_join.team, match_roster_join.season, match_roster_join.number, match_roster_join.name, match_roster_join.height, 
	   match_roster_join.weight, match_roster_join.POSITION, 
	   match_roster_join.id, match_roster_join.round, match_roster_join.matchday, match_roster_join."date", 
	   match_roster_join."time", match_roster_join.home, match_roster_join.guest, match_roster_join.home_points, match_roster_join.guest_points,
	   b."matchId", b.team AS teamb, b."number" AS numberb, b."name" AS nameb, b.sec, b."2P_P", b."2P_A", b."2P_R", b."3P_P",
	   b."3P_A" , b."3P_R" , b."FG_P" , b."FG_A" , b."FG_R" , b."FT_P" , b."FT_A" , b."FT_R" , b."Ps" , b."As" ,
	   b."Rs" , b."Fs" , b."BLs" , b."STs" , b."TOs" , b."EFs" 
FROM (SELECT r.team, r.season, r.number, r.name, r.height, r.weight, r.POSITION,
	m.id , m.season  AS season2, m.round , m.matchday, m."date", m."time" , m.home , m.guest, m.home_points , m.guest_points 
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team)) AS match_roster_join
LEFT JOIN boxscores AS b 
	ON match_roster_join.id = b."matchId"
	AND match_roster_join.name = b."name";
-- for Tableau
SELECT 
FROM (SELECT *
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team)) AS match_roster_join
LEFT JOIN boxscores AS b 
	ON match_roster_join.id = b."matchId"
	AND match_roster_join.name = b."name";
	
SELECT match_roster_join.team, match_roster_join.season, match_roster_join.number, match_roster_join.name, match_roster_join.height, 
	   match_roster_join.weight, match_roster_join.POSITION, 
	   match_roster_join.id, match_roster_join.round, match_roster_join.matchday, match_roster_join."date", 
	   match_roster_join."time", match_roster_join.home, match_roster_join.guest, match_roster_join.home_points, match_roster_join.guest_points,
	   b."matchId", b.team AS teamb, b."number" AS numberb, b."name" AS nameb, b.sec, b."2P_P", b."2P_A", b."2P_R", b."3P_P",
	   b."3P_A" , b."3P_R" , b."FG_P" , b."FG_A" , b."FG_R" , b."FT_P" , b."FT_A" , b."FT_R" , b."Ps" , b."As" ,
	   b."Rs" , b."Fs" , b."BLs" , b."STs" , b."TOs" , b."EFs" 
FROM (SELECT r.team, r.season, r.number, r.name, r.height, r.weight, r.POSITION,
	m.id , m.season  AS season2, m.round , m.matchday, m."date", m."time" , m.home , m.guest, m.home_points , m.guest_points 
FROM matchdays AS m 
LEFT JOIN rosters AS r 
	ON m.season = r.season
	AND (m.home  = r.team
	OR m.guest = r.team)) AS match_roster_join
LEFT JOIN boxscores AS b 
	ON match_roster_join.id = b."matchId"
	AND match_roster_join.name = b."name"
WHERE b."Ps" NOTNULL;
