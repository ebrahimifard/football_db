

/* This query shows how a praticular club is doing */
SELECT cl.club_name , cr.played , cr.matches_won AS W , cr.matches_lose AS L , 
      (cr.played - ( cr.matches_won + cr.matches_lose) ) AS D , 
      cr.goals_for AS GF , cr.goals_against AS GA , (cr.goals_for - cr.goals_against) AS GD ,
      (cr.matches_won*3 + (cr.played - ( cr.matches_won + cr.matches_lose) ) ) AS PTS
FROM ClubsRecords AS cr , Clubs AS cl , Seasons AS se , leagues AS le
WHERE le.league_type="league one" AND  se.season_name ="2011-2012" AND cl.club_name = "perspolis" AND 
      se.league_id = le.league_id AND cr.club_id = cl.club_id AND cr.season_id = se.season_id ;


/* This query gives general information about a player */ 
SELECT pe.f_name , pe.l_name , pe.birthday ,pe.country, pe.city , pe.weight , pe.height ,pe.blood_type AS blood
FROM Persons AS pe
WHERE pe.f_name = "ali" AND pe.l_name = "karimi";


/* This query provides the list of clubs a particular player has played */
SELECT per.f_name , per.l_name , se.season_name , clu.club_name
FROM Persons AS per ,Players AS pl, PlayersClubs AS plc , Clubs AS clu , Seasons AS se
WHERE per.f_name = "ali" AND per.l_name = "karimi" AND per.person_id = pl.person_id AND
      plc.player_id = pl.player_id AND plc.club_id = clu.club_id AND plc.season_id = se.season_id;


/* This query provides the list of matches a player has scored */
SELECT mg.match_id , cl1.club_name AS club1 , cl2.club_name AS club2 , mg.goal_minute 
FROM  MatchesGoals AS mg , Players AS pl , Persons AS pe , Matches AS ma , Clubs AS cl1 , Clubs AS cl2
WHERE pe.f_name="hamidreza" AND pe.l_name="aliasgari" AND pl.person_id = pe.person_id AND 
      pl.player_id = mg.player_id AND mg.match_id = ma.match_id AND ma.home_club_id = cl1.club_id AND
      ma.away_club_id = cl2.club_id;



/* The total number of goals a particular player has scored */
SELECT pe.f_name , pe.l_name , count(*) AS numberOfGoals 
FROM  MatchesGoals AS mg , Players AS pl , Persons AS pe , Matches AS ma , Clubs AS cl1 , Clubs AS cl2
WHERE pe.f_name="hamidreza" AND pe.l_name="aliasgari" AND pl.person_id = pe.person_id AND 
      pl.player_id = mg.player_id AND mg.match_id = ma.match_id AND ma.home_club_id = cl1.club_id AND
      ma.away_club_id = cl2.club_id;



/* The list of matches and the amount of time in each match that a partciular player has played*/
SELECT ma.match_id , clu1.club_name AS club1 , clu2.club_name AS club2 , mp.play_time
FROM Persons AS pe , Players AS pl , MatchesPlayers AS mp , Matches AS ma , Clubs AS clu1 , Clubs AS clu2
WHERE pe.f_name = "ali" AND pe.l_name = "karimi" AND pl.person_id = pe.person_id AND
      mp.player_id = pl.player_id AND mp.match_id = ma.match_id AND 
      ma.home_club_id = clu1.club_id AND ma.away_club_id = clu2.club_id;




/* This query shows the league table */
set @num:=0; 
SELECT @num:=@num+1 `Number` ,cl.club_name , cr.played , cr.matches_won AS W , cr.matches_lose AS L , 
      (cr.played - ( cr.matches_won + cr.matches_lose) ) AS D , 
      cr.goals_for AS GF , cr.goals_against AS GA , (cr.goals_for - cr.goals_against) AS GD ,
      (cr.matches_won*3 + (cr.played - ( cr.matches_won + cr.matches_lose) ) ) AS PTS
FROM ClubsRecords AS cr , Clubs AS cl , Seasons AS se , leagues AS le
WHERE le.league_type="league one" AND  se.season_name ="2010-2011" AND 
      se.league_id = le.league_id AND cr.club_id = cl.club_id AND cr.season_id = se.season_id 
ORDER BY PTS DESC,GD DESC;




