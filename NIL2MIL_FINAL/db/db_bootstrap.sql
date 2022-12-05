/*
*********************************************************************
http://www.mysqltutorial.org
*********************************************************************
Name: MySQL Sample Database n2m
Link: http://www.mysqltutorial.org/mysql-sample-database.aspx
Version 3.1
+ changed data type from DOUBLE to DECIMAL for amount columns
Version 3.0
+ changed DATETIME to DATE for some columns
Version 2.0
+ changed table type from MyISAM to InnoDB
+ added foreign keys for all tables
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`n2m` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `n2m`;

grant all privileges on n2m.* to 'webapp'@'%';
flush privileges;

/*Table structure for table University */

DROP TABLE IF EXISTS University;

CREATE TABLE University (
    uni_ID INT PRIMARY KEY AUTO_INCREMENT,
    uni_name VARCHAR(200),
    street_add VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(2),
    zip VARCHAR(10),
    website TEXT,
    img TEXT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table University */

INSERT INTO University (
    uni_name,
    street_add,
    city,
    state,
    zip,
    website,
    img
)
VALUES
    ('UNIVERSITY OF CONNECTICUT', '2131 HILLSIDE RD', 'STORRS', 'CT', '6269', 'https://uconn.edu/', 'https://cnycentral.com/resources/media/b6223c42-ed19-4498-8a0a-2ba0da79adac-jumbo3x4_NCAA_UCONN_Huskies.png?1662582318041'),
    ('ROCKLAND COMMUNITY COLLEGE', '145 COLLEGE RD', 'SUFFERN', 'NY', '10901', 'www.sunyrockland.edu/', 'https://sunyrockland.edu/wp-content/uploads/2021/07/RCC_Seal_1_Green_1024x1024-1-1024x1024.png'),
    ('NEW ENGLAND INSTITUTE OF TECHNOLOGY', 'ONE NEW ENGLAND TECH BOULEVARD', 'EAST GREENWICH', 'RI', '2818', 'www.neit.edu', 'https://images.squarespace-cdn.com/content/v1/58b06b86bebafb5772517c23/1525113744994-BTUZRES7TA8CX02LNNPL/image005.png?format=2500w'),
    ("O'BRIENS AVEDA INSTITUTE", '400 CORNERSTONE DR 220', 'WILLISTON', 'VT', '5495', 'www.obriensavedainstitute.org', 'https://pbs.twimg.com/profile_images/872863164068704256/jRxP7LEO_400x400.jpg'),
    ('PLATT COLLEGE-ANAHEIM', '1551 SOUTH DOUGLASS ROAD', 'ANAHEIM', 'CA', '92806', 'www.plattcollege.edu', 'https://plattcollege.edu/wp-content/uploads/2020/08/default.png'),
    ('EMILY GRIFFITH TECHNICAL COLLEGE', '1860 LINCOLN STREET', 'DENVER', 'CO', '80203', 'www.emilygriffith.edu', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff'),
    ('GATEWAY COMMUNITY COLLEGE', '20 CHURCH STREET', 'NEW HAVEN', 'CT', '6510', 'www.gatewayct.edu/', 'http://dummyimage.com/150x100.png/cc0000/ffffff'),
    ('SAYBROOK UNIVERSITY', '55 W EUREKA STREET', 'PASADENA', 'CA', '91103', 'www.saybrook.edu', 'http://dummyimage.com/101x100.png/ff4444/ffffff'),
    ('EMORY UNIVERSITY', '201 DOWMAN DRIVE', 'ATLANTA', 'GA', '30322', 'www.emory.edu', 'http://dummyimage.com/175x100.png/dddddd/000000'),
    ('CHRISTINA AND COMPANY EDUCATION CENTER', '220 MEIJER DRIVE', 'LAFAYETTE', 'IN', '47905', 'www.ccedcenter.com', 'http://dummyimage.com/210x100.png/ff4444/ffffff'),
    ("WOMEN'S INSTITUTE OF TORAH SEMINARY", '6602 PARK HEIGHTS AVENUE', 'BALTIMORE', 'MD', '21215', 'www.maalotbaltimore.org/', 'http://dummyimage.com/249x100.png/ff4444/ffffff'),
    ('YESHIVA GEDOLAH OF CLIFFWOOD', '200 CENTER STREET', 'KEYPORT', 'NJ', '7735', 'https://yeshivagedolahcliffwood.com', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
    ('SUNCOAST TECHNICAL EDUCATION CENTER', '4057 CALIFORNIA STREET', 'BROOKSVILLE', 'FL', '34604', 'www.sunteched.com', 'http://dummyimage.com/148x100.png/ff4444/ffffff'),
    ('INDEPENDENT TRAINING & APPRENTICESHIP PROGRAM', '9856 BUSINESS PARK DRIVE', 'SACRAMENTO', 'CA', '95827', 'www.i-tap.com', 'http://dummyimage.com/156x100.png/dddddd/000000'),
    ('THE SALON PROFESSIONAL ACADEMY-GEORGETOWN', '901 SOUTH IH 35', 'GEORGETOWN', 'TX', '78626', 'www.tspageorgetown.com/', 'http://dummyimage.com/116x100.png/5fa2dd/ffffff'),
    ('TEXAS TECH UNIVERSITY HEALTH SCIENCES CENTER-EL PASO', '5001 EL PASO DRIVE', 'EL PASO', 'TX', '79905', 'elpaso.ttuhsc.edu/', 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
    ('HARRISBURG UNIVERSITY OF SCIENCE AND TECHNOLOGY', '326 MARKET STREET', 'HARRISBURG', 'PA', '17101', 'www.HarrisburgU.edu', 'http://dummyimage.com/135x100.png/cc0000/ffffff'),
    ('NEUMONT COLLEGE OF COMPUTER SCIENCE', '143 SOUTH MAIN STREET', 'SALT LAKE CITY', 'UT', '84111', 'www.neumont.edu', 'http://dummyimage.com/124x100.png/ff4444/ffffff'),
    ('MANHATTAN INSTITUTE', '45 WEST 34TH STREET', 'NEW YORK', 'NY', '10001', 'www.manhattaninstitute.edu', 'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),
    ('SPRINGFIELD COLLEGE-REGIONAL, ONLINE, AND CONTINUING EDUCATION', 'SPRINGFIELD COLLEGE - REGIONAL, ONLINE, AND CONTINUING EDUCATION', 'SPRINGFIELD', 'MA', '1109', 'www.springfield.edu/school-of-professional-and-continuing-studies', 'http://dummyimage.com/131x100.png/5fa2dd/ffffff'),
    ('CHAMBERLAIN UNIVERSITY-GEORGIA', '5775 PEACHTREE-DUNWOODY ROAD, NE, SUITE A100', 'ATLANTA', 'GA', '30342', 'https://www.chamberlain.edu/', 'http://dummyimage.com/236x100.png/cc0000/ffffff'),
    ('FRANCISCAN SCHOOL OF THEOLOGY', '4050 MISSION AVENUE', 'OCEANSIDE', 'CA', '92057', 'www.fst.edu', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff'),
    ('MONMOUTH COUNTY VOCATIONAL SCHOOL DISTRICT', '4000 KOZLOSKI RD', 'FREEHOLD', 'NJ', '7728', 'www.mcvsd.org', 'http://dummyimage.com/155x100.png/5fa2dd/ffffff'),
    ('RIVERSIDE COUNTY OFFICE OF EDUCATION-SCHOOL OF CAREER EDUCATION', '2100 E. ALESSANDRO BLVD.', 'INDIO', 'CA', '92508', 'www.riversidesce.org', 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
    ('WEST COAST UNIVERSITY-CENTER FOR GRADUATE STUDIES', '590 NORTH VERMONT AVENUE', 'LOS ANGELES', 'CA', '90004', 'westcoastuniversity.edu/', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff'),
    ('PAUL MITCHELL THE SCHOOL-JESSUP', '7351 ASSATEAGUE DRIVE, SUITE 370', 'JESSUP', 'MD', '20794', 'https://paulmitchell.edu/jessup', 'http://dummyimage.com/226x100.png/ff4444/ffffff'),
    ('UNIVERSITY OF WYOMING', 'CORNER OF NINTH AND IVINSON', 'LARAMIE', 'WY', '82071', 'www.uwyo.edu', 'http://dummyimage.com/217x100.png/cc0000/ffffff'),
    ('CUMBERLAND UNIVERSITY', '1 CUMBERLAND SQUARE', 'LEBANON', 'TN', '37087', 'www.cumberland.edu', 'http://dummyimage.com/139x100.png/ff4444/ffffff'),
    ('WEATHERFORD COLLEGE', '225 COLLEGE PARK DRIVE', 'WEATHERFORD', 'TX', '76086', 'https://www.wc.edu', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff'),
    ('BRANFORD HALL CAREER INSTITUTE-JERSEY CITY', '40 JOURNAL SQUARE, 1ST FLOOR', 'JERSEY CITY', 'NJ', '7306', 'www.schooliya.com/peg/JerseyCity/index.html', 'http://dummyimage.com/188x100.png/dddddd/000000'),
    ('BLUE CLIFF COLLEGE-SHREVEPORT', '8731 PARK PLAZA DRIVE', 'SHREVEPORT', 'LA', '71105', 'bluecliffcollege.edu', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
    ('VANGUARD COLLEGE OF COSMETOLOGY-SLIDELL', '740 OAK HARBOR BLVD', 'SLIDELL', 'LA', '70458', 'paulmitchell.edu/slidell', 'http://dummyimage.com/197x100.png/5fa2dd/ffffff'),
    ("ST. JOHN'S COLLEGE", '60 COLLEGE AVE', 'ANNAPOLIS', 'MD', '21401', 'www.sjc.edu', 'http://dummyimage.com/137x100.png/ff4444/ffffff'),
    ('ADULT AND COMMUNITY EDUCATION-HUDSON', '2323 LEXINGTON AVENUE', 'COLUMBUS', 'OH', '43211', 'https://www.ccsoh.us/domain/197', 'http://dummyimage.com/167x100.png/ff4444/ffffff'),
    ('AMERICAN BEAUTY SCHOOL', '1380 METROPOLITAN AVENUE', 'BRONX', 'NY', '10462', 'www.americanbeautyschool.edu', 'http://dummyimage.com/157x100.png/cc0000/ffffff'),
    ('STRAYER UNIVERSITY-DISTRICT OF COLUMBIA', '1133 15TH ST NW', 'WASHINGTON', 'DC', '20005', 'www.strayer.edu/district-columbia/washington', 'http://dummyimage.com/235x100.png/dddddd/000000'),
    ('WILLIAM CAREY UNIVERSITY', '710 WILLIAM CAREY PARKWAY', 'HATTIESBURG', 'MS', '39401', 'www.wmcarey.edu', 'http://dummyimage.com/177x100.png/dddddd/000000'),
    ('TULSA WELDING SCHOOL-JACKSONVILLE', '3500 SOUTHSIDE BLVD', 'JACKSONVILLE', 'FL', '32216', 'https://www.weldingschool.com', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff'),
    ('UNITED STATES MILITARY ACADEMY', '646 SWIFT RD (ATTN: MASG)', 'WEST POINT', 'NY', '10996', 'www.westpoint.edu', 'http://dummyimage.com/236x100.png/dddddd/000000'),
    ('THE SALON PROFESSIONAL ACADEMY-TONAWANDA', '2309 EGGERT RD', 'TONAWANDA', 'NY', '14150', 'tspabuffalo.com', 'http://dummyimage.com/151x100.png/ff4444/ffffff'),
    ('ASNUNTUCK COMMUNITY COLLEGE', '170 ELM ST', 'ENFIELD', 'CT', '6082', 'www.Asnuntuck.edu', 'http://dummyimage.com/141x100.png/cc0000/ffffff'),
    ('WESTERN THEOLOGICAL SEMINARY', '101 E 13TH ST', 'HOLLAND', 'MI', '49423', 'www.westernsem.edu', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
    ('CORTIVA INSTITUTE-TEMPE', '1409 WEST SOUTHERN AVENUE, SUITE 6', 'TEMPE', 'AZ', '85282', 'www.steinered.com/', 'http://dummyimage.com/181x100.png/ff4444/ffffff'),
    ('UNIVERSITY OF SOUTH FLORIDA-SARASOTA-MANATEE', '8350 N TAMIAMI TRAIL', 'SARASOTA', 'FL', '34243', 'usfsm.edu/', 'http://dummyimage.com/195x100.png/dddddd/000000'),
    ('UNIVERSITY OF NEBRASKA MEDICAL CENTER', '42ND & DEWEY AVE', 'OMAHA', 'NE', '68198', 'www.unmc.edu', 'http://dummyimage.com/144x100.png/ff4444/ffffff'),
    ("THE UNIVERSITY OF VIRGINIA'S COLLEGE AT WISE", '1 COLLEGE AVENUE', 'WISE', 'VA', '24293', 'https://www.uvawise.edu/', 'http://dummyimage.com/121x100.png/dddddd/000000'),
    ('EASTERN WYOMING COLLEGE', '3200 WEST C ST', 'TORRINGTON', 'WY', '82240', 'ewc.wy.edu', 'http://dummyimage.com/191x100.png/cc0000/ffffff'),
    ('UNIVERSITY OF THE POTOMAC-WASHINGTON DC CAMPUS', '1401 H STREET NW', 'WASHINGTON', 'DC', '20005', 'www.potomac.edu', 'http://dummyimage.com/112x100.png/dddddd/000000'),
    ('WILLIAMS COLLEGE', '880 MAIN ST', 'WILLIAMSTOWN', 'MA', '1267', 'https://www.williams.edu', 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
    ('THE HAIR ACADEMY', '2101 EAST BROADWAY AVENUE', 'BISMARCK', 'ND', '58501', 'thehairacademynd.com', 'http://dummyimage.com/121x100.png/ff4444/ffffff');

/*Table structure for table Teams */

DROP TABLE IF EXISTS Teams;

CREATE TABLE Teams (
    team_ID INT PRIMARY KEY AUTO_INCREMENT,
    uni_ID INT,
    conference VARCHAR(30),
    division INT,
    sport_name TEXT,
    contact_email VARCHAR(100),
    contact_name VARCHAR(50),
    CONSTRAINT fk_04 FOREIGN KEY (uni_ID)
        REFERENCES University(uni_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Teams */

INSERT INTO Teams (
    uni_ID,
    conference,
    division,
    sport_name,
    contact_email,
    contact_name
)
VALUES
    (1,'Big East', '1', 'W Basketball', 'Sue Donovan', 's.donovan@not_real.com'),
    (2,'Big 12', '1', 'W Basketball', 'Rice Reardon', 'rreardon0@xrea.com'),
    (3,'SEC', '1', 'W Basketball', 'Kelbee Grinval', 'kgrinval1@hp.com'),
    (4,'Big South', '1', 'M Basketball', 'Brody Sorsbie', 'bsorsbie2@yahoo.com'),
    (5,'Patriot League', '3', 'M Basketball', 'Sonnie McAusland', 'smcausland3@t.co'),
    (6,'Big South', '1', 'W Basketball', 'Pat Bottomley', 'pbottomley4@printfriendly.com'),
    (7,'Atlantic 10', '3', 'M Basketball', 'Sheela Ortsmann', 'sortsmann5@whitehouse.gov'),
    (8,'ACC', '2', 'W Basketball', 'Engracia Bellwood', 'ebellwood6@dot.gov'),
    (9,'ACC', '2', 'W Basketball', 'Kaitlynn Peers', 'kpeers7@plala.or.jp'),
    (10,'ACC', '1', 'W Basketball', 'Elia Crowley', 'ecrowley8@goo.ne.jp'),
    (11,'Big 12', '1', 'M Basketball', 'Dorie Piller', 'dpiller9@japanpost.jp'),
    (12,'Patriot League', '1', 'M Basketball', 'Cristian Whitfield', 'cwhitfielda@goo.ne.jp'),
    (13,'SEC', '2', 'W Basketball', 'Hoebart Cremer', 'hcremerb@buzzfeed.com'),
    (14,'SEC', '1', 'W Basketball', 'Trev Nuttey', 'tnutteyc@wisc.edu'),
    (1,'Big East', '1', 'M Basketball', 'Tim Verman', 'tvermand@rakuten.co.jp'),
    (16,'Mountain West', '2', 'M Basketball', 'Tabb Spilstead', 'tspilsteade@ifeng.com'),
    (17,'Big South', '1', 'W Basketball', 'Bree Gormally', 'bgormallyf@go.com'),
    (18,'Big East', '1', 'M Basketball', 'Cathleen Leborgne', 'cleborgneg@drupal.org'),
    (19,'SEC', '3', 'M Basketball', 'Cullin Ondricek', 'condricekh@nps.gov'),
    (20,'Atlantic 10', '2', 'W Basketball', 'Barbabra Baldry', 'bbaldryi@ftc.gov'),
    (21,'Big South', '3', 'W Basketball', 'Burl Goulston', 'bgoulstonj@is.gd'),
    (22,'Patriot League', '1', 'W Basketball', 'Addie Monsey', 'amonseyk@clickbank.net'),
    (23,'Big South', '2', 'W Basketball', 'Teena Blanque', 'tblanquel@nhs.uk'),
    (24,'Mountain West', '3', 'W Basketball', 'Yoshi Ugo', 'yugom@networkadvertising.org'),
    (25,'ACC', '2', 'M Basketball', 'Paten Sebright', 'psebrightn@drupal.org'),
    (26,'Big South', '3', 'W Basketball', 'Welbie Clowser', 'wclowsero@quantcast.com'),
    (27,'Big South', '2', 'W Basketball', 'Lou Norkutt', 'lnorkuttp@unblog.fr'),
    (28,'Big South', '2', 'M Basketball', 'Monte Dallicoat', 'mdallicoatq@freewebs.com'),
    (29,'SEC', '2', 'W Basketball', 'Reinald Bullus', 'rbullusr@eepurl.com'),
    (30,'Atlantic 10', '1', 'M Basketball', 'Rivkah Yeldon', 'ryeldons@illinois.edu'),
    (31,'Mountain West', '3', 'M Basketball', 'Jaquelin Matuszak', 'jmatuszakt@huffingtonpost.com'),
    (32,'ACC', '3', 'W Basketball', 'Kane Keuntje', 'kkeuntjeu@cocolog-nifty.com'),
    (33,'Atlantic 10', '2', 'M Basketball', 'Daniele Bricket', 'dbricketv@shutterfly.com'),
    (34,'Mountain West', '3', 'W Basketball', 'Isobel Stanway', 'istanwayw@de.vu'),
    (35,'Big 12', '3', 'W Basketball', 'Chantal Beavors', 'cbeavorsx@networksolutions.com'),
    (36,'Mountain West', '2', 'W Basketball', 'Eunice Pressman', 'epressmany@npr.org'),
    (37,'Big 12', '3', 'W Basketball', 'Blinni Peasee', 'bpeaseez@weather.com'),
    (38,'ACC', '2', 'M Basketball', 'Wald Lowton', 'wlowton10@eepurl.com'),
    (39,'Mountain West', '3', 'M Basketball', 'Noel MacDonald', 'nmacdonald11@sun.com'),
    (40,'Big South', '2', 'W Basketball', 'Rad Larret', 'rlarret12@cam.ac.uk'),
    (41,'Big 12', '2', 'M Basketball', 'Ethel Thornthwaite', 'ethornthwaite13@wunderground.com'),
    (42,'Big 12', '2', 'M Basketball', 'Katy Carnow', 'kcarnow14@indiegogo.com'),
    (43,'Mountain West', '2', 'W Basketball', 'Joseito Rubinek', 'jrubinek15@ehow.com'),
    (44,'ACC', '1', 'W Basketball', 'Dermot Neumann', 'dneumann16@phoca.cz'),
    (45,'SEC', '2', 'W Basketball', 'Frederigo Austwick', 'faustwick17@tamu.edu'),
    (46,'Mountain West', '1', 'W Basketball', 'Wendel Meriton', 'wmeriton18@forbes.com'),
    (47,'Patriot League', '1', 'W Basketball', 'Gregor MacVaugh', 'gmacvaugh19@stumbleupon.com'),
    (48,'Big East', '1', 'M Basketball', 'Claudio Lygo', 'clygo1a@indiegogo.com'),
    (49,'ACC', '1', 'W Basketball', 'Terri-jo O Mullen', 'to1b@toplist.cz'),
    (50,'ACC', '2', 'M Basketball', 'Ramonda Boice', 'rboice1c@histats.com');

/*Table structure for table Players */

DROP TABLE IF EXISTS Players;

CREATE TABLE Players (
    player_ID INT PRIMARY KEY AUTO_INCREMENT,
    team_ID INT,
    f_name VARCHAR(20),
    l_name VARCHAR(20),
    birthdate DATE,
    school_year INT,
    gpa FLOAT(3, 2),
    email TEXT,
    gender VARCHAR(15),
    pos VARCHAR(5),
    bio TEXT,
    sport_name TEXT,
    img TEXT,
    CONSTRAINT fk_05 FOREIGN KEY (team_ID)
        REFERENCES Teams(team_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Players */

INSERT INTO Players(
    team_ID,
    f_name,
    l_name,
    birthdate,
    school_year,
    gpa,
    email,
    gender,
    pos,
    bio,
    sport_name,
    img
)
VALUES
    (1,'Azzi', 'Fudd', '2002-11-11', '2', '3.67', 'fudd.azzi@not_real.com', 'Female', 'F', "Hi everyone, I'm Azzi Fudd. You may recognize me from my high school tapes, but I can assure you my game has matured even more from that time. Excited to continue playing with my teammates as I enter my second year. Go Huskies!", 'W Basketball', 'https://uconnhuskies.com/images/2022/10/6/Fudd_Azzi_8QXsD.jpg'),
    (1,'Aaliyah', 'Edwards', '2002-07-09', '3', '3.45', 'edwards.a@not_real.com', 'Female', 'C', "Hi! I'm Aliyah Edwards. I like blocking any shot that comes within a ten-foot radius of the basket and putting on the post moves when I get low on the block. I'm entering my third season with the Huskies and looking forward to seeing where we can go as a team.", 'W Basketball', 'https://a.espncdn.com/combiner/i?img=/i/headshots/womens-college-basketball/players/full/4433408.png&w=350&h=254'),
    (1,'Nika', 'Muhl', '2001-04-09', '3', '4', 'nm@not_real.com', 'Female', 'G', "I'm Nika, a pass-first guard in my third year with UConn. I'm originally from Croatia, but CT is home to me now.", 'W Basketball', 'https://a.espncdn.com/combiner/i?img=/i/headshots/womens-college-basketball/players/full/4433468.png&w=350&h=254'),
    (2,'Harmony', 'Troy', '2002-8-19', '3', '3.8', 'htroy0@un.org', 'Female', 'F', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nib', 'W Basketball', 'http://dummyimage.com/201x100.png/5fa2dd/ffffff'),
    (3,'Timi', 'MacEvilly', '2001-1-8', '6', '2.13', 'tmacevilly1@wsj.com', 'Female', 'G', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', 'W Basketball', 'http://dummyimage.com/203x100.png/5fa2dd/ffffff'),
    (4,'Wainwright', 'Nise', '2002-5-16', '6', '2.54', 'wnise2@stumbleupon.com', 'Male', 'F', 'Proin eu mi.', 'M Basketball', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff'),
    (5,'Blane', 'Linsley', '2000-9-1', '3', '2.25', 'blinsley3@netlog.com', 'Male', 'F', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat ', 'M Basketball', 'http://dummyimage.com/172x100.png/cc0000/ffffff'),
    (6,'Kaleena', 'Halwill', '2001-5-14', '1', '2.98', 'khalwill4@netvibes.com', 'Female', 'C', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'W Basketball', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff'),
    (7,'Mata', 'Llewellen', '2001-3-12', '2', '3.06', 'mllewellen5@newyorker.com', 'Male', 'C', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'M Basketball', 'http://dummyimage.com/150x100.png/cc0000/ffffff'),
    (8,'Gilda', 'Haste', '2001-1-2', '5', '2.65', 'ghaste6@uol.com.br', 'Female', 'F', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibu', 'W Basketball', 'http://dummyimage.com/101x100.png/ff4444/ffffff'),
    (9,'Gwendolyn', 'Thames', '1999-1-2', '1', '2.98', 'gthames7@technorati.com', 'Female', 'G', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 'W Basketball', 'http://dummyimage.com/175x100.png/dddddd/000000'),
    (10,'Rhodia', 'Katt', '2000-1-29', '1', '3.28', 'rkatt8@artisteer.com', 'Female', 'G', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 'W Basketball', 'http://dummyimage.com/210x100.png/ff4444/ffffff'),
    (11,'Free', 'Eakeley', '2002-3-23', '6', '3.38', 'feakeley9@dailymotion.com', 'Male', 'G', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'M Basketball', 'http://dummyimage.com/249x100.png/ff4444/ffffff'),
    (12,'Byron', 'Ackrill', '2001-1-3', '4', '2.45', 'backrilla@ox.ac.uk', 'Male', 'G', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', 'M Basketball', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
    (13,'Lolly', 'Glidder', '2002-3-24', '5', '2.26', 'lglidderb@dmoz.org', 'Female', 'G', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'W Basketball', 'http://dummyimage.com/148x100.png/ff4444/ffffff'),
    (14,'Rosmunda', 'Van Castele', '2000-5-3', '3', '2.58', 'rvancastelec@wiley.com', 'Agender', 'F', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenea', 'W Basketball', 'http://dummyimage.com/156x100.png/dddddd/000000'),
    (15,'Elijah', 'Piatkowski', '2002-9-25', '1', '3.16', 'epiatkowskid@globo.com', 'Male', 'F', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'M Basketball', 'http://dummyimage.com/116x100.png/5fa2dd/ffffff'),
    (16,'Osgood', 'Tidbold', '1999-1-2', '2', '3.74', 'otidbolde@census.gov', 'Male', 'G', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum ru', 'M Basketball', 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
    (17,'Marillin', 'Ferie', '2002-6-1', '2', '2.75', 'mferief@dot.gov', 'Female', 'F', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'W Basketball', 'http://dummyimage.com/135x100.png/cc0000/ffffff'),
    (18,'Freddy', 'Lunbech', '2001-5-9', '6', '2.4', 'flunbechg@wunderground.com', 'Male', 'F', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'M Basketball', 'http://dummyimage.com/124x100.png/ff4444/ffffff'),
    (19,'Maxim', 'Lightbown', '2002-2-15', '1', '2.45', 'mlightbownh@acquirethisname.com', 'Male', 'C', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 'M Basketball', 'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),
    (20,'Merlina', 'Taber', '2000-2-2', '2', '2.15', 'mtaberi@time.com', 'Non-binary', 'F', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'W Basketball', 'http://dummyimage.com/131x100.png/5fa2dd/ffffff'),
    (21,'Tiffi', 'Schulze', '2002-6-22', '4', '2.79', 'tschulzej@cdc.gov', 'Female', 'G', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'W Basketball', 'http://dummyimage.com/236x100.png/cc0000/ffffff'),
    (22,'Cherrita', 'Sellwood', '2001-8-30', '5', '2.72', 'csellwoodk@nationalgeographic.com', 'Female', 'F', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan torto', 'W Basketball', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff'),
    (23,'Lolly', 'Evitt', '2000-2-6', '4', '3.85', 'levittl@nasa.gov', 'Bigender', 'F', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'W Basketball', 'http://dummyimage.com/155x100.png/5fa2dd/ffffff'),
    (24,'Kassandra', 'Clayworth', '2000-1-1', '2', '2.72', 'kclayworthm@mediafire.com', 'Female', 'C', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum ', 'W Basketball', 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
    (25,'Heywood', 'Ethelston', '2000-7-5', '4', '3.53', 'hethelstonn@jugem.jp', 'Male', 'C', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', 'M Basketball', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff'),
    (26,'Reta', 'Scowcraft', '2001-9-24', '1', '3.25', 'rscowcrafto@about.com', 'Female', 'C', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagi', 'W Basketball', 'http://dummyimage.com/226x100.png/ff4444/ffffff'),
    (27,'Dorthea', 'Milne', '2000-5-15', '4', '3.6', 'dmilnep@cargocollective.com', 'Female', 'C', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictu', 'W Basketball', 'http://dummyimage.com/217x100.png/cc0000/ffffff'),
    (28,'Tripp', 'Dolling', '2000-1-2', '5', '3.16', 'tdollingq@youtube.com', 'Male', 'C', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 'M Basketball', 'http://dummyimage.com/139x100.png/ff4444/ffffff'),
    (29,'Adina', 'De La Hay', '2000-3-22', '6', '2.2', 'adelahayr@github.com', 'Female', 'F', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'W Basketball', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff'),
    (30,'Arturo', 'Wakes', '2002-7-7', '4', '3.99', 'awakess@examiner.com', 'Male', 'G', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', 'M Basketball', 'http://dummyimage.com/188x100.png/dddddd/000000'),
    (31,'Richie', 'Mertin', '2000-1-27', '1', '3.58', 'rmertint@photobucket.com', 'Male', 'G', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'M Basketball', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
    (32,'Bellanca', 'Fegan', '2002-5-16', '5', '3.55', 'bfeganu@mashable.com', 'Female', 'G', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'W Basketball', 'http://dummyimage.com/197x100.png/5fa2dd/ffffff'),
    (33,'Brodie', 'McGarrie', '2000-2-2', '6', '3.04', 'bmcgarriev@webeden.co.uk', 'Male', 'C', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 'M Basketball', 'http://dummyimage.com/137x100.png/ff4444/ffffff'),
    (34,'Lanae', 'Roj', '2002-1-5', '1', '3.76', 'lrojw@nih.gov', 'Genderqueer', 'C', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'W Basketball', 'http://dummyimage.com/167x100.png/ff4444/ffffff'),
    (35,'Abagael', 'Syder', '2001-7-21', '1', '3.91', 'asyderx@indiegogo.com', 'Female', 'G', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttito', 'W Basketball', 'http://dummyimage.com/157x100.png/cc0000/ffffff'),
    (36,'Jennica', 'Cristofolini', '2000-7-22', '2', '3.02', 'jcristofoliniy@sina.com.cn', 'Non-binary', 'G', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum', 'W Basketball', 'http://dummyimage.com/235x100.png/dddddd/000000'),
    (37,'Blanche', 'Dudin', '2001-3-31', '3', '3.25', 'bdudinz@dropbox.com', 'Female', 'C', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'W Basketball', 'http://dummyimage.com/177x100.png/dddddd/000000'),
    (38,'Gay', 'Hamm', '2000-4-6', '5', '3.12', 'ghamm10@wikia.com', 'Male', 'F', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 'M Basketball', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff'),
    (39,'Beck', 'Tothacot', '2000-5-1', '5', '3.02', 'btothacot11@behance.net', 'Male', 'C', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'M Basketball', 'http://dummyimage.com/236x100.png/dddddd/000000'),
    (40,'Camila', 'Stanyer', '2000-1-5', '3', '3.8', 'cstanyer12@bbc.co.uk', 'Female', 'C', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'W Basketball', 'http://dummyimage.com/151x100.png/ff4444/ffffff'),
    (41,'Noah', 'Gorick', '2000-1-6', '5', '2.46', 'ngorick13@wp.com', 'Male', 'F', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper pu', 'M Basketball', 'http://dummyimage.com/141x100.png/cc0000/ffffff'),
    (42,'Olav', 'Langfat', '2001-4-21', '5', '3.52', 'olangfat14@tumblr.com', 'Male', 'G', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'M Basketball', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
    (43,'Danica', 'Dennerley', '2001-7-15', '6', '2.98', 'ddennerley15@uol.com.br', 'Female', 'F', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit', 'W Basketball', 'http://dummyimage.com/181x100.png/ff4444/ffffff'),
    (44,'Addi', 'Yantsev', '2000-3-5', '6', '3.66', 'ayantsev16@alexa.com', 'Female', 'G', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'W Basketball', 'http://dummyimage.com/195x100.png/dddddd/000000'),
    (45,'Tierney', 'Vennart', '2001-7-18', '2', '2.15', 'tvennart17@t-online.de', 'Female', 'G', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 'W Basketball', 'http://dummyimage.com/144x100.png/ff4444/ffffff'),
    (46,'Felic', 'Leathes', '2002-8-23', '4', '2.94', 'fleathes18@topsy.com', 'Polygender', 'F', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', 'W Basketball', 'http://dummyimage.com/121x100.png/dddddd/000000'),
    (47,'Deerdre', 'Canti', '2000-3-6', '6', '2.57', 'dcanti19@alibaba.com', 'Female', 'F', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, qua', 'W Basketball', 'http://dummyimage.com/191x100.png/cc0000/ffffff'),
    (48,'Sigfrid', 'Pinock', '2001-1-2', '6', '3.81', 'spinock1a@reddit.com', 'Male', 'G', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'M Basketball', 'http://dummyimage.com/112x100.png/dddddd/000000'),
    (49,'Nanette', 'Boughtflower', '2001-1-5', '1', '2.9', 'nboughtflower1b@nyu.edu', 'Agender', 'F', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia ', 'W Basketball', 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
    (50,'Clayton', 'Vere', '2000-6-10', '6', '3.58', 'cvere1c@hud.gov', 'Male', 'G', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 'M Basketball', 'http://dummyimage.com/121x100.png/ff4444/ffffff');


/*Table structure for table Companies */

DROP TABLE IF EXISTS Companies;

CREATE TABLE Companies (
    company_ID INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(50),
    industry VARCHAR(30),
    img TEXT,
    website TEXT,
    bio TEXT,
    street_add VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(2),
    zip VARCHAR(10),
    contact_name VARCHAR(50),
    contact_email VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Companies */

INSERT INTO Companies (
    company_name,
    industry,
    img,
    website,
    bio,
    street_add,
    city,
    state,
    zip,
    contact_name,
    contact_email
)
VALUES
    ('Nike', 'Sports', 'http://dummyimage.com/201x100.png/5fa2dd/ffffff', 'https://www.hmoyujmoo.com/', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nib', '145 COLLEGE RD', 'SUFFERN', 'NY', '10901', 'Rice Reardon', 'rreardon0@xrea.com'),
    ('Adidas', 'Retail', 'http://dummyimage.com/203x100.png/5fa2dd/ffffff', 'https://www.rdopotipx.com/', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', 'ONE NEW ENGLAND TECH BOULEVARD', 'EAST GREENWICH', 'RI', '2818', 'Kelbee Grinval', 'kgrinval1@hp.com'),
    ('Mockaroo', 'Food & Drink', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff', 'https://www.xxfjmepmm.com/', 'Proin eu mi.', '400 CORNERSTONE DR 220', 'WILLISTON', 'VT', '5495', 'Brody Sorsbie', 'bsorsbie2@yahoo.com'),
    ('YouTube', 'Sports', 'http://dummyimage.com/172x100.png/cc0000/ffffff', 'https://www.ffmzhdcoy.com/', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat ', '1551 SOUTH DOUGLASS ROAD', 'ANAHEIM', 'CA', '92806', 'Sonnie McAusland', 'smcausland3@t.co'),
    ('Hannaford', 'Entertainment', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', 'https://www.gfylegdoa.com/', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', '1860 LINCOLN STREET', 'DENVER', 'CO', '80203', 'Pat Bottomley', 'pbottomley4@printfriendly.com'),
    ('Price Chopper', 'Entertainment', 'http://dummyimage.com/150x100.png/cc0000/ffffff', 'https://www.hcqfbccka.com/', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '20 CHURCH STREET', 'NEW HAVEN', 'CT', '6510', 'Sheela Ortsmann', 'sortsmann5@whitehouse.gov'),
    ('NBC Universal', 'Healthcare', 'http://dummyimage.com/101x100.png/ff4444/ffffff', 'https://www.xnilsacrb.com/', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibu', '55 W EUREKA STREET', 'PASADENA', 'CA', '91103', 'Engracia Bellwood', 'ebellwood6@dot.gov'),
    ('Disney', 'Sports', 'http://dummyimage.com/175x100.png/dddddd/000000', 'https://www.bfxxeiepo.com/', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', '201 DOWMAN DRIVE', 'ATLANTA', 'GA', '30322', 'Kaitlynn Peers', 'kpeers7@plala.or.jp'),
    ('ESPN', 'Retail', 'http://dummyimage.com/210x100.png/ff4444/ffffff', 'https://www.jsghbahgt.com/', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '220 MEIJER DRIVE', 'LAFAYETTE', 'IN', '47905', 'Elia Crowley', 'ecrowley8@goo.ne.jp'),
    ('Netflix', 'Entertainment', 'http://dummyimage.com/249x100.png/ff4444/ffffff', 'https://www.jmboatqci.com/', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '6602 PARK HEIGHTS AVENUE', 'BALTIMORE', 'MD', '21215', 'Dorie Piller', 'dpiller9@japanpost.jp'),
    ('Hanes', 'Food & Drink', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff', 'https://www.wwxcvygla.com/', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', '200 CENTER STREET', 'KEYPORT', 'NJ', '7735', 'Cristian Whitfield', 'cwhitfielda@goo.ne.jp'),
    ('Fruit of the Loom', 'Food & Drink', 'http://dummyimage.com/148x100.png/ff4444/ffffff', 'https://www.otablplid.com/', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '4057 CALIFORNIA STREET', 'BROOKSVILLE', 'FL', '34604', 'Hoebart Cremer', 'hcremerb@buzzfeed.com'),
    ('Gildan', 'Food & Drink', 'http://dummyimage.com/156x100.png/dddddd/000000', 'https://www.znuhgtrur.com/', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenea', '9856 BUSINESS PARK DRIVE', 'SACRAMENTO', 'CA', '95827', 'Trev Nuttey', 'tnutteyc@wisc.edu'),
    ('Pampers', 'Healthcare', 'http://dummyimage.com/116x100.png/5fa2dd/ffffff', 'https://www.npsuyptnv.com/', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '901 SOUTH IH 35', 'GEORGETOWN', 'TX', '78626', 'Tim Verman', 'tvermand@rakuten.co.jp'),
    ('Toshiba', 'Entertainment', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 'https://www.ydmmqmeqs.com/', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum ru', '5001 EL PASO DRIVE', 'EL PASO', 'TX', '79905', 'Tabb Spilstead', 'tspilsteade@ifeng.com'),
    ('Chatterpoint', 'Healthcare', 'http://dummyimage.com/135x100.png/cc0000/ffffff', 'https://www.yhtgocovd.com/', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '326 MARKET STREET', 'HARRISBURG', 'PA', '17101', 'Bree Gormally', 'bgormallyf@go.com'),
    ('Edgeclub', 'Food & Drink', 'http://dummyimage.com/124x100.png/ff4444/ffffff', 'https://www.ejmnirqdk.com/', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '143 SOUTH MAIN STREET', 'SALT LAKE CITY', 'UT', '84111', 'Cathleen Leborgne', 'cleborgneg@drupal.org'),
    ('Yata', 'Sports', 'http://dummyimage.com/107x100.png/5fa2dd/ffffff', 'https://www.peyjbiebo.com/', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '45 WEST 34TH STREET', 'NEW YORK', 'NY', '10001', 'Cullin Ondricek', 'condricekh@nps.gov'),
    ('Leenti', 'Healthcare', 'http://dummyimage.com/131x100.png/5fa2dd/ffffff', 'https://www.sovlpdjqd.com/', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'SPRINGFIELD COLLEGE - REGIONAL, ONLINE, AND CONTINUING EDUCATION', 'SPRINGFIELD', 'MA', '1109', 'Barbabra Baldry', 'bbaldryi@ftc.gov'),
    ('Viva', 'Food & Drink', 'http://dummyimage.com/236x100.png/cc0000/ffffff', 'https://www.yaciaxnoi.com/', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '5775 PEACHTREE-DUNWOODY ROAD, NE, SUITE A100', 'ATLANTA', 'GA', '30342', 'Burl Goulston', 'bgoulstonj@is.gd'),
    ('Abata', 'Healthcare', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff', 'https://www.sgrwyveiw.com/', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan torto', '4050 MISSION AVENUE', 'OCEANSIDE', 'CA', '92057', 'Addie Monsey', 'amonseyk@clickbank.net'),
    ('Gigabox', 'Sports', 'http://dummyimage.com/155x100.png/5fa2dd/ffffff', 'https://www.pirmdmwro.com/', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '4000 KOZLOSKI RD', 'FREEHOLD', 'NJ', '7728', 'Teena Blanque', 'tblanquel@nhs.uk'),
    ('Roomm', 'Healthcare', 'http://dummyimage.com/102x100.png/ff4444/ffffff', 'https://www.aewfrydfh.com/', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum ', '2100 E. ALESSANDRO BLVD.', 'INDIO', 'CA', '92508', 'Yoshi Ugo', 'yugom@networkadvertising.org'),
    ('Eidel', 'Sports', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 'https://www.ttryblhzn.com/', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', '590 NORTH VERMONT AVENUE', 'LOS ANGELES', 'CA', '90004', 'Paten Sebright', 'psebrightn@drupal.org'),
    ('Skyvu', 'Healthcare', 'http://dummyimage.com/226x100.png/ff4444/ffffff', 'https://www.exhdgeuxu.com/', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagi', '7351 ASSATEAGUE DRIVE, SUITE 370', 'JESSUP', 'MD', '20794', 'Welbie Clowser', 'wclowsero@quantcast.com'),
    ('Twitterlist', 'Entertainment', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 'https://www.slpuqjcnj.com/', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictu', 'CORNER OF NINTH AND IVINSON', 'LARAMIE', 'WY', '82071', 'Lou Norkutt', 'lnorkuttp@unblog.fr'),
    ('Meeveo', 'Entertainment', 'http://dummyimage.com/139x100.png/ff4444/ffffff', 'https://www.peusbyfyh.com/', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', '1 CUMBERLAND SQUARE', 'LEBANON', 'TN', '37087', 'Monte Dallicoat', 'mdallicoatq@freewebs.com'),
    ('Roodel', 'Entertainment', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', 'https://www.tjwqoivud.com/', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', '225 COLLEGE PARK DRIVE', 'WEATHERFORD', 'TX', '76086', 'Reinald Bullus', 'rbullusr@eepurl.com'),
    ('Youspan', 'Sports', 'http://dummyimage.com/188x100.png/dddddd/000000', 'https://www.tiepeovlh.com/', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', '40 JOURNAL SQUARE, 1ST FLOOR', 'JERSEY CITY', 'NJ', '7306', 'Rivkah Yeldon', 'ryeldons@illinois.edu'),
    ('Vimbo', 'Food & Drink', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff', 'https://www.lqyyrnrvv.com/', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '8731 PARK PLAZA DRIVE', 'SHREVEPORT', 'LA', '71105', 'Jaquelin Matuszak', 'jmatuszakt@huffingtonpost.com'),
    ('Tagtune', 'Food & Drink', 'http://dummyimage.com/197x100.png/5fa2dd/ffffff', 'https://www.dssnjbcea.com/', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '740 OAK HARBOR BLVD', 'SLIDELL', 'LA', '70458', 'Kane Keuntje', 'kkeuntjeu@cocolog-nifty.com'),
    ('Thoughtblab', 'Sports', 'http://dummyimage.com/137x100.png/ff4444/ffffff', 'https://www.saekcnuwz.com/', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '60 COLLEGE AVE', 'ANNAPOLIS', 'MD', '21401', 'Daniele Bricket', 'dbricketv@shutterfly.com'),
    ('Gigabox', 'Retail', 'http://dummyimage.com/167x100.png/ff4444/ffffff', 'https://www.vvkahzvmi.com/', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2323 LEXINGTON AVENUE', 'COLUMBUS', 'OH', '43211', 'Isobel Stanway', 'istanwayw@de.vu'),
    ('Realbridge', 'Healthcare', 'http://dummyimage.com/157x100.png/cc0000/ffffff', 'https://www.mzrjrxhtl.com/', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttito', '1380 METROPOLITAN AVENUE', 'BRONX', 'NY', '10462', 'Chantal Beavors', 'cbeavorsx@networksolutions.com'),
    ('Vinte', 'Healthcare', 'http://dummyimage.com/235x100.png/dddddd/000000', 'https://www.snoregmyc.com/', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum', '1133 15TH ST NW', 'WASHINGTON', 'DC', '20005', 'Eunice Pressman', 'epressmany@npr.org'),
    ('Divavu', 'Healthcare', 'http://dummyimage.com/177x100.png/dddddd/000000', 'https://www.untartnue.com/', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '710 WILLIAM CAREY PARKWAY', 'HATTIESBURG', 'MS', '39401', 'Blinni Peasee', 'bpeaseez@weather.com'),
    ('Devcast', 'Food & Drink', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', 'https://www.qiofranxi.com/', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '3500 SOUTHSIDE BLVD', 'JACKSONVILLE', 'FL', '32216', 'Wald Lowton', 'wlowton10@eepurl.com'),
    ('Livetube', 'Healthcare', 'http://dummyimage.com/236x100.png/dddddd/000000', 'https://www.xsdezaaqg.com/', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '646 SWIFT RD (ATTN: MASG)', 'WEST POINT', 'NY', '10996', 'Noel MacDonald', 'nmacdonald11@sun.com'),
    ('Leexo', 'Food & Drink', 'http://dummyimage.com/151x100.png/ff4444/ffffff', 'https://www.kjsrqbuvf.com/', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', '2309 EGGERT RD', 'TONAWANDA', 'NY', '14150', 'Rad Larret', 'rlarret12@cam.ac.uk'),
    ('Bubbletube', 'Healthcare', 'http://dummyimage.com/141x100.png/cc0000/ffffff', 'https://www.wgxstyjkf.com/', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper pu', '170 ELM ST', 'ENFIELD', 'CT', '6082', 'Ethel Thornthwaite', 'ethornthwaite13@wunderground.com'),
    ('Edgepulse', 'Healthcare', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff', 'https://www.lhmooruzn.com/', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '101 E 13TH ST', 'HOLLAND', 'MI', '49423', 'Katy Carnow', 'kcarnow14@indiegogo.com'),
    ('Yotz', 'Food & Drink', 'http://dummyimage.com/181x100.png/ff4444/ffffff', 'https://www.yyjlnecnf.com/', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit', '1409 WEST SOUTHERN AVENUE, SUITE 6', 'TEMPE', 'AZ', '85282', 'Joseito Rubinek', 'jrubinek15@ehow.com'),
    ('Zoonoodle', 'Entertainment', 'http://dummyimage.com/195x100.png/dddddd/000000', 'https://www.jsxippyiw.com/', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '8350 N TAMIAMI TRAIL', 'SARASOTA', 'FL', '34243', 'Dermot Neumann', 'dneumann16@phoca.cz'),
    ('Realmix', 'Retail', 'http://dummyimage.com/144x100.png/ff4444/ffffff', 'https://www.vbhzypyiy.com/', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '42ND & DEWEY AVE', 'OMAHA', 'NE', '68198', 'Frederigo Austwick', 'faustwick17@tamu.edu'),
    ('Flipopia', 'Food & Drink', 'http://dummyimage.com/121x100.png/dddddd/000000', 'https://www.bguqsydpb.com/', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', '1 COLLEGE AVENUE', 'WISE', 'VA', '24293', 'Wendel Meriton', 'wmeriton18@forbes.com'),
    ('Realcube', 'Retail', 'http://dummyimage.com/191x100.png/cc0000/ffffff', 'https://www.euaiatikc.com/', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, qua', '3200 WEST C ST', 'TORRINGTON', 'WY', '82240', 'Gregor MacVaugh', 'gmacvaugh19@stumbleupon.com'),
    ('Roombo', 'Retail', 'http://dummyimage.com/112x100.png/dddddd/000000', 'https://www.kjuckedcq.com/', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '1401 H STREET NW', 'WASHINGTON', 'DC', '20005', 'Claudio Lygo', 'clygo1a@indiegogo.com'),
    ('Browsebug', 'Retail', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 'https://www.msifaxetq.com/', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia ', '880 MAIN ST', 'WILLIAMSTOWN', 'MA', '1267', 'Terri-jo O Mullen', 'to1b@toplist.cz'),
    ('Feedfire', 'Healthcare', 'http://dummyimage.com/121x100.png/ff4444/ffffff', 'https://www.qhdfmmolh.com/', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', '2101 EAST BROADWAY AVENUE', 'BISMARCK', 'ND', '58501', 'Ramonda Boice', 'rboice1c@histats.com');

/*Table structure for table Deals */

DROP TABLE IF EXISTS Deals;

CREATE TABLE Deals (
    deal_ID INT PRIMARY KEY AUTO_INCREMENT,
    company_ID INT,
    open_to VARCHAR(10),
    description TEXT,
    deal_wage INT,
    duration VARCHAR(50),
    pmt_type VARCHAR(10),
    active BOOL,
    CONSTRAINT fk_03 FOREIGN KEY (company_ID)
        REFERENCES Companies(company_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Deals */

INSERT INTO Deals (
    company_ID,
    open_to,
    description,
    deal_wage,
    duration,
    pmt_type,
    active
)
VALUES
    (1,'players', 'Commercial Appearance', '1781', 'season', 'fixed', 1),
    (1,'players', 'Social Media Posting', '2704', 'fixed', 'fixed', 0),
    (1,'teams', 'Team Apparel', '8855', 'other', 'fixed', 1),
    (1,'teams', 'Commercial Appearance', '2348', 'season', 'variable', 0),
    (1,'teams', 'Brand Ambassador', '1037', 'fixed', 'fixed', 1),
    (1,'teams', 'Social Media Posting', '6319', 'other', 'variable', 0),
    (1,'teams', 'Brand Ambassador', '2398', 'season', 'fixed', 1),
    (1,'players', 'Event Attendance', '2644', 'fixed', 'variable', 0),
    (1,'players', 'Social Media Posting', '933', 'other', 'fixed', 1),
    (1,'teams', 'Event Attendance', '4792', 'season', 'fixed', 0),
    (1,'players', 'Sponsorship', '2636', 'fixed', 'fixed', 1),
    (1,'teams', 'Social Media Posting', '2894', 'other', 'fixed', 0),
    (1,'players', 'Post-Game Media', '5331', 'season', 'fixed', 1),
    (1,'players', 'Sponsorship', '5028', 'fixed', 'fixed', 0),
    (12,'teams', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum ru', '9380', 'other', 'variable', 1),
    (11,'teams', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2346', 'season', 'variable', 0),
    (10,'teams', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '4134', 'fixed', 'variable', 1),
    (9,'players', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '9266', 'other', 'variable', 0),
    (8,'teams', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '6883', 'season', 'fixed', 1),
    (7,'teams', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '3731', 'fixed', 'fixed', 0),
    (6,'players', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan torto', '3741', 'other', 'fixed', 1),
    (5,'players', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '1000', 'season', 'fixed', 0),
    (4,'players', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum ', '5872', 'fixed', 'variable', 1),
    (3,'teams', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', '5001', 'other', 'variable', 0),
    (2,'teams', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagi', '3187', 'season', 'variable', 1),
    (26,'teams', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictu', '3682', 'fixed', 'fixed', 0),
    (27,'teams', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', '2300', 'other', 'variable', 1),
    (28,'teams', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', '1075', 'season', 'variable', 0),
    (29,'teams', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', '4384', 'fixed', 'fixed', 1),
    (30,'teams', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '9150', 'other', 'variable', 0),
    (31,'players', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '3126', 'season', 'variable', 1),
    (32,'players', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '8496', 'fixed', 'fixed', 0),
    (33,'players', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '8582', 'other', 'variable', 1),
    (34,'teams', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttito', '6508', 'season', 'variable', 0),
    (35,'players', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum', '6542', 'fixed', 'fixed', 1),
    (36,'teams', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2830', 'other', 'fixed', 0),
    (37,'players', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '781', 'season', 'variable', 1),
    (38,'teams', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '3985', 'fixed', 'fixed', 0),
    (39,'teams', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', '458', 'other', 'fixed', 1),
    (40,'teams', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper pu', '7693', 'season', 'fixed', 0),
    (41,'players', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '9035', 'fixed', 'fixed', 1),
    (42,'players', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit', '4865', 'other', 'fixed', 0),
    (43,'players', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '8675', 'season', 'fixed', 1),
    (44,'players', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', '5575', 'fixed', 'variable', 0),
    (45,'teams', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', '2925', 'other', 'variable', 1),
    (46,'teams', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, qua', '1489', 'season', 'fixed', 0),
    (47,'teams', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '4861', 'fixed', 'variable', 1),
    (48,'teams', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia ', '1583', 'other', 'fixed', 0),
    (49,'teams', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', '2270', 'season', 'variable', 1),
    (50,'players', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '3810', 'fixed', 'fixed', 0);

/*Table structure for table Games */

DROP TABLE IF EXISTS Games;

CREATE TABLE Games (
    game_ID INT,
    player_ID INT,
    team_ID INT,
    game_date DATE,
    team_score INT,
    opp_score INT,
    win_loss CHAR(1),
    home_away CHAR(4),
    opponent_ID INT,
    PRIMARY KEY (game_id, player_id),
    CONSTRAINT fk_01 FOREIGN KEY (player_ID)
        REFERENCES Players(player_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_02 FOREIGN KEY (opponent_ID)
        REFERENCES Teams(team_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Games */

INSERT INTO Games (
    game_ID,
    player_ID,
    team_ID,
    game_date,
    team_score,
    opp_score,
    win_loss,
    home_away,
    opponent_ID
)
VALUES
    (1,1,1,'2022-11-10', '98', '39', 'W', 'away',33),
    (1,2,1,'2022-11-10', '98', '39', 'W', 'away',33),
    (1,3,1,'2022-11-10', '98', '39', 'W', 'away',33),
    (2,1,1,'2022-11-14', '83', '76', 'W', 'away',46),
    (2,2,1,'2022-11-14', '83', '76', 'W', 'away',46),
    (2,3,1,'2022-11-14', '83', '76', 'W', 'away',46),
    (3,1,1,'2022-11-20', '91', '69', 'W', 'away',19),
    (3,2,1,'2022-11-20', '91', '69', 'W', 'away',19),
    (3,3,1,'2022-11-20', '91', '69', 'W', 'away',19),
    (4,1,1,'2022-11-25', '78', '50', 'W', 'home',31),
    (4,2,1,'2022-11-25', '78', '50', 'W', 'home',31),
    (4,3,1,'2022-11-25', '78', '50', 'W', 'home',31),
    (5,1,1,'2022-11-27', '86', '79', 'W', 'home',15),
    (5,2,1,'2022-11-27', '86', '79', 'W', 'home',15),
    (5,3,1,'2022-11-27', '86', '79', 'W', 'home',15),
    (6,33,31,'2022-10-13', '92', '100', 'L', 'away',48),
    (6,14,12,'2022-9-20', '59', '85', 'L', 'home',22),
    (25,20,18,'2022-1-2', '98', '26', 'W', 'away',25),
    (15,15,13,'2022-10-5', '51', '26', 'W', 'home',48),
    (33,11,9,'2022-6-8', '68', '45', 'W', 'away',48),
    (8,32,30,'2022-5-29', '53', '43', 'W', 'away',17),
    (14,24,22,'2022-7-24', '33', '78', 'L', 'away',8),
    (39,28,26,'2022-7-7', '73', '100', 'L', 'home',11),
    (33,39,37,'2022-6-10', '36', '62', 'L', 'away',38),
    (35,8,6,'2021-12-18', '70', '24', 'W', 'home',29),
    (38,22,20,'2022-6-9', '43', '93', 'L', 'home',21),
    (21,46,44,'2022-9-17', '100', '41', 'W', 'away',12),
    (9,14,12,'2021-12-17', '62', '75', 'L', 'away',8),
    (37,12,10,'2022-10-19', '99', '83', 'W', 'away',17),
    (29,15,13,'2022-1-13', '22', '95', 'L', 'away',6),
    (19,21,19,'2022-3-10', '82', '95', 'L', 'away',25),
    (21,27,25,'2022-2-5', '75', '97', 'L', 'home',6),
    (33,41,39,'2022-1-13', '91', '25', 'W', 'home',46),
    (34,16,14,'2022-11-3', '50', '81', 'L', 'away',12),
    (19,40,38,'2022-2-13', '65', '21', 'W', 'home',46),
    (34,22,20,'2022-1-28', '46', '55', 'L', 'home',5),
    (7,50,48,'2021-11-25', '20', '93', 'L', 'home',13),
    (9,5,3,'2021-12-14', '24', '49', 'L', 'home',4),
    (22,52,50,'2022-1-28', '92', '72', 'W', 'away',5),
    (8,34,32,'2022-6-4', '56', '29', 'W', 'away',35),
    (20,37,35,'2022-9-21', '34', '93', 'L', 'away',41),
    (23,20,18,'2022-6-1', '62', '79', 'L', 'home',27),
    (19,22,20,'2022-5-25', '33', '88', 'L', 'away',41),
    (17,29,27,'2022-2-10', '74', '57', 'W', 'home',44),
    (34,28,26,'2022-1-20', '75', '28', 'W', 'home',25),
    (24,37,35,'2022-8-8', '65', '35', 'W', 'away',24),
    (13,50,48,'2022-9-21', '97', '56', 'W', 'home',5),
    (20,35,33,'2022-9-26', '94', '96', 'L', 'home',34),
    (16,12,10,'2022-4-15', '25', '22', 'W', 'home',40),
    (16,26,24,'2022-2-23', '21', '23', 'L', 'away',44),
    (16,9,7,'2022-7-20', '62', '48', 'W', 'home',37),
    (7,36,34,'2022-9-30', '53', '68', 'L', 'home',44),
    (37,46,44,'2022-1-21', '45', '36', 'W', 'home',11),
    (22,11,9,'2022-2-28', '93', '55', 'W', 'home',35),
    (18,7,5,'2022-7-8', '65', '58', 'W', 'home',20),
    (24,4,2,'2022-3-22', '27', '86', 'L', 'away',50),
    (22,38,36,'2022-6-8', '81', '94', 'L', 'away',41),
    (28,28,26,'2022-3-31', '69', '91', 'L', 'home',15),
    (36,30,28,'2022-7-2', '89', '99', 'L', 'away',38),
    (29,42,40,'2022-3-24', '33', '56', 'L', 'home',45),
    (38,36,34,'2022-1-30', '27', '75', 'L', 'home',2),
    (35,21,19,'2022-8-28', '20', '97', 'L', 'home',8),
    (19,52,50,'2022-1-4', '65', '48', 'W', 'home',46),
    (37,49,47,'2022-7-22', '57', '66', 'L', 'away',27);

/*Table structure for table Stats */

DROP TABLE IF EXISTS Stats;

CREATE TABLE Stats (
    `game_ID` INT,
    `player_ID` INT,
    `MIN` INT,
    `PTS` INT,
    `REB` INT,
    `AST` INT,
    `STL` INT,
    `BLK` INT,
    `TOS` INT,
    `FG%` INT,
    `FT%` INT,
    `3P%` INT,
    `PF` INT,
    CONSTRAINT fk_06 FOREIGN KEY (player_ID)
        REFERENCES Players(player_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_16 FOREIGN KEY (game_id, player_id)
        REFERENCES Games(game_id, player_id)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table Stats */

INSERT INTO Stats (
    `game_ID`,
    `player_ID`,
    `MIN`,
    `PTS`,
    `REB`,
    `AST`,
    `STL`,
    `BLK`,
    `TOS`,
    `FG%`,
    `FT%`,
    `3P%`,
    `PF`
)
VALUES
    (1,1,'31', '26', '1', '4', '6', '0', '1', '52.9', '100', '12.5', '1'),
    (1,2,'29', '14', '12', '0', '2', '2', '2', '57.1', '100', '0', '3'),
    (1,3,'27', '3', '0', '7', '6', '1', '2', '33.3', '0', '50', '3'),
    (2,1,'38', '32', '1', '4', '1', '0', '7', '61.9', '100', '57.1', '3'),
    (2,2,'35', '11', '8', '1', '0', '0', '3', '55.6', '25', '0', '4'),
    (2,3,'38', '6', '1', '9', '3', '0', '3', '66.7', '50', '100', '3'),
    (3,1,'40', '32', '2', '0', '2', '1', '1', '50', '100', '42.9', '2'),
    (3,2,'36', '20', '12', '4', '1', '0', '4', '61.5', '100', '0', '3'),
    (3,3,'39', '3', '6', '15', '2', '0', '3', '33.3', '0', '33.3', '2'),
    (4,1,'33', '14', '2', '3', '1', '0', '1', '46.2', '0', '66.7', '1'),
    (4,2,'22', '17', '11', '3', '1', '2', '3', '75', '83.3', '0', '3'),
    (4,3,'36', '6', '6', '10', '2', '0', '1', '33.3', '100', '0', '0'),
    (5,1,'40', '24', '3', '4', '0', '0', '0', '52.6', '0', '40', '1'),
    (5,2,'35', '20', '13', '6', '1', '1', '2', '62.5', '0', '0', '2'),
    (5,3,'40', '2', '3', '13', '1', '0', '6', '33.3', '0', '0', '2'),
    (8,34,'17', '15', '37', '1', '11', '37', '23', '91.56', '87.77', '51.94', '13'),
    (20,35,'5', '0', '14', '39', '39', '18', '28', '52.59', '22.17', '64.82', '8'),
    (15,15,'17', '12', '38', '1', '31', '49', '38', '99.38', '1.93', '87.06', '0'),
    (8,34,'9', '11', '2', '43', '45', '38', '40', '55.79', '35.64', '80.12', '46'),
    (33,41,'20', '29', '8', '29', '37', '50', '49', '5.65', '68.79', '77.01', '46'),
    (19,40,'29', '37', '41', '20', '21', '11', '16', '47.44', '92.76', '60.81', '10'),
    (16,26,'44', '8', '30', '19', '46', '4', '39', '38.28', '1.11', '23.4', '22'),
    (20,35,'44', '20', '34', '43', '48', '22', '39', '6.05', '30.66', '9.64', '41'),
    (7,36,'37', '27', '4', '28', '17', '20', '38', '11.45', '67.71', '88.66', '43'),
    (6,14,'38', '34', '47', '18', '9', '27', '8', '69.86', '30.13', '40.87', '22'),
    (22,38,'0', '9', '1', '10', '13', '8', '31', '43.92', '52.7', '92.93', '30'),
    (6,33,'12', '35', '20', '47', '5', '11', '24', '67.58', '43.59', '11.75', '22'),
    (19,21,'9', '3', '47', '4', '40', '10', '16', '48.26', '30.09', '73.52', '38'),
    (36,30,'46', '30', '11', '49', '33', '50', '1', '75.19', '26.57', '63.68', '12'),
    (8,32,'38', '31', '25', '28', '46', '48', '45', '5.44', '27.49', '56.77', '18'),
    (7,36,'10', '30', '24', '25', '47', '1', '12', '39.25', '27.65', '3.9', '1'),
    (33,39,'36', '38', '31', '26', '38', '22', '35', '86.14', '73.07', '84.46', '9'),
    (8,34,'24', '30', '7', '44', '49', '34', '18', '91.06', '88.82', '79.84', '17'),
    (16,26,'39', '30', '38', '49', '32', '9', '38', '30.17', '24.94', '96.21', '28'),
    (21,27,'35', '34', '41', '14', '22', '47', '15', '5.45', '30.47', '61.17', '44'),
    (39,28,'42', '37', '6', '10', '46', '36', '37', '25.14', '1.81', '84.56', '35'),
    (17,29,'40', '27', '20', '3', '7', '45', '33', '69.02', '33.16', '83.65', '15'),
    (9,5,'20', '28', '46', '40', '30', '42', '31', '34.06', '97.82', '71.88', '7'),
    (8,34,'36', '14', '44', '5', '19', '50', '9', '51.26', '89.16', '43.89', '16'),
    (38,22,'37', '12', '48', '22', '32', '15', '0', '45.13', '27.61', '70.89', '46'),
    (14,24,'4', '40', '10', '16', '27', '28', '47', '54.99', '64.03', '81.53', '33'),
    (9,5,'6', '3', '13', '0', '28', '42', '5', '76.15', '47.04', '2.52', '31'),
    (16,9,'6', '3', '4', '29', '2', '29', '9', '46.06', '41', '82.43', '26'),
    (8,32,'5', '49', '43', '41', '4', '33', '16', '21.44', '68.77', '87.18', '7'),
    (20,35,'1', '21', '35', '37', '47', '48', '17', '61.92', '35.28', '68.87', '15'),
    (16,26,'4', '33', '40', '49', '12', '37', '15', '83.08', '27.45', '20.36', '17'),
    (6,33,'5', '36', '32', '17', '49', '19', '42', '2.03', '30.76', '82.14', '30'),
    (7,36,'17', '11', '43', '1', '18', '22', '13', '48.86', '20.87', '63.65', '44'),
    (20,37,'17', '20', '31', '27', '26', '35', '37', '0.62', '80.59', '16.1', '12'),
    (33,41,'14', '1', '28', '7', '45', '3', '47', '40.58', '8.49', '82.59', '27'),
    (39,28,'13', '22', '23', '46', '11', '21', '41', '48.21', '45.17', '32.16', '12'),
    (25,20,'48', '30', '5', '38', '42', '20', '32', '49.27', '13.98', '68.21', '26'),
    (19,21,'26', '46', '42', '12', '6', '32', '50', '77.35', '86.71', '44.32', '29'),
    (38,22,'9', '4', '3', '21', '47', '7', '12', '37.2', '8.46', '2.36', '6'),
    (14,24,'45', '34', '28', '11', '35', '13', '22', '92.1', '58.84', '0.18', '47'),
    (35,8,'9', '17', '8', '10', '33', '21', '3', '52.56', '71.06', '14.65', '12'),
    (16,9,'8', '21', '44', '5', '49', '31', '9', '20.6', '70.41', '73.85', '31'),
    (37,12,'17', '33', '1', '38', '20', '4', '3', '52.71', '22.72', '90.94', '15'),
    (33,11,'45', '39', '21', '2', '18', '49', '32', '74.22', '22.45', '35.94', '28'),
    (6,14,'46', '37', '42', '49', '11', '24', '0', '30.91', '24.1', '45.53', '11'),
    (21,46,'42', '28', '41', '0', '19', '44', '39', '91.48', '58.3', '91.65', '18'),
    (37,49,'22', '37', '0', '2', '7', '49', '9', '57.24', '60.2', '22.11', '36'),
    (7,50,'17', '1', '10', '9', '48', '31', '38', '82.15', '82.57', '83.32', '49'),
    (6,14,'34', '43', '37', '28', '3', '47', '41', '69.49', '77.73', '62.53', '15');

/*Table structure for table p_messages */

DROP TABLE IF EXISTS p_messages;

CREATE TABLE p_messages (
    company_ID INT,
    player_ID INT,
    contents TEXT,
    sent_timestamp DATETIME,
    CONSTRAINT fk_07 FOREIGN KEY (company_ID)
        REFERENCES Companies(company_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_08 FOREIGN KEY (player_ID)
        REFERENCES Players(player_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table p_messages */

INSERT INTO p_messages (
    company_ID,
    player_ID,
    contents,
    sent_timestamp
)
VALUES
    (1,1,"Hey Azzi -- I was looking at your profile and think you'd be a great fit with our company.", '2022-11-12 07:11:00'),
    (2,1,'Azzi! Great game the other day. Really happy to see you out there scoring points. Keep up the good work and we may be talking a lot more in the future.', '2022-11-27 07:11:00'),
    (3,1,"Hi Azzi. I encourage you to look deeper into our company and consider applying to some of our open deals. We love the way you're playing. Let me know what you think.", '2022-11-30 07:11:00'),
    (1,2,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nib', '2022-06-17 16:43:00'),
    (2,2,'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', '2022-11-08 01:10:00'),
    (3,2,'Proin eu mi.', '2022-10-05 00:19:00'),
    (4,3,'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat ', '2021-11-28 18:18:00'),
    (1,3,'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', '2022-03-09 03:55:00'),
    (2,3,'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022-10-14 09:17:00'),
    (3,1,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibu', '2022-09-13 22:09:00'),
    (4,3,'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', '2022-11-08 21:46:00'),
    (1,4,'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '2022-05-11 19:35:00'),
    (2,2,'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022-06-18 09:14:00'),
    (3,6,'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget', '2021-11-28 16:03:00'),
    (4,8,'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '44512.2993055556');


/*Table structure for table t_messages */

DROP TABLE IF EXISTS t_messages;

CREATE TABLE t_messages (
    company_ID INT,
    team_ID INT,
    contents TEXT,
    sent_timestamp DATETIME,
    CONSTRAINT fk_09 FOREIGN KEY (company_ID)
        REFERENCES Companies(company_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_10 FOREIGN KEY (team_ID)
        REFERENCES Teams(team_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table t_messages */

INSERT INTO t_messages (
    company_ID,
    team_ID,
    contents,
    sent_timestamp
)
VALUES
    (1,1,'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenea', '2022-03-12 04:52:00'),
    (2,1,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '2021-12-31 03:01:00'),
    (3,1,'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum ru', '2022-10-02 17:28:00'),
    (1,1,'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2022-11-02 13:11:00'),
    (2,1,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022-08-18 17:35:00'),
    (3,1,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '2022-01-26 00:57:00'),
    (4,1,'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2021-11-30 01:54:00'),
    (1,32,'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '2022-01-25 17:37:00'),
    (2,34,'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan torto', '2022-01-11 13:58:00'),
    (3,2,'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '2022-06-21 17:59:00'),
    (4,3,'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum ', '2022-11-05 16:26:00'),
    (1,4,'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', '2022-04-13 15:44:00');

/*Table structure for table p_app */

DROP TABLE IF EXISTS p_app;

CREATE TABLE p_app (
    deal_ID INT,
    player_ID INT,
    status TEXT,
    app_timestamp DATETIME,
    CONSTRAINT fk_11 FOREIGN KEY (deal_ID)
        REFERENCES Deals(deal_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_12 FOREIGN KEY (player_ID)
        REFERENCES Players(player_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table p_app */

INSERT INTO p_app (
    deal_ID,
    player_ID,
    status,
    app_timestamp
)
VALUES
    (1,1,'Offer Made', '2022-11-12 07:11:00'),
    (8,1,'Offer Accepted', '2022-11-27 07:11:00'),
    (9,1,'Applied', '2022-11-30 07:11:00'),
    (11,2,'Offer Made', '2022-05-29 15:18:00'),
    (13,2,'Offer Accepted', '2022-03-02 02:10:00'),
    (14,2,'Declined', '2022-08-02 22:18:00'),
    (18,3,'Applied', '2022-05-08 23:20:00'),
    (21,3,'Offer Made', '2022-06-13 08:29:00'),
    (22,3,'Offer Accepted', '2022-01-19 12:12:00'),
    (23,1,'Declined', '2022-09-25 17:26:00'),
    (31,4,'Applied', '2022-01-30 05:46:00'),
    (32,5,'Offer Made', '2022-01-28 02:02:00'),
    (33,6,'Offer Accepted', '2022-08-11 09:50:00');

/*Table structure for table t_app */

DROP TABLE IF EXISTS t_app;

CREATE TABLE t_app (
    deal_ID INT,
    team_ID INT,
    status TEXT,
    app_timestamp DATETIME,
    CONSTRAINT fk_13 FOREIGN KEY (deal_ID)
        REFERENCES Deals(deal_ID)
        ON UPDATE cascade ON DELETE restrict,
    CONSTRAINT fk_14 FOREIGN KEY (team_ID)
        REFERENCES Teams(team_ID)
        ON UPDATE cascade ON DELETE restrict
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table t_app */

INSERT INTO t_app (
    deal_ID,
    team_ID,
    status,
    app_timestamp
)
VALUES
    (3,1,'Offer Made', '2022-01-12 16:18:00'),
    (4,1,'Offer Accepted', '2022-08-25 07:46:00'),
    (5,1,'Declined', '2022-10-11 03:51:00'),
    (6,1,'Applied', '2022-09-25 11:26:00'),
    (7,34,'Offer Made', '2022-06-23 04:55:00'),
    (10,32,'Offer Accepted', '2021-12-20 00:12:00'),
    (17,23,'Declined', '2022-01-30 19:52:00'),
    (19,24,'Applied', '2022-08-28 16:39:00'),
    (20,27,'Offer Made', '2021-11-30 23:07:00'),
    (24,30,'Offer Accepted', '2022-01-08 06:37:00'),
    (25,37,'Declined', '2022-01-18 00:36:00'),
    (26,34,'Declined', '2022-07-18 01:03:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;