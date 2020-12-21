
DROP DATABASE IF EXISTS football_db;

CREATE DATABASE IF NOT EXISTS football_db;

USE football_db;



CREATE TABLE IF NOT EXISTS Awards  
(
  award_id INT NOT NULL AUTO_INCREMENT,
  award_name VARCHAR(70)NOT NULL,
  PRIMARY KEY(award_id)
);
ALTER TABLE Awards AUTO_INCREMENT=100;

/*
INSERT INTO Awards(award_name) VALUES 
("Footballer of the Year"),
("Best Goalkeeper"),
("Best Defender"),
("Best Midfielder"),
("Best Forward"),
("Coach of the Year"),
("Best Goal of the Year"),
("Best Club of the Year");
*/

CREATE TABLE IF NOT EXISTS Contracts
(
  contract_id INT NOT NULL AUTO_INCREMENT,
  start_date DATE,
  end_date DATE,
  amount INT ,
  contracting_comp VARCHAR(70),
  PRIMARY KEY(contract_id)
);
ALTER TABLE Contracts AUTO_INCREMENT=1000000;


/*
INSERT INTO Contracts(start_date,end_date,amount,contracting_comp)
#perspolis
("2010-1-01","2012-12-29",200000,"perspolis"),
("2010-1-01","2012-12-29",600000,"perspolis"),
("2010-1-01","2012-12-29",700000,"perspolis"),
("2010-1-01","2012-12-29",1400000,"perspolis"),
("2010-1-01","2012-12-29",67800000,"perspolis"),
("2010-1-01","2012-12-29",2066666,"perspolis"),
("2010-1-01","2011-01-02",22123213,"perspolis"),
#esteghlal
("2010-1-01","2011-01-02",600000,"esteghlal"),
("2010-1-01","2012-12-29",700000,"esteghlal"),
("2010-1-01","2012-12-29",800000,"esteghlal"),
("2010-1-01","2012-12-29",2000,"esteghlal"),
("2010-1-01","2012-12-29",4400000,"esteghlal"),
("2010-1-01","2012-12-29",7700000,"esteghlal"),
("2010-1-01","2012-12-29",9000000,"esteghlal"),
#sepahan
("2010-1-01","2012-12-29",200000,"sepahan"),
("2010-1-01","2012-12-29",100000,"sepahan"),
("2010-1-01","2012-12-29",200000,"sepahan"),
("2010-1-01","2012-12-29",250000,"sepahan"),
("2010-1-01","2012-12-29",456000,"sepahan"),
("2010-1-01","2012-12-29",980000,"sepahan"),
("2010-1-01","2012-12-29",10000,"sepahan"),
#malavan
("2010-1-01","2012-12-29",500000,"malavan"),
("2010-1-01","2012-12-29",400000,"malavan"),
("2010-1-01","2012-12-29",2200000,"malavan"),
("2010-1-01","2012-12-29",4400000,"malavan"),
("2010-1-01","2012-12-29",100000,"malavan"),
("2010-1-01","2012-12-29",900000,"malavan"),
("2010-1-01","2012-12-29",800000,"malavan"),

#transfer
("2011-02-03","2012-12-22",10000,"esteghlal"),
("2011-02-03","2012-12-22",20000,"perspolis"),
#zobahan
("2010-1-01","2012-12-29",100000,"zobahan"),
("2010-1-01","2012-12-29",200000,"zobahan"),
("2010-1-01","2012-12-29",300000,"zobahan"),
("2010-1-01","2012-12-29",400000,"zobahan"),
("2010-1-01","2012-12-29",2500000,"zobahan"),
("2010-1-01","2012-12-29",205500000,"zobahan"),
("2010-1-01","2012-12-29",2000000,"zobahan"),
#tractor
("2010-1-01","2012-12-29",8000000,"teraktor sazi"),
("2010-1-01","2012-12-29",850000,"teraktor sazi"),
("2010-1-01","2012-12-29",11100000,"teraktor sazi"),
("2010-1-01","2012-12-29",22200000,"teraktor sazi"),
("2010-1-01","2012-12-29",60000000,"teraktor sazi"),
("2010-1-01","2012-12-29",80000000,"teraktor sazi"),
("2010-1-01","2012-12-29",70000000,"teraktor sazi");
#coach
("2010-1-01","2012-12-29",4444000,"perspolis"),
("2010-1-01","2012-12-29",777000,"esteghlal"),
("2010-1-01","2012-12-29",99990000,"sepahan"),
("2010-1-01","2012-12-29",23400000,"malavan"),
("2010-1-01","2012-12-29",54670000,"zobahan"),
("2010-1-01","2012-12-29",7890000,"teraktor sazi"),
#referee
("2010-1-01","2012-12-29",1000000,"league organization"),
("2010-1-01","2012-12-29",2500000,"league organization"),
("2010-1-01","2012-12-29",3100000,"league organization"),
("2010-1-01","2012-12-29",400000,"league organization"),
("2010-1-01","2012-12-29",500000,"league organization"),
("2010-1-01","2012-12-29",6000000,"league organization"),
("2010-1-01","2012-12-29",90000000,"league organization"),
("2010-1-01","2012-12-29",230000000,"league organization");

*/

CREATE TABLE IF NOT EXISTS Persons
(
  person_id BIGINT NOT NULL,
  country VARCHAR(50) NOT NULL ,
  city VARCHAR(50),
  f_name VARCHAR(30)NOT NULL ,
  l_name VARCHAR(50) NOT NULL ,
  birthday DATE,
  blood_type VARCHAR(10),
  height INT,
  weight INT,
  PRIMARY KEY( person_id )
);


/*
INSERT INTO Persons(person_id,country,city,f_name,l_name,birthday,blood_type,height,weight) VALUES
( 
# BAZIKONAN
(1000000000000000,"iran","tehran","Alireza","Mohammad","1974-7-02","AB+",180,78),
(1000000000000001,"iran","tehran","Mojtaba","Shiri","1984-2-01","0-",188,78),
(1000000000000002,"iran","tehran","Mohammad","Nosrati","1972-7-12","AB+",200,90),
(1000000000000003,"iran","tehran","Hamidreza","Aliasgari","1980-11-05","A-",201,100),
(1000000000000004,"iran","tehran","Ali","Karimi","1971-8-01","AB+",189,54),
(1000000000000005,"iran","tehran","Maziar","Zare","1974-7-02","A-",176,41),
(1000000000000006,"iran","tehran","Gholamreza","Rezaei","1965-2-03","AB+",175,79),
(1000000000000007,"iran","tehran","Hossein","Badamaki","1980-7-02","0-",165,80),
(1000000000000008,"iran","tehran","Mohammad","Nouri","1969-7-02","0-",190,86),
(1000000000000009,"iran","tehran","Saman","Aghazamani","1982-7-02","AB+",197,75),
(1000000000000010,"iran","tehran","Javad","Kazemian","1974-4-04","A-",187,58),
(1000000000000011,"iran","tehran","Ebrahim","Shakouri","1971-1-01","AB+",184,54),
(1000000000000012,"iran","tehran","Mehdi","Mahdavikia","1972-3-05","A-",198,80),
(1000000000000013,"iran","tehran","Alireza","Noormohammadi","1974-7-01","AB+",179,91),
(1000000000000014,"iran","tehran","Vahid","Hashemian","1970-7-01","A-",183,92),
(1000000000000015,"iran","tehran","Amir Hossein","Feshangchi","1964-7-02","B-",170,94),
(1000000000000016,"iran","tehran","Mohammad Mehdi","Elhaei","1972-5-09","AB+",183,88),
(1000000000000017,"iran","tehran","Mehdi","Rahmati","1972-7-02","A-",210,99),
(1000000000000018,"iran","tehran","Khosro","Heydari","1982-8-09","B-",187,66),
(1000000000000019,"iran","tehran","Mehdi","Amirabadi","1982-9-09","AB+",184,77),
(1000000000000020,"iran","tehran","Hamid","Azizzadeh","1980-8-01","AB+",184,99),
(1000000000000021,"iran","tehran","Hanif","Omranzadeh","1972-8-09","0-",183,77),
(1000000000000022,"iran","tehran","Kianoush","Rahmati","1971-1-01","AB+",164,66),
(1000000000000023,"iran","tehran","Mojtaba","Jabbari","1969-7-02","0-",197,55),
(1000000000000024,"iran","tehran","Arash","Borhani","1979-3-02","A-",190,69),
(1000000000000025,"iran","tehran","Milad","Meydavoudi","1969-1-02","B-",191,59),
(1000000000000026,"iran","tehran","Mohsen","Yousefi","1939-7-02","AB+",181,69),
(1000000000000027,"iran","tehran","Jlloyd","Samuel","1965-5-08","AB+",195,71),
(1000000000000028,"iran","tehran","Andranik","Teymourian","1989-1-02","0-",201,72),
(1000000000000029,"iran","tehran","Meysam","Hosseini","1980-1-01","AB+",187,74),
(1000000000000030,"iran","tehran","Ali","Hamoudi","1969-7-02","B-",177,79),
(1000000000000031,"iran","tehran","Mehdi","Eslami","1972-5-09","B-",183,81),
(1000000000000032,"iran","tehran","Hossein","Alavi","1971-1-01","0-",186,85),
(1000000000000033,"iran","tehran","Pejman","Montazeri","1971-5-09","AB+",184,90),
(1000000000000034,"iran","tehran","Ferydoon","Zandi","1962-5-09","B+",182,91),
(1000000000000035,"iran","tehran","Javad","Shirzad","1971-1-01","0-",184,76),
(1000000000000036,"iran","tehran","Tohid","Gholami","1965-5-08","0-",184,60),
(1000000000000037,"iran","tehran","Iman","Mobali","1985-1-05","AB+",183,65),
(1000000000000038,"iran","tehran","Hadi","Zarrin","1975-4-08","A-",183,66),
(1000000000000039,"iran","tehran","Mehrdad","Hosseini","1981-1-01","B+",185,78),
(1000000000000040,"iran","tehran","Hossein","Hooshyar","1977-7-03","B+",190,77),
(1000000000000041,"iran","tehran","Saeid","Ghadami","1969-3-02","A-",193,66),
(1000000000000042,"iran","tehran","Hossein","Kanaani","1979-1-08","AB+",190,59),
(1000000000000043,"iran","tehran","Mehrdad","Oladi","1975-2-03","O+",194,60),
(1000000000000044,"iran","tehran","Mamadou","Tall","1985-8-08","O+",199,51),
(1000000000000045,"iran","tehran","Masoud","Dastani","1970-5-08","O+",189,59),
(1000000000000046,"iran","tehran","Rouhollah","Seifollahi","1972-2-03","A+",201,57),
(1000000000000047,"iran","tehran","Hadi","Norouzi","1979-9-08","AB+",179,53),
# morrabiha 
(1000000000000048,"England","manchester","Danny","McLennan","1945-1-03","0-",165,81),
(1000000000000049,"iran","tehran","Mahmoud","Bayati","1939-1-03","AB+",164,74),
(1000000000000050,"iran","tehran","Mohammad","Ranjbar","1949-2-11","AB+",164,60),
(1000000000000051,"iran","tehran","Parviz","Dehdari","1955-5-10","0-",159,73),
(1000000000000052,"Russia","moscow","Igor","Netto","1945-2-03","0-",189,73),
(1000000000000053,"Russia","moscow","Zdravko","Rajkov","1935-1-03","AB+",201,63),
(1000000000000054,"iran","tehran","Hossein","Fekri","1932-7-07","AB+",204,74),
(1000000000000055,"iran","tehran","Mostafa","Salimi","1955-1-03","0-",168,63),
(1000000000000056,"iran","tehran","Hossein","Sadaghian","1935-10-07","A-",179,61),
# davar ha 
(1000000000000057,"iran","tehran","Reza","Sokhandan","1959-8-01","AB+",189,53),
(1000000000000058,"iran","tehran","Davoud","Rafatisajedi","1958-2-01","AB+",186,90),
(1000000000000059,"iran","tehran","Mohammadreza","Mansouri","1949-1-08","A-",185,100),
(1000000000000060,"iran","tehran","Hassan","Kamranifar","1965-5-08","0-",165,49),
(1000000000000060,"iran","tehran","Alireza","Kahouri","1970-5-01","AB+",159,51),
(1000000000000060,"iran","tehran","Alireza","Faghani","1960-8-08","O+",194,59),
(1000000000000060,"iran","tehran","Mohsen","Ghahremani","1968-8-08","0-",186,53),
(1000000000000060,"iran","tehran","Yadollah","Jahanbazi","1959-1-01","A+",179,83),
(1000000000000060,"iran","tehran","Hedayat","Mombini","1961-1-03","AB+",195,94),
(1000000000000060,"iran","tehran","Saeid","Mozaffarizadeh","1964-3-12","B+",170,90),
(1000000000000060,"iran","tehran","Mohsen","Torki","1979-1-07","O+",180,78),
(1000000000000060,"iran","tehran","Mohammadreza","Abolfazli","1980-3-02","AB+",190,69),
(1000000000000060,"iran","tehran","Babak","Davari","1959-8-01","AB+",185,55);


*/




