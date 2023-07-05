USE MaysamDB
GO

CREATE TABLE cities (
  id INT PRIMARY KEY,
  city VARCHAR(255),
  state VARCHAR(255),
  population_estimate_2018 INT,
  population_census_2010 INT,
  land_area_sq_mi_2016 FLOAT,
  pop_density_per_sq_mi_2016 INT
);

INSERT INTO cities VALUES(1, 'New York', 'New York',	8398748, 8175133, 301.5, 28317);
INSERT INTO cities VALUES(2, 'Los Angeles', 'California', 3990456, 3792621,	468.7, 8484);
INSERT INTO cities VALUES(3, 'Chicago', 'Illinois',	2705994, 2695598, 227.3, 11900);
INSERT INTO cities VALUES(4, 'Houston', 'Texas', 2325502,	2100263, 637.5, 3613);
INSERT INTO cities VALUES(5, 'Phoenix', 'Arizona', 1660272,	1445632, 517.6, 3120);
INSERT INTO cities VALUES(6, 'Philadelphia', 'Pennsylvania', 1584138,	1526006, 134.2, 11683);
INSERT INTO cities VALUES(7, 'San Antonio', 'Texas', 1532233,	1327407, 461.0, 3238);
INSERT INTO cities VALUES(8, 'San Diego', 'California',	1425976, 1307402, 325.2, 4325);	
INSERT INTO cities VALUES(9, 'Dallas', 'Texas',	1345047, 1197816, 340.9, 3866);
INSERT INTO cities VALUES(10, 'San Jose', 'California', 1030119,	945942, 177.5, 5777);	
INSERT INTO cities VALUES(11, 'Austin', 'Texas',	964254, 790390, 312.7, 3031);
INSERT INTO cities VALUES(12, 'Jacksonville', 'Florida',	903889,	821784,	747.4, 1178);
INSERT INTO cities VALUES(13, 'Fort Worth', 'Texas',	895008,	741206, 342.9, 2491);
INSERT INTO cities VALUES(14, 'Columbus', 'Ohio', 892533, 787033, 218.5, 3936);
INSERT INTO cities VALUES(15, 'San Francisco', 'California',	883305,	805235,	46.9, 18569);	
INSERT INTO cities VALUES(16, 'Charlotte', 'North Carolina',	872498,	731424,	305.4, 2757);
INSERT INTO cities VALUES(17, 'Indianapolis', 'Indiana',	867125,	820445,	361.5, 2366);
INSERT INTO cities VALUES(18, 'Seattle', 'Washington',	744955,	608660, 83.8, 8405);
INSERT INTO cities VALUES(19, 'Denver', 'Colorado', 716492,	600158,	153.3, 4521);
INSERT INTO cities VALUES(20, 'Washington', 'District of Columbia',	702455,	601723,	61.1, 11148);
INSERT INTO cities VALUES(21, 'Boston', 'Massachusetts',	694583,	617594,	48.3, 13938);
INSERT INTO cities VALUES(22, 'El Paso', 'Texas', 682669,	649121,	256.8, 2660);
INSERT INTO cities VALUES(23, 'Detroit', 'Michigan',	672662,	713777,	138.8, 4847);
INSERT INTO cities VALUES(24, 'Nashville', 'Tennessee', 669053, 601222, 475.9, 1388);
INSERT INTO cities VALUES(25, 'Portland', 'Oregon', 653115, 583776, 133.5, 4793);

CREATE TABLE airports (
  id INT PRIMARY KEY,
  city_id INT REFERENCES cities,
  FAA_id VARCHAR(3),
  IATA_id VARCHAR(3),
  ICAO_id VARCHAR(4),
  name VARCHAR(500)
);