/* This query receives a season, a league name, and two clubs and then gives the historical information about matches between two selected clubs*/

#le.league_type , se.season_name 
SELECT cl1.club_name AS club1,ms.home_goals AS goals,ms.home_ball_poss AS ball_poss,ms.home_shoot_num AS shoot,
       cl2.club_name AS club2 ,ms.away_goals AS goals,(100 - ms.home_ball_poss ) AS ball_poss,ms.away_shoot_num AS shoot      
FROM Leagues AS le , Seasons AS se , Clubs AS cl1 , Clubs AS cl2 , Matches AS ma , MatchesStatistics AS ms
WHERE le.league_type = "league one" AND se.season_name = "2011-2012" AND se.league_id = le.league_id AND
      se.season_id = ma.season_id AND
      cl1.club_name = "perspolis" AND cl2.club_name = "esteghlal" AND 
      ma.home_club_id = cl1.club_id AND ma.away_club_id = cl2.club_id AND
      ma.match_id = ms.match_id ;



/* This query provides a list of clubs that have received lowest number of yellow and red cards in a particular season */
SELECT cards.club_name,cards.cardNum
FROM(
      SELECT cl.club_name AS club_name , ( cr.yellow_cards + cr.red_cards ) AS cardNum
      FROM ClubsRecords AS cr, Seasons AS se , Clubs AS cl
      WHERE cr.season_id = se.season_id AND se.season_name="2011-2012" AND cr.club_id = cl.club_id 
    )AS cards
WHERE cards.cardNum <= ALL (   SELECT ( cr.yellow_cards + cr.red_cards ) AS cardNum
                               FROM ClubsRecords AS cr, Seasons AS se , Clubs AS cl
                               WHERE cr.season_id = se.season_id AND se.season_name="2011-2012" AND cr.club_id = cl.club_id 
                            );



/* This query provides a list of clubs that have received highest number of yellow and red cards in a particular season */
SELECT cards.club_name,cards.cardNum
FROM(
      SELECT cl.club_name AS club_name , ( cr.yellow_cards + cr.red_cards ) AS cardNum
      FROM ClubsRecords AS cr, Seasons AS se , Clubs AS cl
      WHERE cr.season_id = se.season_id AND se.season_name="2011-2012" AND cr.club_id = cl.club_id 
    )AS cards
WHERE cards.cardNum >= ALL (   SELECT ( cr.yellow_cards + cr.red_cards ) AS cardNum
                               FROM ClubsRecords AS cr, Seasons AS se , Clubs AS cl
                               WHERE cr.season_id = se.season_id AND se.season_name="2011-2012" AND cr.club_id = cl.club_id 
                            );


/* This query gives the top scorer in a particular season */
SELECT pe.f_name,pe.l_name,count(mg.goal_minute)
FROM MatchesGoals AS mg , Seasons AS se , Matches AS ma , Players AS pl , Persons AS pe
WHERE mg.match_id = ma.match_id AND ma.season_id = se.season_id AND season_name = "2011-2012" AND
      mg.player_id = pl.player_id AND pl.person_id = pe.person_id
GROUP BY pl.player_id
HAVING count(mg.goal_minute) >= ALL( SELECT count(mg2.goal_minute)
                                     FROM MatchesGoals AS mg2 , Seasons AS se2 , Matches AS ma2
                                     WHERE mg2.match_id = ma2.match_id AND ma2.season_id = se2.season_id AND season_name = "2011-2012"
                                     GROUP BY mg2.player_id
                                    );



                                      
/* This query gives a list of players for a particular club */
SELECT DISTINCT pla.player_id , per.f_name , per.l_name
FROM Clubs AS clu , PlayersClubs AS plcl , Players AS pla , Persons AS per
WHERE clu.club_name = "teraktor sazi" AND plcl.club_id = clu.club_id AND plcl.player_id = pla.player_id AND 
      pla.person_id = per.person_id; 
      
      

/* This query gives the list of matches */
SELECT ma.match_id ,ma.season_id , cl1.club_id AS club1 , cl1.club_name , cl2.club_id AS club2 ,cl2.club_name
FROM Matches AS ma , Clubs AS cl1 , Clubs AS cl2
WHERE ma.home_club_id = cl1.club_id AND ma.away_club_id = cl2.club_id
ORDER BY ma.season_id ,cl1.club_id,cl2.club_id;