CREATE TABLE IF NOT EXISTS Leagues 
(
  league_id INT NOT NULL AUTO_INCREMENT,
  league_type VARCHAR(50),
  country VARCHAR(50),
  PRIMARY KEY(league_id)
);
ALTER TABLE Leagues AUTO_INCREMENT=1000;

/*
INSERT INTO leagues(league_type,country) VALUES
("league one","iran");
*/


CREATE TABLE IF NOT EXISTS Seasons
(
  season_id INT NOT NULL AUTO_INCREMENT,
  league_id INT NOT NULL,
  start_date DATE,
  end_date DATE,
  season_name VARCHAR(20),
  club_num INT,
  PRIMARY KEY(season_id),
  FOREIGN KEY (league_id) REFERENCES Leagues(league_id)
);
ALTER TABLE Seasons AUTO_INCREMENT=10000;

/*
INSERT INTO Seasons(league_id,start_date,end_date,season_name,club_num)
VALUES(1000,"2010-7-04","2011-7-02","2010-2011",7),
VALUES(1000,"2011-7-04",2012-7-02","2011-2012",5);
*/

CREATE TABLE IF NOT EXISTS Stadiums
(
  stadium_id INT NOT NULL AUTO_INCREMENT,
  stadium_name VARCHAR(50) NOT NULL ,
  capacity INT,
  city VARCHAR(50),
  PRIMARY KEY(stadium_id)
);
ALTER TABLE Stadiums AUTO_INCREMENT=10000000;

/*
INSERT INTO Stadiums(stadium_name,capacity,city) VALUES
("azadi",100000,"tehran"),
("takhti",30000,"isfahan"),
("janbazan",25000,"noshahr"),
("shirudi",40000,"fuladshahr"),
("azadi",80000,"tabriz");
*/


CREATE TABLE IF NOT EXISTS Clubs
(
  club_id INT NOT NULL AUTO_INCREMENT,
  club_name VARCHAR(70),
  PRIMARY KEY(club_id)
);
ALTER TABLE Clubs AUTO_INCREMENT=100000;


/*
INSERT INTO Clubs(club_name) VALUES
("perspolis"),
("esteghlal"),
("sepahan"),
("malavan"),
("zobahan"),
("teraktor sazi");
*/


CREATE TABLE IF NOT EXISTS ClubsStadiums
(
  club_name VARCHAR(70),
  stadium_id INT NOT NULL,
  PRIMARY KEY(club_name),
  FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id)
);

/*
INSERT INTO ClubsStadiums(club_name,stadium_id) VALUES
("perspolis",10000000),
("esteghlal",10000000),
("sepahan",10000001),
("malavan",10000002),
("zobahan",10000003),
("teraktor sazi",10000004);
 */

CREATE TABLE IF NOT EXISTS ClubsRecords /* 1 */
(
  club_id INT NOT NULL,
  season_id INT NOT NULL,        
  first_shirt VARCHAR(50),
  second_shirt VARCHAR(50),
  played INT DEFAULT 0,
  matches_won INT DEFAULT 0,
  /*matches_drawn INT DEFAULT 0,*/
  matches_lose INT DEFAULT 0,
  goals_for INT DEFAULT 0,
  goals_against INT DEFAULT 0,
  yellow_cards INT DEFAULT 0,
  red_cards INT DEFAULT 0,
  PRIMARY KEY( club_id , season_id),
  FOREIGN KEY (club_id) REFERENCES Clubs(club_id),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);/* Emtiyaz va Goal difference ra az ruye field haye jadval mohasebeh mikonim  */



/*
INSERT INTO ClubsRecords(club_id,season_id,first_shirt,second_shirt,played,matches_won,matches_lose,goals_for,goals_against,yellow_cards,red_cards) VALUES
(100000,10001,"red","white",6,3,1,10,5,0,0),
(100001,10001,"blue","white",6,2,2,10,8,0,0),
(100002,10001,"yellow","black",6,3,2,9,8,2,0),
(100003,10001,"whte","black",6,0,3,7,15,3,0),

(100000,10000,"red","white",6,2,2,10,8,1,0),
(100001,10000,"blue","white",6,2,2,10,11,1,0),
(100004,10000,"yellow","black",6,2,3,10,13,2,0),
(100005,10000,"red","black",6,2,1,13,11,2,0);
*/



CREATE TABLE IF NOT EXISTS StadiumsTickets
(
  season_id INT NOT NULL,
  stadium_id INT NOT NULL,
  ticket_price INT NOT NULL,
  PRIMARY KEY( season_id , stadium_id ),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id),
  FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id)
);

/*
INSERT INTO StadiumsTickets(season_id,stadium_id,ticket_price) VALUES
(10000,10000000,4000),
(10000,10000001,2500),
(10000,10000002,1400),
(10000,10000003,2200),
(10001,10000000,5000),
(10001,10000001,2400),
(10001,10000002,3000),
(10001,10000003,2600),
(10001,10000004,1800),
(10001,10000005,3200),
(10002,10000006,3000),
(10002,10000007,1200),
(10002,10000013,92000),
(10003,10000008,51800),
(10003,10000009,44200),
(10003,10000010,34200),
(10003,10000011,14200),
(10003,10000012,47000);
*/

CREATE TABLE IF NOT EXISTS Players
(
  player_id INT NOT NULL AUTO_INCREMENT,
  person_id BIGINT NOT NULL,
  PRIMARY KEY( player_id ),
  FOREIGN KEY (person_id) REFERENCES Persons(person_id)
);
ALTER TABLE Players AUTO_INCREMENT=100000000;




/*
INSERT INTO Players(person_id) VALUES
(1000000000000000),
(1000000000000001),
(1000000000000002),
(1000000000000003),
(1000000000000004),
(1000000000000005),
(1000000000000006),
(1000000000000007),
(1000000000000008),
(1000000000000009),
(1000000000000010),
(1000000000000011),
(1000000000000012),
(1000000000000013),
(1000000000000014),
(1000000000000015),
(1000000000000016),
(1000000000000017),
(1000000000000018),
(1000000000000019),
(1000000000000020),
(1000000000000021),
(1000000000000022),
(1000000000000023),
(1000000000000024),
(1000000000000025),
(1000000000000026),
(1000000000000027),
(1000000000000028),
(1000000000000029),
(1000000000000030),
(1000000000000031),
(1000000000000032),
(1000000000000033),
(1000000000000034),
(1000000000000035),
(1000000000000036),
(1000000000000037),
(1000000000000038),
(1000000000000039),
(1000000000000040),
(1000000000000041)

;
*/


CREATE TABLE IF NOT EXISTS PlayersClubs
(
  player_id INT NOT NULL,
  club_id INT NOT NULL,
  season_id INT NOT NULL,
  post VARCHAR(30),  
  number INT,
  PRIMARY KEY( player_id ,club_id ,season_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id),
  FOREIGN KEY (club_id) REFERENCES Clubs(club_id),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);





/*
INSERT INTO PlayersClubs VALUES
#perspolis 1
(100000000,100000,10001,"GK",1),
(100000001,100000,10001,"DF",2),
(100000002,100000,10001,"DF",3),
(100000003,100000,10001,"DF",4),
(100000004,100000,10001,"MF",5),
(100000005,100000,10001,"FW",6),
(100000006,100000,10001,"FW",7),
#esteghlal 1
(100000007,100001,10001,"GK",1),
(100000008,100001,10001,"DF",2),
(100000009,100001,10001,"DF",2),
(100000010,100001,10001,"MF",5),
(100000011,100001,10001,"FW",5),
(100000012,100001,10001,"FW",6),
(100000013,100001,10001,"FW",7),
#sepahan
(100000014,100002,10001,"GK",1),
(100000015,100002,10001,"DF",2),
(100000016,100002,10001,"DF",3),
(100000017,100002,10001,"MF",4),
(100000018,100002,10001,"MF",5),
(100000019,100002,10001,"MF",6),
(100000020,100002,10001,"FW",7),
#malavan
(100000021,100003,10001,"GK",1),
(100000022,100003,10001,"DF",2),
(100000023,100003,10001,"DF",3),
(100000024,100003,10001,"FW",4),
(100000025,100003,10001,"FW",5),
(100000026,100003,10001,"FW",6),
(100000027,100003,10001,"FW",7),
#perspolis 2
(100000000,100000,10000,"GK",1),
(100000001,100000,10000,"DF",2),
(100000002,100000,10000,"DF",3),
(100000003,100000,10000,"DF",4),
(100000004,100000,10000,"MF",5),
(100000005,100000,10000,"MF",5),
(100000007,100000,10000,"FW",7),
#esteghlal 2
(100000006,100001,10000,"GK",1),
(100000008,100001,10000,"DF",2),
(100000009,100001,10000,"DF",3),
(100000010,100001,10000,"MF",4),
(100000011,100001,10000,"MF",5),
(100000012,100001,10000,"MF",6),
(100000013,100001,10000,"FW",7),
#zobahan
(100000028,100004,10000,"GK",1),
(100000029,100004,10000,"DF",2),
(100000030,100004,10000,"MF",3),
(100000031,100004,10000,"MF",4),
(100000032,100004,10000,"MF",5),
(100000033,100004,10000,"MF",6),
(100000034,100004,10000,"FW",7),
#teraktor\
(100000035,100005,10000,"GK",1),
(100000036,100005,10000,"DF",2),
(100000037,100005,10000,"DF",3),
(100000038,100005,10000,"DF",4),
(100000039,100005,10000,"DF",5),
(100000040,100005,10000,"FW",6),
(100000041,100005,10000,"FW",7);

*/