INSERT INTO airports VALUES(1, 1, 'JFK',	'JFK', 'KJFK', 'John F. Kennedy International Airport');
INSERT INTO airports VALUES(2, 1, 'LGA',	'LGA',	'KLGA',	'LaGuardia Airport');
INSERT INTO airports VALUES(3, 2, 'LAX',	'LAX',	'KLAX',	'Los Angeles International Airport');
INSERT INTO airports VALUES(4, 3, 'ORD',	'ORD',	'KORD',	'Chicago O''Hare International Airport');
INSERT INTO airports VALUES(5, 3, 'MDW',	'MDW',	'KMDW',	'Chicago Midway International Airport');
INSERT INTO airports VALUES(6, 4, 'IAH',	'IAH',	'KIAH',	'George Bush Intercontinental Airport');
INSERT INTO airports VALUES(7, 4, 'HOU',	'HOU',	'KHOU',	'William P. Hobby Airport');
INSERT INTO airports VALUES(8, 5, 'PHX',	'PHX',	'KPHX',	'Phoenix Sky Harbor International Airport');
INSERT INTO airports VALUES(9, 6, 'PHL',	'PHL',	'KPHL',	'Philadelphia International Airport');
INSERT INTO airports VALUES(10, 7, 'SAT',	'SAT',	'KSAT',	'San Antonio International Airport');
INSERT INTO airports VALUES(11, 8, 'SAN',	'SAN',	'KSAN',	'San Diego International Airport');
INSERT INTO airports VALUES(12, 9, 'DAL',	'DAL',	'KDAL',	'Dallas Love Field');
INSERT INTO airports VALUES(13, 9, 'DFW',	'DFW',	'KDFW',	'Dallas/Fort Worth International Airport');
INSERT INTO airports VALUES(14, 10, 'SJC',	'SJC',	'KSJC',	'Norman Y. Mineta San José International Airport');
INSERT INTO airports VALUES(15, 11, 'AUS',	'AUS',	'KAUS',	'Austin-Bergstrom International Airport');
INSERT INTO airports VALUES(16, 12, 'JAX',	'JAX',	'KJAX',	'Jacksonville International Airport');
INSERT INTO airports VALUES(17, 13, 'DFW',	'DFW',	'KDFW',	'Dallas/Fort Worth International Airport');
INSERT INTO airports VALUES(18, 14, 'CSG',	'CSG',	'KCSG',	'Columbus Metropolitan Airport');
INSERT INTO airports VALUES(19, 15, 'SFO',	'SFO',	'KSFO',	'San Francisco International Airport');
INSERT INTO airports VALUES(20, 16, 'CLT',	'CLT',	'KCLT',	'Charlotte/Douglas International Airport');
INSERT INTO airports VALUES(21, 17, 'IND',	'IND',	'KIND',	'Indianapolis International Airport');
INSERT INTO airports VALUES(22, 18, 'BFI',	'BFI',	'KBFI',	'King County International Airport');
INSERT INTO airports VALUES(23, 18, 'SEA',	'SEA',	'KSEA',	'Seattle–Tacoma International Airport');
INSERT INTO airports VALUES(24, 19, 'DEN',	'DEN',	'KDEN',	'Denver International Airport');
INSERT INTO airports VALUES(25, 20, 'DCA',	'DCA',	'KDCA',	'Ronald Reagan Washington National Airport');
INSERT INTO airports VALUES(26, 20, 'IAD',	'IAD',	'KIAD',	'Washington Dulles International Airport');
INSERT INTO airports VALUES(27, 21, 'BOS',	'BOS',	'KBOS',	'Gen. Edward Lawrence Logan International Airport');
INSERT INTO airports VALUES(28, 22, 'ELP',	'ELP',	'KELP',	'El Paso International Airport');
INSERT INTO airports VALUES(29, 23, 'DTW',	'DTW',	'KDTW',	'Detroit Metropolitan Wayne County Airport');
INSERT INTO airports VALUES(30, 24, 'BNA',	'BNA',	'KBNA',	'Nashville International Airport');
INSERT INTO airports VALUES(31, 25, 'PDX',	'PDX',	'KPDX',	'Portland International Airport');