CREATE TABLE IF NOT EXISTS PlayersAwards
(
  player_id INT NOT NULL,
  award_id INT NOT NULL,
  dedicate_year INT,
  PRIMARY KEY( player_id , award_id , dedicate_year ),
  FOREIGN KEY (player_id) REFERENCES Players(player_id),
  FOREIGN KEY (award_id) REFERENCES Awards(award_id)
);


/*
INSERT INTO PlayersAwards VALUES
(100000004,100,2011),
(100000010,100,2012);
*/

CREATE TABLE IF NOT EXISTS PlayersContracts
(
  player_id INT NOT NULL,
  contract_id INT NOT NULL,
  PRIMARY KEY(contract_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id),
  FOREIGN KEY (contract_id) REFERENCES Contracts(contract_id)
);

/*
INSERT INTO PlayersContracts VALUES
(100000000,1000000),
(100000001,1000001),
(100000002,1000002),
(100000003,1000003),
(100000004,1000004),
(100000005,1000005),
(100000006,1000006),
(100000006,1000028),
(100000007,1000007),
(100000007,1000029),
(100000008,1000008),
(100000009,1000009),
(100000010,1000010),
(100000011,1000011),
(100000012,1000012),
(100000013,1000013),
(100000014,1000014),
(100000015,1000015),
(100000016,1000016),
(100000017,1000017),
(100000018,1000018),
(100000019,1000019),
(100000020,1000020),
(100000021,1000021),
(100000022,1000022),
(100000023,1000023),
(100000024,1000024),
(100000025,1000025),
(100000026,1000026),
(100000027,1000027),
(100000028,1000030),
(100000029,1000031),
(100000030,1000032),
(100000031,1000033),
(100000032,1000034),
(100000033,1000035),
(100000034,1000036),
(100000035,1000037),
(100000036,1000038),
(100000037,1000039),
(100000038,1000040),
(100000039,1000041),
(100000040,1000042),
(100000041,1000043);
*/

CREATE TABLE IF NOT EXISTS Coaches
(
  coach_id INT NOT NULL AUTO_INCREMENT,
  person_id BIGINT NOT NULL,
  PRIMARY KEY( coach_id ),
  FOREIGN KEY (person_id) REFERENCES Persons(person_id)
);
ALTER TABLE Coaches AUTO_INCREMENT=1000000000;

/*
INSERT INTO Coaches(person_id) VALUES
(1000000000000048),
(1000000000000049),
(1000000000000050),
(1000000000000051),
(1000000000000052),
(1000000000000053);                       
*/

CREATE TABLE IF NOT EXISTS CoachesClubs
(
  coach_id INT NOT NULL,
  club_id INT NOT NULL,
  season_id INT NOT NULL,
  PRIMARY KEY(coach_id,club_id,season_id),
  FOREIGN KEY (coach_id) REFERENCES Coaches(coach_id),
  FOREIGN KEY (club_id) REFERENCES Clubs(club_id),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

/*
INSERT INTO CoachesClubs VALUES
(1000000000,100000,10001),
(1000000001,100001,10001),
(1000000002,100002,10001),
(1000000003,100003,10001),
(1000000000,100000,10000),
(1000000001,100001,10000),
(1000000004,100004,10000),
(1000000005,100005,10000);

*/


CREATE TABLE IF NOT EXISTS CoachesAwards
(
  coach_id INT NOT NULL,
  award_id INT NOT NULL,
  dedicate_year INT,
  PRIMARY KEY( coach_id , award_id , dedicate_year ),
  FOREIGN KEY (coach_id) REFERENCES Coaches(coach_id),
  FOREIGN KEY (award_id) REFERENCES Awards(award_id)
);

/*
INSERT INTO CoachesAwards VALUES
(1000000000,105,2011),
(1000000005,105,2012);
*/


CREATE TABLE IF NOT EXISTS CoachesContracts
(
  coach_id INT NOT NULL,
  contract_id INT NOT NULL,
  PRIMARY KEY(contract_id),
  FOREIGN KEY (coach_id) REFERENCES Coaches(coach_id),
  FOREIGN KEY (contract_id) REFERENCES Contracts(contract_id)
);

/*
INSERT INTO CoachesContracts
(1000000000,1000044),
(1000000001,1000045),
(1000000002,1000046),
(1000000003,1000047),
(1000000004,1000048),
(1000000005,1000049);
*/
CREATE TABLE IF NOT EXISTS Referees
(
  referee_id INT NOT NULL AUTO_INCREMENT,
  person_id BIGINT NOT NULL,
  PRIMARY KEY( referee_id ),
  FOREIGN KEY (person_id) REFERENCES Persons(person_id)
);
ALTER TABLE Referees AUTO_INCREMENT=500;
 
 /* 
 10000000000;                                
INSERT INTO Referees(person_id) VALUES
(1000000000000057),
(1000000000000058),
(1000000000000059),
(1000000000000060),
(1000000000000061),
(1000000000000062),
(1000000000000063),
(1000000000000064);
*/

CREATE TABLE IF NOT EXISTS RefereesAwards
(
  referee_id INT NOT NULL,
  award_id INT NOT NULL,
  dedicate_year INT,
  PRIMARY KEY( referee_id , award_id , dedicate_year ),
  FOREIGN KEY (referee_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (award_id) REFERENCES Awards(award_id)
);
/*
INSERT INTO RefereesAwards VALUES
(502,108,2011),
(505,108,2012);
*/

CREATE TABLE IF NOT EXISTS RefereesContracts
(
  referee_id INT NOT NULL,
  contract_id INT NOT NULL,
  PRIMARY KEY(contract_id),
  FOREIGN KEY (referee_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (contract_id) REFERENCES Contracts(contract_id)
);

/*
INSERT INTO RefereesContracts VALUES
(500,1000050),
(501,1000051),
(502,1000052),
(503,1000053),
(504,1000054),
(505,1000055),
(506,1000056),
(507,1000057),
*/


CREATE TABLE IF NOT EXISTS Matches /*2 */
(
  match_id INT NOT NULL AUTO_INCREMENT,
  season_id INT NOT NULL,
  home_club_id INT NOT NULL,
  away_club_id INT NOT NULL,
  holding_date DATE,
  holding_time TIME,
  referee_id INT NOT NULL,
  assist_ref1_id INT NOT NULL,
  assist_ref2_id INT NOT NULL,
  assist_ref4_id INT NOT NULL,
  attend_num INT NOT NULL,
  tempreture INT,
  humidity INT,
  isHold VARCHAR(10), #TRUE OR FALSE
  PRIMARY KEY(match_id),
  FOREIGN KEY (season_id) REFERENCES Seasons(season_id),
  FOREIGN KEY (home_club_id) REFERENCES Clubs(club_id),
  FOREIGN KEY (away_club_id) REFERENCES Clubs(club_id),
  FOREIGN KEY (referee_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (assist_ref1_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (assist_ref2_id) REFERENCES Referees(referee_id),
  FOREIGN KEY (assist_ref4_id) REFERENCES Referees(referee_id)
);
ALTER TABLE Matches AUTO_INCREMENT=50000;


      
     

/*
100000000000;
INSERT INTO Matches(season_id,home_club_id,away_club_id,holding_date,holding_time,referee_id,
                    assist_ref1_id,assist_ref2_id,assist_ref4_id,attend_num,tempreture,humidity,isHold) VALUES
(10000,100000,100001,"2010-03-09","19:45",500,501,502,503,10000,19,30,"True"),
(10000,100000,100004,"2010-04-08","19:45",504,500,501,502,25000,21,76,"True"),
(10000,100000,100005,"2010-05-05","19:45",502,501,505,506,32000,22,34,"True"),
(10000,100001,100000,"2010-06-03","19:45",507,505,504,503,12000,30,90,"True"),
(10000,100001,100004,"2010-07-06","19:45",501,502,505,500,7000,32,24,"True"),
(10000,100001,100005,"2010-08-19","19:45",500,501,504,502,500,33,49,"True"),
(10000,100004,100000,"2010-09-13","20:45",501,505,506,507,17000,25,65,"True"),
(10000,100004,100001,"2010-10-22","20:45",503,505,504,502,19000,20,55,"True"),
(10000,100004,100005,"2010-11-29","20:45",501,504,500,501,21000,19,33,"True"),
(10000,100005,100000,"2010-12-11","20:45",500,501,502,503,26000,15,80,"True"),
(10000,100005,100001,"2011-01-05","20:45",500,503,507,504,29000,18,10,"True"),
(10000,100005,100004,"2011-01-12","20:45",504,505,506,507,30000,17,43,"True"),

(10001,100000,100001,"2011-03-09","18:15",501,502,503,504,16000,29,70,"True"),
(10001,100000,100002,"2011-04-18","18:15",501,500,503,505,13000,31,76,"True"),
(10001,100000,100003,"2011-05-11","18:15",505,501,500,506,3000,20,14,"True"),
(10001,100001,100000,"2011-06-26","18:15",500,502,502,503,12000,10,30,"True"),
(10001,100001,100001,"2011-07-06","18:15",501,502,506,507,5000,2,14,"True"),
(10001,100001,100002,"2011-08-29","18:15",505,502,503,502,100,13,39,"True"),
(10001,100002,100000,"2011-09-18","21:00",500,502,503,504,10000,15,75,"True"),
(10001,100002,100001,"2011-10-26","21:00",504,505,501,500,21000,30,85,"True"),
(10001,100002,100002,"2011-11-16","21:00",501,504,502,506,20000,9,83,"True"),
(10001,100003,100000,"2011-12-14","21:00",506,501,502,505,10000,5,10,"True"),
(10001,100003,100001,"2012-01-11","21:00",500,503,507,504,19000,8,30,"True"),
(10001,100003,100002,"2012-01-25","21:00",504,505,506,507,7000,17,23,"True");

*/


CREATE TABLE IF NOT EXISTS MatchesCards
(
  match_id INT NOT NULL,
  player_id INT NOT NULL,
  card_minute INT,
  card_color VARCHAR(10),
  PRIMARY KEY( match_id,player_id,card_minute),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

      

/*
INSERT INTO MatchesCards VALUES
(50000,100000010,29,"yellow"),
(50001,100000031,76,"yellow"),
(50002,100000002,90,"yellow"),
(50002,100000037,1,"yellow"),
(50002,100000039,56,"yellow"),
(50007,100000032,89,"yellow"),
(50017,100000023,56,"yellow"),
(50018,100000018,40,"yellow"),
(50019,100000019,65,"yellow"),
(50021,100000025,23,"yellow"),
(50023,100000023,50,"yellow");

*/

CREATE TABLE IF NOT EXISTS MatchesGoals
(
  match_id INT NOT NULL,
  player_id INT NOT NULL,
  goal_minute INT,
 /* goal_style VARCHAR(50),*/
  PRIMARY KEY( match_id,player_id,goal_minute),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

/*
INSERT INTO MatchesGoals VALUES
(50000,100000003,20),
(50000,100000002,38),
(50000,100000009,49),
(50000,100000008,68),

(50001,100000001,26),
(50001,100000002,56),
(50001,100000003,70),

(50002,100000003,80),
(50002,100000038,90),

(50003,100000008,40),

(50004,100000030,38),
(50004,100000031,79),

(50005,100000009,13),
(50005,100000037,26),
(50005,100000038,40),
(50005,100000008,59),
(50005,100000038,87),

(50006,100000031,54),
(50006,100000002,60),
(50006,100000003,61),
(50006,100000003,63),

(50007,100000008,70),
(50007,100000031,73),
(50007,100000031,80),
(50007,100000009,82),
(50007,100000009,90),

(50008,100000030,3),
(50008,100000036,17),
(50008,100000037,19),
(50008,100000031,40),
(50008,100000031,43),
(50008,100000038,49),
(50008,100000038,78),
(50008,100000030,84),


(50009,100000036,80),
(50009,100000038,83),
(50009,100000037,84),
(50009,100000003,88),

(50010,100000009,35),
(50010,100000007,50),
(50010,100000038,70),
(50010,100000036,89),

(50011,100000031,38),

(50012,100000008,12),
(50012,100000009,59),
(50012,100000002,76),
(50012,100000003,80),
(50012,100000003,87),

(50013,100000002,45),
(50013,100000003,90),

(50014,100000002,34),
(50014,100000023,37),

(50015,100000002,1),
(50015,100000008,10),

(50016,100000008,17),
(50016,100000008,19),

(50017,100000009,23),
(50017,100000010,27),
(50017,100000010,29),

(50018,100000017,34),

(50019,100000016,39),
(50019,100000015,89),


(50020,100000017,23),
(50020,100000017,38),
(50020,100000022,40),
(50020,100000023,45),
(50020,100000016,71),
(50020,100000017,81),

(50021,100000002,87),
(50021,100000003,89),
(50021,100000002,90),

(50022,100000024,1),
(50022,100000025,5),
(50022,100000009,7),
(50022,100000010,15),

(50023,100000024,11),
(50023,100000023,24),
(50023,100000017,56),
(50023,100000017,81);

*/
CREATE TABLE IF NOT EXISTS MatchesInjuries
(
  match_id INT NOT NULL,
  player_id INT NOT NULL,
  injury_minute INT NOT NULL,
  injury_type VARCHAR(30),
  end_date DATE,
  PRIMARY KEY( match_id,player_id),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id)
);



CREATE TABLE IF NOT EXISTS MatchesStatistics
(
  match_id INT NOT NULL,
  home_goals INT DEFAULT 0,
  away_goals INT DEFAULT 0,
  home_ball_poss INT DEFAULT 0, 
  /*away_ball_poss INT DEFAULT 0,*/  /* baraye mohasebeye in field kafiyeh ke 100 ro menhaye home_ball_poss konim */
  home_shoot_num INT DEFAULT 0,
  away_shoot_num INT DEFAULT 0,
  PRIMARY KEY(match_id),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

/*
INSERT INTO MatchesStatistics VALUES
(50000,2,2,65,23,19),
(50001,3,0,61,19,10),
(50002,1,1,48,21,18),
(50003,1,0,80,30,17),
(50004,0,2,69,43,35),
(50005,2,3,54,39,13),
(50006,1,3,50,12,19),
(50007,2,3,60,14,9),
(50008,4,4,49,17,10),
(50009,3,1,51,19,18),
(50010,2,2,39,23,21),
(50011,0,1,48,12,14),
(50012,3,2,57,16,15),
(50013,2,0,51,11,25),
(50014,1,1,40,26,39),
(50015,1,1,30,40,41),
(50016,2,0,32,16,19),
(50017,3,0,80,11,14),
(50018,1,0,54,23,34),
(50019,2,0,57,18,25),
(50020,4,2,55,13,13),
(50021,0,3,53,12,21),
(50022,2,2,45,20,19),
(50023,2,2,72,19,25);
*/





CREATE TABLE IF NOT EXISTS MatchesPlayers
(
  match_id INT NOT NULL,
  player_id INT NOT NULL, 
  role VARCHAR(70),
  play_time INT,
  PRIMARY KEY( match_id,player_id),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id),
  FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
/*
INSERT INTO MatchesPlayers VALUES
(50000,100000000,"fix",90),
(50000,100000001,"fix",90),
(50000,100000002,"fix",90),
(50000,100000003,"fix",90),
(50000,100000004,"fix",90),
(50000,100000005,"out",0),
(50000,100000007,"out",0),
(50000,100000006,"fix",90),
(50000,100000008,"fix",90),
(50000,100000009,"fix",90),
(50000,100000010,"fix",90),
(50000,100000011,"fix",90),
(50000,100000012,"out",0),
(50000,100000013,"out",0),

(50001,100000000,"fix",90),
(50001,100000001,"fix",90),
(50001,100000002,"fix",90),
(50001,100000003,"fix",90),
(50001,100000004,"from_game_to_out",60),
(50001,100000005,"from_out_to_game",30),
(50001,100000007,"out",0),
(50001,100000028,"fix",90),
(50001,100000029,"fix",90),
(50001,100000030,"fix",90),
(50001,100000031,"fix",90),
(50001,100000032,"fix",90),
(50001,100000033,"out",0),
(50001,100000034,"out",0),

(50002,100000000,"fix",90),
(50002,100000001,"fix",90),
(50002,100000002,"fix",90),
(50002,100000003,"fix",90),
(50002,100000004,"from_game_to_out",78),
(50002,100000005,"out",0),
(50002,100000007,"from_out_to_game",12),
(50002,100000035,"fix",90),
(50002,100000036,"fix",90),
(50002,100000037,"fix",90),
(50002,100000038,"fix",90),
(50002,100000039,"from_game_to_out",61),
(50002,100000040,"from_out_to_game",29),
(50002,100000041,"out",0),



(50003,100000006,"fix",90),
(50003,100000008,"fix",90),
(50003,100000009,"fix",90),
(50003,100000010,"fix",90),
(50003,100000011,"fix",90),
(50003,100000012,"out",0),
(50003,100000013,"out",0),
(50003,100000000,"fix",90),
(50003,100000001,"fix",90),
(50003,100000002,"fix",90),
(50003,100000003,"fix",90),
(50003,100000004,"fix",90),
(50003,100000005,"out",0),
(50003,100000007,"out",0),

(50004,100000006,"fix",90),
(50004,100000008,"fix",90),
(50004,100000009,"fix",90),
(50004,100000010,"fix",90),
(50004,100000011,"fix",90),
(50004,100000012,"out",0),
(50004,100000013,"out",0),
(50004,100000028,"fix",90),
(50004,100000029,"fix",90),
(50004,100000030,"fix",90),
(50004,100000031,"fix",90),
(50004,100000032,"fix",90),
(50004,100000033,"out",0),
(50004,100000034,"out",0),


(50005,100000006,"fix",90),
(50005,100000008,"fix",90),
(50005,100000009,"fix",90),
(50005,100000010,"fix",90),
(50005,100000011,"from_game_to_out",48),
(50005,100000012,"from_out_to_game",42),
(50005,100000013,"out",0),
(50005,100000035,"fix",90),
(50005,100000036,"fix",90),
(50005,100000037,"fix",90),
(50005,100000038,"fix",90),
(50005,100000039,"fix",90),
(50005,100000040,"out",0),
(50005,100000041,"out",0),



(50006,100000028,"fix",90),
(50006,100000029,"fix",90),
(50006,100000030,"fix",90),
(50006,100000031,"fix",90),
(50006,100000032,"fix",90),
(50006,100000033,"out",0),
(50006,100000034,"out",0),
(50006,100000000,"fix",90),
(50006,100000001,"fix",90),
(50006,100000002,"fix",90),
(50006,100000003,"fix",90),
(50006,100000004,"fix",90),
(50006,100000005,"out",0),
(50006,100000007,"out",0),


(50007,100000028,"fix",90),
(50007,100000029,"fix",90),
(50007,100000030,"fix",90),
(50007,100000031,"fix",90),
(50007,100000032,"fix",90),
(50007,100000033,"out",0),
(50007,100000034,"out",0),
(50007,100000006,"fix",90),
(50007,100000008,"fix",90),
(50007,100000009,"fix",90),
(50007,100000010,"fix",90),
(50007,100000011,"fix",90),
(50007,100000012,"out",0),
(50007,100000013,"out",0),



(50008,100000028,"fix",90),
(50008,100000029,"fix",90),
(50008,100000030,"fix",90),
(50008,100000031,"fix",90),
(50008,100000032,"fix",90),
(50008,100000033,"out",0),
(50008,100000034,"out",0),
(50008,100000035,"fix",90),
(50008,100000036,"fix",90),
(50008,100000037,"fix",90),
(50008,100000038,"fix",90),
(50008,100000039,"fix",90),
(50008,100000040,"out",0),
(50008,100000041,"out",0),


(50009,100000035,"fix",90),
(50009,100000036,"fix",90),
(50009,100000037,"fix",90),
(50009,100000038,"fix",90),
(50009,100000039,"from_game_to_out",88),
(50009,100000040,"out",0),
(50009,100000041,"from_out_to_game",2),
(50009,100000000,"fix",90),
(50009,100000001,"fix",90),
(50009,100000002,"fix",90),
(50009,100000003,"fix",90),
(50009,100000004,"from_game_to_out",80),
(50009,100000005,"from_out_to_game",10),
(50009,100000007,"out",0),

(50010,100000035,"fix",90),
(50010,100000036,"fix",90),
(50010,100000037,"fix",90),
(50010,100000038,"fix",90),
(50010,100000039,"from_game_to_out",60),
(50010,100000040,"out",0),
(50010,100000041,"from_out_to_game",30),
(50010,100000006,"fix",90),
(50010,100000008,"fix",90),
(50010,100000009,"fix",90),
(50010,100000010,"fix",90),
(50010,100000011,"fix",90),
(50010,100000012,"out",0),
(50010,100000013,"out",0),

(50011,100000035,"fix",90),
(50011,100000036,"fix",90),
(50011,100000037,"fix",90),
(50011,100000038,"fix",90),
(50011,100000039,"from_game_to_out",10),
(50011,100000040,"from_out_to_game",80),
(50011,100000041,"out",0),
(50011,100000028,"fix",90),
(50011,100000029,"fix",90),
(50011,100000030,"fix",90),
(50011,100000031,"fix",90),
(50011,100000032,"fix",90),
(50011,100000033,"out",0),
(50011,100000034,"out",0),



(50012,100000000,"fix",90),
(50012,100000001,"fix",90),
(50012,100000002,"fix",90),
(50012,100000003,"fix",90),
(50012,100000004,"fix",90),
(50012,100000005,"out",0),
(50012,100000006,"out",0),
(50012,100000007,"fix",90),
(50012,100000008,"fix",90),
(50012,100000009,"fix",90),
(50012,100000010,"fix",90),
(50012,100000011,"fix",90),
(50012,100000012,"out",0),
(50012,100000013,"out",0),

(50013,100000000,"fix",90),
(50013,100000001,"fix",90),
(50013,100000002,"fix",90),
(50013,100000003,"fix",90),
(50013,100000004,"fix",90),
(50013,100000005,"out",0),
(50013,100000006,"out",0),
(50013,100000014,"fix",90),
(50013,100000015,"fix",90),
(50013,100000016,"fix",90),
(50013,100000017,"fix",90),
(50013,100000018,"fix",90),
(50013,100000019,"out",0),
(50013,100000020,"out",0),


(50014,100000000,"fix",90),
(50014,100000001,"fix",90),
(50014,100000002,"fix",90),
(50014,100000003,"fix",90),
(50014,100000004,"fix",90),
(50014,100000005,"out",0),
(50014,100000006,"out",0),
(50014,100000021,"fix",90),
(50014,100000022,"fix",90),
(50014,100000023,"fix",90),
(50014,100000024,"fix",90),
(50014,100000025,"fix",90),
(50014,100000026,"out",0),
(50014,100000027,"out",0),


(50015,100000007,"fix",90),
(50015,100000008,"fix",90),
(50015,100000009,"fix",90),
(50015,100000010,"fix",90),
(50015,100000011,"from_game_to_out",50),
(50015,100000012,"out",0),
(50015,100000013,"from_out_to_game",40),
(50015,100000000,"fix",90),
(50015,100000001,"fix",90),
(50015,100000002,"fix",90),
(50015,100000003,"fix",90),
(50015,100000004,"fix",90),
(50015,100000005,"out",0),
(50015,100000006,"out",0),


(50016,100000007,"fix",90),
(50016,100000008,"fix",90),
(50016,100000009,"fix",90),
(50016,100000010,"fix",90),
(50016,100000011,"from_game_to_out",50),
(50016,100000012,"out",0),
(50016,100000013,"from_out_to_game",40),
(50016,100000014,"fix",90),
(50016,100000015,"fix",90),
(50016,100000016,"fix",90),
(50016,100000017,"fix",90),
(50016,100000018,"from_game_to_out",65),
(50016,100000019,"from_out_to_game",25),
(50016,100000020,"out",0),


(50017,100000007,"fix",90),
(50017,100000008,"fix",90),
(50017,100000009,"fix",90),
(50017,100000010,"fix",90),
(50017,100000011,"fix",90),
(50017,100000012,"out",0),
(50017,100000013,"out",0),
(50017,100000021,"fix",90),
(50017,100000022,"fix",90),
(50017,100000023,"fix",90),
(50017,100000024,"fix",90),
(50017,100000025,"fix",90),
(50017,100000026,"out",0),
(50017,100000027,"out",0),

(50018,100000014,"fix",90),
(50018,100000015,"fix",90),
(50018,100000016,"fix",90),
(50018,100000017,"fix",90),
(50018,100000018,"from_game_to_out",15),
(50018,100000019,"from_out_to_game",75),
(50018,100000020,"out",0),
(50018,100000000,"fix",90),
(50018,100000001,"fix",90),
(50018,100000002,"fix",90),
(50018,100000003,"fix",90),
(50018,100000004,"fix",90),
(50018,100000005,"out",0),
(50018,100000006,"out",0),

(50019,100000014,"fix",90),
(50019,100000015,"fix",90),
(50019,100000016,"fix",90),
(50019,100000017,"fix",90),
(50019,100000018,"fix",90),
(50019,100000019,"out",0),
(50019,100000020,"out",0),
(50019,100000007,"fix",90),
(50019,100000008,"fix",90),
(50019,100000009,"fix",90),
(50019,100000010,"fix",90),
(50019,100000011,"fix",90),
(50019,100000012,"out",0),
(50019,100000013,"out",0),

(50020,100000014,"fix",90),
(50020,100000015,"fix",90),
(50020,100000016,"fix",90),
(50020,100000017,"fix",90),
(50020,100000018,"fix",90),
(50020,100000019,"out",0),
(50020,100000020,"out",0),
(50020,100000021,"fix",90),
(50020,100000022,"fix",90),
(50020,100000023,"fix",90),
(50020,100000024,"fix",90),
(50020,100000025,"fix",90),
(50020,100000026,"out",0),
(50020,100000027,"out",0),

(50021,100000021,"fix",90),
(50021,100000022,"fix",90),
(50021,100000023,"fix",90),
(50021,100000024,"fix",90),
(50021,100000025,"fix",90),
(50021,100000026,"out",0),
(50021,100000027,"out",0),
(50021,100000000,"fix",90),
(50021,100000001,"fix",90),
(50021,100000002,"fix",90),
(50021,100000003,"fix",90),
(50021,100000004,"fix",90),
(50021,100000005,"out",0),
(50021,100000006,"out",0),

(50022,100000021,"fix",90),
(50022,100000022,"fix",90),
(50022,100000023,"fix",90),
(50022,100000024,"fix",90),
(50022,100000025,"fix",90),
(50022,100000026,"out",0),
(50022,100000027,"out",0),
(50022,100000007,"fix",90),
(50022,100000008,"fix",90),
(50022,100000009,"fix",90),
(50022,100000010,"fix",90),
(50022,100000011,"fix",90),
(50022,100000012,"out",0),
(50022,100000013,"out",0),

(50023,100000021,"fix",90),
(50023,100000022,"fix",90),
(50023,100000023,"fix",90),
(50023,100000024,"fix",90),
(50023,100000025,"fix",90),
(50023,100000026,"out",0),
(50023,100000027,"out",0),
(50023,100000014,"fix",90),
(50023,100000015,"fix",90),
(50023,100000016,"fix",90),
(50023,100000017,"fix",90),
(50023,100000018,"fix",90),
(50023,100000019,"out",0),
(50023,100000020,"out",0);
*/

CREATE TABLE IF NOT EXISTS TelevisionsLive
(
  match_id INT NOT NULL,
  channel VARCHAR(30)NOT NULL,
  reporter_f_name VARCHAR(30) NOT NULL,
  reporter_l_name VARCHAR(50) NOT NULL,
  PRIMARY KEY(match_id,channel),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);


/*
INSERT INTO TelevisionsLive VALUES
(50000,"3","javad","khiabany"),
(50003,"3","adel","ferdosi pur"),
(50012,"3","mazdak","mirzayi"),
(50015,"3","javad","khiabany");

*/

CREATE TABLE IF NOT EXISTS Sponsors
(
  match_id INT NOT NULL, 
  sponsor_name VARCHAR(70),
  amount INT NOT NULL,
  PRIMARY KEY( match_id , sponsor_name ),
  FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

/*
INSERT INTO Sponsors VALUES
(50000,"Irancell",2000000),
(50003,"Himaliya",900000),
(50012,"Emersan",87000000),
(50015,"Samsung",100000000);
*/

/* -----------------------------------------------------------------------------*/
/* -----------------------------------------------------------------------------*/
/* -----------------------------------------------------------------------------*/
/* -----------------------------------------------------------------------------*/
/* -----------------------------------------------------------------------------*/
/* -----------------------------------------------------------------------------*/



INSERT INTO Awards(award_name) VALUES 
("Footballer of the Year"),
("Best Goalkeeper"),
("Best Defender"),
("Best Midfielder"),
("Best Forward"),
("Coach of the Year"),
("Best Goal of the Year"),
("Best Club of the Year"),
("Best Referee of the year");


INSERT INTO Contracts(start_date,end_date,amount,contracting_comp) VALUES
#perspolis
("2010-1-01","2012-12-29",200000,"perspolis"),
("2010-1-01","2012-12-29",600000,"perspolis"),
("2010-1-01","2012-12-29",700000,"perspolis"),
("2010-1-01","2012-12-29",1400000,"perspolis"),
("2010-1-01","2012-12-29",67800000,"perspolis"),
("2010-1-01","2012-12-29",2066666,"perspolis"),
("2010-1-01","2011-01-02",22123213,"perspolis"),
#esteghlal
("2010-1-01","2011-01-02",600000,"esteghlal"),
("2010-1-01","2012-12-29",700000,"esteghlal"),
("2010-1-01","2012-12-29",800000,"esteghlal"),
("2010-1-01","2012-12-29",2000,"esteghlal"),
("2010-1-01","2012-12-29",4400000,"esteghlal"),
("2010-1-01","2012-12-29",7700000,"esteghlal"),
("2010-1-01","2012-12-29",9000000,"esteghlal"),
#sepahan
("2010-1-01","2012-12-29",200000,"sepahan"),
("2010-1-01","2012-12-29",100000,"sepahan"),
("2010-1-01","2012-12-29",200000,"sepahan"),
("2010-1-01","2012-12-29",250000,"sepahan"),
("2010-1-01","2012-12-29",456000,"sepahan"),
("2010-1-01","2012-12-29",980000,"sepahan"),
("2010-1-01","2012-12-29",10000,"sepahan"),
#malavan
("2010-1-01","2012-12-29",500000,"malavan"),
("2010-1-01","2012-12-29",400000,"malavan"),
("2010-1-01","2012-12-29",2200000,"malavan"),
("2010-1-01","2012-12-29",4400000,"malavan"),
("2010-1-01","2012-12-29",100000,"malavan"),
("2010-1-01","2012-12-29",900000,"malavan"),
("2010-1-01","2012-12-29",800000,"malavan"),
#transfer
("2011-02-03","2012-12-22",10000,"esteghlal"),
("2011-02-03","2012-12-22",20000,"perspolis"),
#zobahan
("2010-1-01","2012-12-29",100000,"zobahan"),
("2010-1-01","2012-12-29",200000,"zobahan"),
("2010-1-01","2012-12-29",300000,"zobahan"),
("2010-1-01","2012-12-29",400000,"zobahan"),
("2010-1-01","2012-12-29",2500000,"zobahan"),
("2010-1-01","2012-12-29",205500000,"zobahan"),
("2010-1-01","2012-12-29",2000000,"zobahan"),
#tractor
("2010-1-01","2012-12-29",8000000,"teraktor sazi"),
("2010-1-01","2012-12-29",850000,"teraktor sazi"),
("2010-1-01","2012-12-29",11100000,"teraktor sazi"),
("2010-1-01","2012-12-29",22200000,"teraktor sazi"),
("2010-1-01","2012-12-29",60000000,"teraktor sazi"),
("2010-1-01","2012-12-29",80000000,"teraktor sazi"),
("2010-1-01","2012-12-29",70000000,"teraktor sazi"),
#coach
("2010-1-01","2012-12-29",4444000,"perspolis"),
("2010-1-01","2012-12-29",777000,"esteghlal"),
("2010-1-01","2012-12-29",99990000,"sepahan"),
("2010-1-01","2012-12-29",23400000,"malavan"),
("2010-1-01","2012-12-29",54670000,"zobahan"),
("2010-1-01","2012-12-29",7890000,"teraktor sazi"),
#referee
("2010-1-01","2012-12-29",1000000,"league organization"),
("2010-1-01","2012-12-29",2500000,"league organization"),
("2010-1-01","2012-12-29",3100000,"league organization"),
("2010-1-01","2012-12-29",400000,"league organization"),
("2010-1-01","2012-12-29",500000,"league organization"),
("2010-1-01","2012-12-29",6000000,"league organization"),
("2010-1-01","2012-12-29",90000000,"league organization"),
("2010-1-01","2012-12-29",230000000,"league organization");


INSERT INTO Persons(person_id,country,city,f_name,l_name,birthday,blood_type,height,weight) VALUES
# BAZIKONAN
(1000000000000000,"iran","tehran","Alireza","Mohammad","1974-7-02","AB+",180,78),
(1000000000000001,"iran","tehran","Mojtaba","Shiri","1984-2-01","0-",188,78),
(1000000000000002,"iran","tehran","Mohammad","Nosrati","1972-7-12","AB+",200,90),
(1000000000000003,"iran","tehran","Hamidreza","Aliasgari","1980-11-05","A-",201,100),
(1000000000000004,"iran","tehran","Ali","Karimi","1971-8-01","AB+",189,54),
(1000000000000005,"iran","tehran","Maziar","Zare","1974-7-02","A-",176,41),
(1000000000000006,"iran","tehran","Gholamreza","Rezaei","1965-2-03","AB+",175,79),
(1000000000000007,"iran","tehran","Hossein","Badamaki","1980-7-02","0-",165,80),
(1000000000000008,"iran","tehran","Mohammad","Nouri","1969-7-02","0-",190,86),
(1000000000000009,"iran","tehran","Saman","Aghazamani","1982-7-02","AB+",197,75),
(1000000000000010,"iran","tehran","Javad","Kazemian","1974-4-04","A-",187,58),
(1000000000000011,"iran","tehran","Ebrahim","Shakouri","1971-1-01","AB+",184,54),
(1000000000000012,"iran","tehran","Mehdi","Mahdavikia","1972-3-05","A-",198,80),
(1000000000000013,"iran","tehran","Alireza","Noormohammadi","1974-7-01","AB+",179,91),
(1000000000000014,"iran","tehran","Vahid","Hashemian","1970-7-01","A-",183,92),
(1000000000000015,"iran","tehran","Amir Hossein","Feshangchi","1964-7-02","B-",170,94),
(1000000000000016,"iran","tehran","Mohammad Mehdi","Elhaei","1972-5-09","AB+",183,88),
(1000000000000017,"iran","tehran","Mehdi","Rahmati","1972-7-02","A-",210,99),
(1000000000000018,"iran","tehran","Khosro","Heydari","1982-8-09","B-",187,66),
(1000000000000019,"iran","tehran","Mehdi","Amirabadi","1982-9-09","AB+",184,77),
(1000000000000020,"iran","tehran","Hamid","Azizzadeh","1980-8-01","AB+",184,99),
(1000000000000021,"iran","tehran","Hanif","Omranzadeh","1972-8-09","0-",183,77),
(1000000000000022,"iran","tehran","Kianoush","Rahmati","1971-1-01","AB+",164,66),
(1000000000000023,"iran","tehran","Mojtaba","Jabbari","1969-7-02","0-",197,55),
(1000000000000024,"iran","tehran","Arash","Borhani","1979-3-02","A-",190,69),
(1000000000000025,"iran","tehran","Milad","Meydavoudi","1969-1-02","B-",191,59),
(1000000000000026,"iran","tehran","Mohsen","Yousefi","1939-7-02","AB+",181,69),
(1000000000000027,"germany","berlin","Jlloyd","Samuel","1965-5-08","AB+",195,71),
(1000000000000028,"iran","tehran","Andranik","Teymourian","1989-1-02","0-",201,72),
(1000000000000029,"iran","tehran","Meysam","Hosseini","1980-1-01","AB+",187,74),
(1000000000000030,"iran","tehran","Ali","Hamoudi","1969-7-02","B-",177,79),
(1000000000000031,"iran","tehran","Mehdi","Eslami","1972-5-09","B-",183,81),
(1000000000000032,"iran","tehran","Hossein","Alavi","1971-1-01","0-",186,85),
(1000000000000033,"iran","tehran","Pejman","Montazeri","1971-5-09","AB+",184,90),
(1000000000000034,"iran","tehran","Ferydoon","Zandi","1962-5-09","B+",182,91),
(1000000000000035,"iran","tehran","Javad","Shirzad","1971-1-01","0-",184,76),
(1000000000000036,"iran","tehran","Tohid","Gholami","1965-5-08","0-",184,60),
(1000000000000037,"iran","tehran","Iman","Mobali","1985-1-05","AB+",183,65),
(1000000000000038,"iran","tehran","Hadi","Zarrin","1975-4-08","A-",183,66),
(1000000000000039,"iran","tehran","Mehrdad","Hosseini","1981-1-01","B+",185,78),
(1000000000000040,"iran","tehran","Hossein","Hooshyar","1977-7-03","B+",190,77),
(1000000000000041,"iran","tehran","Saeid","Ghadami","1969-3-02","A-",193,66),
(1000000000000042,"iran","tehran","Hossein","Kanaani","1979-1-08","AB+",190,59),
(1000000000000043,"iran","tehran","Mehrdad","Oladi","1975-2-03","O+",194,60),
(1000000000000044,"south africa","abuja","Mamadou","Tall","1985-8-08","O+",199,51),
(1000000000000045,"iran","tehran","Masoud","Dastani","1970-5-08","O+",189,59),
(1000000000000046,"iran","tehran","Rouhollah","Seifollahi","1972-2-03","",201,57),
(1000000000000047,"iran","tehran","Hadi","Norouzi","1979-9-08","AB+",179,53),
# morrabiha 
(1000000000000048,"England","manchester","Danny","McLennan","1945-1-03","0-",165,81),
(1000000000000049,"iran","tehran","Mahmoud","Bayati","1939-1-03","AB+",164,74),
(1000000000000050,"iran","tehran","Mohammad","Ranjbar","1949-2-11","AB+",164,60),
(1000000000000051,"iran","tehran","Parviz","Dehdari","1955-5-10","0-",159,73),
(1000000000000052,"Russia","moscow","Igor","Netto","1945-2-03","0-",189,73),
(1000000000000053,"Russia","moscow","Zdravko","Rajkov","1935-1-03","AB+",201,63),
(1000000000000054,"iran","tehran","Hossein","Fekri","1932-7-07","AB+",204,74),
(1000000000000055,"iran","tehran","Mostafa","Salimi","1955-1-03","0-",168,63),
(1000000000000056,"iran","tehran","Hossein","Sadaghian","1935-10-07","A-",179,61),
# davar ha 
(1000000000000057,"iran","tehran","Reza","Sokhandan","1959-8-01","AB+",189,53),
(1000000000000058,"iran","tehran","Davoud","Rafatisajedi","1958-2-01","AB+",186,90),
(1000000000000059,"iran","tehran","Mohammadreza","Mansouri","1949-1-08","A-",185,100),
(1000000000000060,"iran","tehran","Babak","Davari","1959-8-01","AB+",185,55),
(1000000000000061,"iran","tehran","Hassan","Kamranifar","1965-5-08","0-",165,49),
(1000000000000062,"iran","tehran","Alireza","Kahouri","1970-5-01","AB+",159,51),
(1000000000000063,"iran","tehran","Alireza","Faghani","1960-8-08","O+",194,59),
(1000000000000064,"iran","tehran","Mohsen","Ghahremani","1968-8-08","0-",186,53),
(1000000000000065,"iran","tehran","Yadollah","Jahanbazi","1959-1-01","A+",179,83),
(1000000000000066,"iran","tehran","Hedayat","Mombini","1961-1-03","AB+",195,94),
(1000000000000067,"iran","tehran","Saeid","Mozaffarizadeh","1964-3-12","B+",170,90),
(1000000000000068,"iran","tehran","Mohsen","Torki","1979-1-07","O+",180,78),
(1000000000000069,"iran","tehran","Mohammadreza","Abolfazli","1980-3-02","AB+",190,69);

INSERT INTO leagues(league_type,country) VALUES
("league one","iran");

INSERT INTO Seasons(league_id,start_date,end_date,season_name,club_num) VALUES
(1000,"2010-7-04","2011-7-02","2010-2011",4),
(1000,"2011-7-04","2012-7-02","2011-2012",4);

INSERT INTO Stadiums(stadium_name,capacity,city) VALUES
("azadi",100000,"tehran"),
("takhti",30000,"isfahan"),
("janbazan",25000,"noshahr"),
("shirudi",40000,"fuladshahr"),
("azadi",80000,"tabriz");


INSERT INTO Clubs(club_name) VALUES
("perspolis"),
("esteghlal"),
("sepahan"),
("malavan"),
("zobahan"),
("teraktor sazi");


INSERT INTO ClubsStadiums(club_name,stadium_id) VALUES
("perspolis",10000000),
("esteghlal",10000000),
("sepahan",10000001),
("malavan",10000002),
("zobahan",10000003),
("teraktor sazi",10000004);


INSERT INTO ClubsRecords(club_id,season_id,first_shirt,second_shirt,played,matches_won,matches_lose,goals_for,goals_against,yellow_cards,red_cards) VALUES
(100000,10001,"red","white",6,3,1,10,5,0,0),
(100001,10001,"blue","white",6,2,2,10,8,0,0),
(100002,10001,"yellow","black",6,3,2,9,8,2,0),
(100003,10001,"whte","black",6,0,3,7,15,3,0),

(100000,10000,"red","white",6,2,2,10,8,1,0),
(100001,10000,"blue","white",6,2,2,10,11,1,0),
(100004,10000,"yellow","black",6,2,3,10,13,2,0),
(100005,10000,"red","black",6,2,1,13,11,2,0);

INSERT INTO Players(person_id) VALUES
(1000000000000000),
(1000000000000001),
(1000000000000002),
(1000000000000003),
(1000000000000004),
(1000000000000005),
(1000000000000006),
(1000000000000007),
(1000000000000008),
(1000000000000009),
(1000000000000010),
(1000000000000011),
(1000000000000012),
(1000000000000013),
(1000000000000014),
(1000000000000015),
(1000000000000016),
(1000000000000017),
(1000000000000018),
(1000000000000019),
(1000000000000020),
(1000000000000021),
(1000000000000022),
(1000000000000023),
(1000000000000024),
(1000000000000025),
(1000000000000026),
(1000000000000027),
(1000000000000028),
(1000000000000029),
(1000000000000030),
(1000000000000031),
(1000000000000032),
(1000000000000033),
(1000000000000034),
(1000000000000035),
(1000000000000036),
(1000000000000037),
(1000000000000038),
(1000000000000039),
(1000000000000040),
(1000000000000041);


INSERT INTO PlayersClubs VALUES
#perspolis 1
(100000000,100000,10001,"GK",1),
(100000001,100000,10001,"DF",2),
(100000002,100000,10001,"DF",3),
(100000003,100000,10001,"DF",4),
(100000004,100000,10001,"MF",5),
(100000005,100000,10001,"FW",6),
(100000006,100000,10001,"FW",7),
#esteghlal 1
(100000007,100001,10001,"GK",1),
(100000008,100001,10001,"DF",2),
(100000009,100001,10001,"DF",2),
(100000010,100001,10001,"MF",5),
(100000011,100001,10001,"FW",5),
(100000012,100001,10001,"FW",6),
(100000013,100001,10001,"FW",7),
#sepahan
(100000014,100002,10001,"GK",1),
(100000015,100002,10001,"DF",2),
(100000016,100002,10001,"DF",3),
(100000017,100002,10001,"MF",4),
(100000018,100002,10001,"MF",5),
(100000019,100002,10001,"MF",6),
(100000020,100002,10001,"FW",7),
#malavan
(100000021,100003,10001,"GK",1),
(100000022,100003,10001,"DF",2),
(100000023,100003,10001,"DF",3),
(100000024,100003,10001,"FW",4),
(100000025,100003,10001,"FW",5),
(100000026,100003,10001,"FW",6),
(100000027,100003,10001,"FW",7),
#perspolis 2
(100000000,100000,10000,"GK",1),
(100000001,100000,10000,"DF",2),
(100000002,100000,10000,"DF",3),
(100000003,100000,10000,"DF",4),
(100000004,100000,10000,"MF",5),
(100000005,100000,10000,"MF",5),
(100000007,100000,10000,"FW",7),
#esteghlal 2
(100000006,100001,10000,"GK",1),
(100000008,100001,10000,"DF",2),
(100000009,100001,10000,"DF",3),
(100000010,100001,10000,"MF",4),
(100000011,100001,10000,"MF",5),
(100000012,100001,10000,"MF",6),
(100000013,100001,10000,"FW",7),
#zobahan
(100000028,100004,10000,"GK",1),
(100000029,100004,10000,"DF",2),
(100000030,100004,10000,"MF",3),
(100000031,100004,10000,"MF",4),
(100000032,100004,10000,"MF",5),
(100000033,100004,10000,"MF",6),
(100000034,100004,10000,"FW",7),
#teraktor\
(100000035,100005,10000,"GK",1),
(100000036,100005,10000,"DF",2),
(100000037,100005,10000,"DF",3),
(100000038,100005,10000,"DF",4),
(100000039,100005,10000,"DF",5),
(100000040,100005,10000,"FW",6),
(100000041,100005,10000,"FW",7);

INSERT INTO PlayersAwards VALUES
(100000004,100,2011),
(100000010,100,2012);

INSERT INTO PlayersContracts VALUES
(100000000,1000000),
(100000001,1000001),
(100000002,1000002),
(100000003,1000003),
(100000004,1000004),
(100000005,1000005),
(100000006,1000006),
(100000006,1000028),
(100000007,1000007),
(100000007,1000029),
(100000008,1000008),
(100000009,1000009),
(100000010,1000010),
(100000011,1000011),
(100000012,1000012),
(100000013,1000013),
(100000014,1000014),
(100000015,1000015),
(100000016,1000016),
(100000017,1000017),
(100000018,1000018),
(100000019,1000019),
(100000020,1000020),
(100000021,1000021),
(100000022,1000022),
(100000023,1000023),
(100000024,1000024),
(100000025,1000025),
(100000026,1000026),
(100000027,1000027),
(100000028,1000030),
(100000029,1000031),
(100000030,1000032),
(100000031,1000033),
(100000032,1000034),
(100000033,1000035),
(100000034,1000036),
(100000035,1000037),
(100000036,1000038),
(100000037,1000039),
(100000038,1000040),
(100000039,1000041),
(100000040,1000042),
(100000041,1000043);


INSERT INTO Coaches(person_id) VALUES
(1000000000000048),
(1000000000000049),
(1000000000000050),
(1000000000000051),
(1000000000000052),
(1000000000000053);  


INSERT INTO CoachesClubs VALUES
(1000000000,100000,10001),
(1000000001,100001,10001),
(1000000002,100002,10001),
(1000000003,100003,10001),
(1000000000,100000,10000),
(1000000001,100001,10000),
(1000000004,100004,10000),
(1000000005,100005,10000);


INSERT INTO CoachesAwards VALUES
(1000000000,105,2011),
(1000000005,105,2012);


INSERT INTO CoachesContracts VALUES
(1000000000,1000044),
(1000000001,1000045),
(1000000002,1000046),
(1000000003,1000047),
(1000000004,1000048),
(1000000005,1000049);



INSERT INTO Referees(person_id) VALUES
(1000000000000057),
(1000000000000058),
(1000000000000059),
(1000000000000060),
(1000000000000061),
(1000000000000062),
(1000000000000063),
(1000000000000064);

INSERT INTO RefereesAwards VALUES
(502,108,2011),
(505,108,2012);

INSERT INTO RefereesContracts VALUES
(500,1000050),
(501,1000051),
(502,1000052),
(503,1000053),
(504,1000054),
(505,1000055),
(506,1000056),
(507,1000057);


INSERT INTO Matches(season_id,home_club_id,away_club_id,holding_date,holding_time,referee_id,
                    assist_ref1_id,assist_ref2_id,assist_ref4_id,attend_num,tempreture,humidity,isHold) VALUES
(10000,100000,100001,"2010-03-09","19:45",500,501,502,503,10000,19,30,"True"),
(10000,100000,100004,"2010-04-08","19:45",504,500,501,502,25000,21,76,"True"),
(10000,100000,100005,"2010-05-05","19:45",502,501,505,506,32000,22,34,"True"),
(10000,100001,100000,"2010-06-03","19:45",507,505,504,503,12000,30,90,"True"),
(10000,100001,100004,"2010-07-06","19:45",501,502,505,500,7000,32,24,"True"),
(10000,100001,100005,"2010-08-19","19:45",500,501,504,502,500,33,49,"True"),
(10000,100004,100000,"2010-09-13","20:45",501,505,506,507,17000,25,65,"True"),
(10000,100004,100001,"2010-10-22","20:45",503,505,504,502,19000,20,55,"True"),
(10000,100004,100005,"2010-11-29","20:45",501,504,500,501,21000,19,33,"True"),
(10000,100005,100000,"2010-12-11","20:45",500,501,502,503,26000,15,80,"True"),
(10000,100005,100001,"2011-01-05","20:45",500,503,507,504,29000,18,10,"True"),
(10000,100005,100004,"2011-01-12","20:45",504,505,506,507,30000,17,43,"True"),

(10001,100000,100001,"2011-03-09","18:15",501,502,503,504,16000,29,70,"True"),
(10001,100000,100002,"2011-04-18","18:15",501,500,503,505,13000,31,76,"True"),
(10001,100000,100003,"2011-05-11","18:15",505,501,500,506,3000,20,14,"True"),
(10001,100001,100000,"2011-06-26","18:15",500,502,502,503,12000,10,30,"True"),
(10001,100001,100002,"2011-07-06","18:15",501,502,506,507,5000,2,14,"True"),
(10001,100001,100003,"2011-08-29","18:15",505,502,503,502,100,13,39,"True"),
(10001,100002,100000,"2011-09-18","21:00",500,502,503,504,10000,15,75,"True"),
(10001,100002,100001,"2011-10-26","21:00",504,505,501,500,21000,30,85,"True"),
(10001,100002,100003,"2011-11-16","21:00",501,504,502,506,20000,9,83,"True"),
(10001,100003,100000,"2011-12-14","21:00",506,501,502,505,10000,5,10,"True"),
(10001,100003,100001,"2012-01-11","21:00",500,503,507,504,19000,8,30,"True"),
(10001,100003,100002,"2012-01-25","21:00",504,505,506,507,7000,17,23,"True");


INSERT INTO MatchesCards VALUES
(50000,100000010,29,"yellow"),
(50001,100000031,76,"yellow"),
(50002,100000002,90,"yellow"),
(50002,100000037,1,"yellow"),
(50002,100000039,56,"yellow"),
(50007,100000032,89,"yellow"),
(50017,100000023,56,"yellow"),
(50018,100000018,40,"yellow"),
(50019,100000019,65,"yellow"),
(50021,100000025,23,"yellow"),
(50023,100000023,50,"yellow");


INSERT INTO MatchesGoals VALUES
(50000,100000003,20),
(50000,100000002,38),
(50000,100000009,49),
(50000,100000008,68),

(50001,100000001,26),
(50001,100000002,56),
(50001,100000003,70),

(50002,100000003,80),
(50002,100000038,90),

(50003,100000008,40),

(50004,100000030,38),
(50004,100000031,79),

(50005,100000009,13),
(50005,100000037,26),
(50005,100000038,40),
(50005,100000008,59),
(50005,100000038,87),

(50006,100000031,54),
(50006,100000002,60),
(50006,100000003,61),
(50006,100000003,63),

(50007,100000008,70),
(50007,100000031,73),
(50007,100000031,80),
(50007,100000009,82),
(50007,100000009,90),

(50008,100000030,3),
(50008,100000036,17),
(50008,100000037,19),
(50008,100000031,40),
(50008,100000031,43),
(50008,100000038,49),
(50008,100000038,78),
(50008,100000030,84),


(50009,100000036,80),
(50009,100000038,83),
(50009,100000037,84),
(50009,100000003,88),

(50010,100000009,35),
(50010,100000007,50),
(50010,100000038,70),
(50010,100000036,89),

(50011,100000031,38),

(50012,100000008,12),
(50012,100000009,59),
(50012,100000002,76),
(50012,100000003,80),
(50012,100000003,87),

(50013,100000002,45),
(50013,100000003,90),

(50014,100000002,34),
(50014,100000023,37),

(50015,100000002,1),
(50015,100000008,10),

(50016,100000008,17),
(50016,100000008,19),

(50017,100000009,23),
(50017,100000010,27),
(50017,100000010,29),

(50018,100000017,34),

(50019,100000016,39),
(50019,100000015,89),


(50020,100000017,23),
(50020,100000017,38),
(50020,100000022,40),
(50020,100000023,45),
(50020,100000016,71),
(50020,100000017,81),

(50021,100000002,87),
(50021,100000003,89),
(50021,100000002,90),

(50022,100000024,1),
(50022,100000025,5),
(50022,100000009,7),
(50022,100000010,15),

(50023,100000024,11),
(50023,100000023,24),
(50023,100000017,56),
(50023,100000017,81);

INSERT INTO MatchesStatistics VALUES
(50000,2,2,65,23,19),
(50001,3,0,61,19,10),
(50002,1,1,48,21,18),
(50003,1,0,80,30,17),
(50004,0,2,69,43,35),
(50005,2,3,54,39,13),
(50006,1,3,50,12,19),
(50007,2,3,60,14,9),
(50008,4,4,49,17,10),
(50009,3,1,51,19,18),
(50010,2,2,39,23,21),
(50011,0,1,48,12,14),
(50012,3,2,57,16,15),
(50013,2,0,51,11,25),
(50014,1,1,40,26,39),
(50015,1,1,30,40,41),
(50016,2,0,32,16,19),
(50017,3,0,80,11,14),
(50018,1,0,54,23,34),
(50019,2,0,57,18,25),
(50020,4,2,55,13,13),
(50021,0,3,53,12,21),
(50022,2,2,45,20,19),
(50023,2,2,72,19,25);


INSERT INTO MatchesPlayers VALUES
(50000,100000000,"fix",90),
(50000,100000001,"fix",90),
(50000,100000002,"fix",90),
(50000,100000003,"fix",90),
(50000,100000004,"fix",90),
(50000,100000005,"out",0),
(50000,100000007,"out",0),
(50000,100000006,"fix",90),
(50000,100000008,"fix",90),
(50000,100000009,"fix",90),
(50000,100000010,"fix",90),
(50000,100000011,"fix",90),
(50000,100000012,"out",0),
(50000,100000013,"out",0),

(50001,100000000,"fix",90),
(50001,100000001,"fix",90),
(50001,100000002,"fix",90),
(50001,100000003,"fix",90),
(50001,100000004,"from_game_to_out",60),
(50001,100000005,"from_out_to_game",30),
(50001,100000007,"out",0),
(50001,100000028,"fix",90),
(50001,100000029,"fix",90),
(50001,100000030,"fix",90),
(50001,100000031,"fix",90),
(50001,100000032,"fix",90),
(50001,100000033,"out",0),
(50001,100000034,"out",0),

(50002,100000000,"fix",90),
(50002,100000001,"fix",90),
(50002,100000002,"fix",90),
(50002,100000003,"fix",90),
(50002,100000004,"from_game_to_out",78),
(50002,100000005,"out",0),
(50002,100000007,"from_out_to_game",12),
(50002,100000035,"fix",90),
(50002,100000036,"fix",90),
(50002,100000037,"fix",90),
(50002,100000038,"fix",90),
(50002,100000039,"from_game_to_out",61),
(50002,100000040,"from_out_to_game",29),
(50002,100000041,"out",0),



(50003,100000006,"fix",90),
(50003,100000008,"fix",90),
(50003,100000009,"fix",90),
(50003,100000010,"fix",90),
(50003,100000011,"fix",90),
(50003,100000012,"out",0),
(50003,100000013,"out",0),
(50003,100000000,"fix",90),
(50003,100000001,"fix",90),
(50003,100000002,"fix",90),
(50003,100000003,"fix",90),
(50003,100000004,"fix",90),
(50003,100000005,"out",0),
(50003,100000007,"out",0),

(50004,100000006,"fix",90),
(50004,100000008,"fix",90),
(50004,100000009,"fix",90),
(50004,100000010,"fix",90),
(50004,100000011,"fix",90),
(50004,100000012,"out",0),
(50004,100000013,"out",0),
(50004,100000028,"fix",90),
(50004,100000029,"fix",90),
(50004,100000030,"fix",90),
(50004,100000031,"fix",90),
(50004,100000032,"fix",90),
(50004,100000033,"out",0),
(50004,100000034,"out",0),


(50005,100000006,"fix",90),
(50005,100000008,"fix",90),
(50005,100000009,"fix",90),
(50005,100000010,"fix",90),
(50005,100000011,"from_game_to_out",48),
(50005,100000012,"from_out_to_game",42),
(50005,100000013,"out",0),
(50005,100000035,"fix",90),
(50005,100000036,"fix",90),
(50005,100000037,"fix",90),
(50005,100000038,"fix",90),
(50005,100000039,"fix",90),
(50005,100000040,"out",0),
(50005,100000041,"out",0),



(50006,100000028,"fix",90),
(50006,100000029,"fix",90),
(50006,100000030,"fix",90),
(50006,100000031,"fix",90),
(50006,100000032,"fix",90),
(50006,100000033,"out",0),
(50006,100000034,"out",0),
(50006,100000000,"fix",90),
(50006,100000001,"fix",90),
(50006,100000002,"fix",90),
(50006,100000003,"fix",90),
(50006,100000004,"fix",90),
(50006,100000005,"out",0),
(50006,100000007,"out",0),


(50007,100000028,"fix",90),
(50007,100000029,"fix",90),
(50007,100000030,"fix",90),
(50007,100000031,"fix",90),
(50007,100000032,"fix",90),
(50007,100000033,"out",0),
(50007,100000034,"out",0),
(50007,100000006,"fix",90),
(50007,100000008,"fix",90),
(50007,100000009,"fix",90),
(50007,100000010,"fix",90),
(50007,100000011,"fix",90),
(50007,100000012,"out",0),
(50007,100000013,"out",0),



(50008,100000028,"fix",90),
(50008,100000029,"fix",90),
(50008,100000030,"fix",90),
(50008,100000031,"fix",90),
(50008,100000032,"fix",90),
(50008,100000033,"out",0),
(50008,100000034,"out",0),
(50008,100000035,"fix",90),
(50008,100000036,"fix",90),
(50008,100000037,"fix",90),
(50008,100000038,"fix",90),
(50008,100000039,"fix",90),
(50008,100000040,"out",0),
(50008,100000041,"out",0),


(50009,100000035,"fix",90),
(50009,100000036,"fix",90),
(50009,100000037,"fix",90),
(50009,100000038,"fix",90),
(50009,100000039,"from_game_to_out",88),
(50009,100000040,"out",0),
(50009,100000041,"from_out_to_game",2),
(50009,100000000,"fix",90),
(50009,100000001,"fix",90),
(50009,100000002,"fix",90),
(50009,100000003,"fix",90),
(50009,100000004,"from_game_to_out",80),
(50009,100000005,"from_out_to_game",10),
(50009,100000007,"out",0),

(50010,100000035,"fix",90),
(50010,100000036,"fix",90),
(50010,100000037,"fix",90),
(50010,100000038,"fix",90),
(50010,100000039,"from_game_to_out",60),
(50010,100000040,"out",0),
(50010,100000041,"from_out_to_game",30),
(50010,100000006,"fix",90),
(50010,100000008,"fix",90),
(50010,100000009,"fix",90),
(50010,100000010,"fix",90),
(50010,100000011,"fix",90),
(50010,100000012,"out",0),
(50010,100000013,"out",0),

(50011,100000035,"fix",90),
(50011,100000036,"fix",90),
(50011,100000037,"fix",90),
(50011,100000038,"fix",90),
(50011,100000039,"from_game_to_out",10),
(50011,100000040,"from_out_to_game",80),
(50011,100000041,"out",0),
(50011,100000028,"fix",90),
(50011,100000029,"fix",90),
(50011,100000030,"fix",90),
(50011,100000031,"fix",90),
(50011,100000032,"fix",90),
(50011,100000033,"out",0),
(50011,100000034,"out",0),



(50012,100000000,"fix",90),
(50012,100000001,"fix",90),
(50012,100000002,"fix",90),
(50012,100000003,"fix",90),
(50012,100000004,"fix",90),
(50012,100000005,"out",0),
(50012,100000006,"out",0),
(50012,100000007,"fix",90),
(50012,100000008,"fix",90),
(50012,100000009,"fix",90),
(50012,100000010,"fix",90),
(50012,100000011,"fix",90),
(50012,100000012,"out",0),
(50012,100000013,"out",0),

(50013,100000000,"fix",90),
(50013,100000001,"fix",90),
(50013,100000002,"fix",90),
(50013,100000003,"fix",90),
(50013,100000004,"fix",90),
(50013,100000005,"out",0),
(50013,100000006,"out",0),
(50013,100000014,"fix",90),
(50013,100000015,"fix",90),
(50013,100000016,"fix",90),
(50013,100000017,"fix",90),
(50013,100000018,"fix",90),
(50013,100000019,"out",0),
(50013,100000020,"out",0),


(50014,100000000,"fix",90),
(50014,100000001,"fix",90),
(50014,100000002,"fix",90),
(50014,100000003,"fix",90),
(50014,100000004,"fix",90),
(50014,100000005,"out",0),
(50014,100000006,"out",0),
(50014,100000021,"fix",90),
(50014,100000022,"fix",90),
(50014,100000023,"fix",90),
(50014,100000024,"fix",90),
(50014,100000025,"fix",90),
(50014,100000026,"out",0),
(50014,100000027,"out",0),


(50015,100000007,"fix",90),
(50015,100000008,"fix",90),
(50015,100000009,"fix",90),
(50015,100000010,"fix",90),
(50015,100000011,"from_game_to_out",50),
(50015,100000012,"out",0),
(50015,100000013,"from_out_to_game",40),
(50015,100000000,"fix",90),
(50015,100000001,"fix",90),
(50015,100000002,"fix",90),
(50015,100000003,"fix",90),
(50015,100000004,"fix",90),
(50015,100000005,"out",0),
(50015,100000006,"out",0),


(50016,100000007,"fix",90),
(50016,100000008,"fix",90),
(50016,100000009,"fix",90),
(50016,100000010,"fix",90),
(50016,100000011,"from_game_to_out",50),
(50016,100000012,"out",0),
(50016,100000013,"from_out_to_game",40),
(50016,100000014,"fix",90),
(50016,100000015,"fix",90),
(50016,100000016,"fix",90),
(50016,100000017,"fix",90),
(50016,100000018,"from_game_to_out",65),
(50016,100000019,"from_out_to_game",25),
(50016,100000020,"out",0),


(50017,100000007,"fix",90),
(50017,100000008,"fix",90),
(50017,100000009,"fix",90),
(50017,100000010,"fix",90),
(50017,100000011,"fix",90),
(50017,100000012,"out",0),
(50017,100000013,"out",0),
(50017,100000021,"fix",90),
(50017,100000022,"fix",90),
(50017,100000023,"fix",90),
(50017,100000024,"fix",90),
(50017,100000025,"fix",90),
(50017,100000026,"out",0),
(50017,100000027,"out",0),

(50018,100000014,"fix",90),
(50018,100000015,"fix",90),
(50018,100000016,"fix",90),
(50018,100000017,"fix",90),
(50018,100000018,"from_game_to_out",15),
(50018,100000019,"from_out_to_game",75),
(50018,100000020,"out",0),
(50018,100000000,"fix",90),
(50018,100000001,"fix",90),
(50018,100000002,"fix",90),
(50018,100000003,"fix",90),
(50018,100000004,"fix",90),
(50018,100000005,"out",0),
(50018,100000006,"out",0),

(50019,100000014,"fix",90),
(50019,100000015,"fix",90),
(50019,100000016,"fix",90),
(50019,100000017,"fix",90),
(50019,100000018,"fix",90),
(50019,100000019,"out",0),
(50019,100000020,"out",0),
(50019,100000007,"fix",90),
(50019,100000008,"fix",90),
(50019,100000009,"fix",90),
(50019,100000010,"fix",90),
(50019,100000011,"fix",90),
(50019,100000012,"out",0),
(50019,100000013,"out",0),

(50020,100000014,"fix",90),
(50020,100000015,"fix",90),
(50020,100000016,"fix",90),
(50020,100000017,"fix",90),
(50020,100000018,"fix",90),
(50020,100000019,"out",0),
(50020,100000020,"out",0),
(50020,100000021,"fix",90),
(50020,100000022,"fix",90),
(50020,100000023,"fix",90),
(50020,100000024,"fix",90),
(50020,100000025,"fix",90),
(50020,100000026,"out",0),
(50020,100000027,"out",0),

(50021,100000021,"fix",90),
(50021,100000022,"fix",90),
(50021,100000023,"fix",90),
(50021,100000024,"fix",90),
(50021,100000025,"fix",90),
(50021,100000026,"out",0),
(50021,100000027,"out",0),
(50021,100000000,"fix",90),
(50021,100000001,"fix",90),
(50021,100000002,"fix",90),
(50021,100000003,"fix",90),
(50021,100000004,"fix",90),
(50021,100000005,"out",0),
(50021,100000006,"out",0),

(50022,100000021,"fix",90),
(50022,100000022,"fix",90),
(50022,100000023,"fix",90),
(50022,100000024,"fix",90),
(50022,100000025,"fix",90),
(50022,100000026,"out",0),
(50022,100000027,"out",0),
(50022,100000007,"fix",90),
(50022,100000008,"fix",90),
(50022,100000009,"fix",90),
(50022,100000010,"fix",90),
(50022,100000011,"fix",90),
(50022,100000012,"out",0),
(50022,100000013,"out",0),

(50023,100000021,"fix",90),
(50023,100000022,"fix",90),
(50023,100000023,"fix",90),
(50023,100000024,"fix",90),
(50023,100000025,"fix",90),
(50023,100000026,"out",0),
(50023,100000027,"out",0),
(50023,100000014,"fix",90),
(50023,100000015,"fix",90),
(50023,100000016,"fix",90),
(50023,100000017,"fix",90),
(50023,100000018,"fix",90),
(50023,100000019,"out",0),
(50023,100000020,"out",0);


INSERT INTO TelevisionsLive VALUES
(50000,"3","javad","khiabany"),
(50003,"3","adel","ferdosi pur"),
(50012,"3","mazdak","mirzayi"),
(50015,"3","javad","khiabany");

INSERT INTO Sponsors VALUES
(50000,"Irancell",2000000),
(50003,"Himaliya",900000),
(50012,"Emersan",87000000),
(50015,"Samsung",100000000);