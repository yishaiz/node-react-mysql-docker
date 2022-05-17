-- create db
CREATE DATABASE IF NOT EXISTS excercise;
-- CREATE DATABASE excercise;
use excercise;


-- dictionary tables

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` INT AUTO_INCREMENT PRIMARY KEY ,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `countries` (
  `id` INT AUTO_INCREMENT  PRIMARY KEY,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `credit_card_types` (
  `id` INT AUTO_INCREMENT  PRIMARY KEY,
  `name` varchar(255)  NOT NULL 
) ENGINE=InnoDB;

-- main tables

CREATE TABLE IF NOT EXISTS `customers` (
  `id` varchar(255) PRIMARY KEY,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `country_id` INT, -- should be foreign key
  `city` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
   FOREIGN KEY (country_id) REFERENCES countries(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` varchar(255) PRIMARY KEY,
  `customer_id` varchar(255) NOT NULL,-- should be foreign key
  `total_price` nvarchar(50) NOT NULL,
  `currency_id` INT NOT NULL, -- should be foreign key
  `credit_card_type_id` INT NOT NULL, -- should be foreign key
  `credit_card_number` varchar(255) NOT NULL,
   FOREIGN KEY (customer_id) REFERENCES customers(id),
   FOREIGN KEY (currency_id) REFERENCES currencies(id),
   FOREIGN KEY (credit_card_type_id) REFERENCES credit_card_types(id),
  `date` DATETIME DEFAULT NOW(),
  `ts` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  ) ENGINE=InnoDB;

-- insert seed data

 


 
INSERT INTO currencies (name) VALUES ('NIO'), ('IDR'), ('CUP'), ('CNY'), ('EUR'), ('AFN'), ('UZS'), ('TJS'), ('PEN'), ('PLN'), ('PHP'), ('BRL'), ('NGN'), ('KPW'), ('SEK'), ('CZK'), ('UAH'), ('RUB'), ('AMD'), ('JPY'), ('MXN'), ('BGN'), ('XOF'), ('HRK'), ('MUR'), ('ILS'), ('MYR'), ('BYR'), ('HUF'), ('COP'), ('CAD'), ('USD'), ('KZT'), ('DKK'), ('CDF'), ('GBP'), ('MGA'), ('CRC'), ('MKD'), ('EGP'), ('ZMW'), ('KES'), ('AUD'), ('BOB'), ('ALL'), ('SLL'), ('DOP'), ('THB'), ('ARS'), ('ZAR'), ('CLP'), ('MDL'), ('VND'), ('GTQ'), ('GMD'), ('PKR'), ('MNT'), ('SYP'), ('MMK'), ('TMT'), ('XPF'), ('JOD'), ('MRO'), ('SOS'), ('UYU'), ('YER'), ('KRW'), ('HTG'), ('IRR'), ('IQD'), ('RSD'), ('BAM'), ('WST'), ('VEF'), ('PAB'), ('NOK'), ('NZD'), ('KHR'), ('UGX'), ('TZS'), ('XAF'), ('ETB'), ('LKR'), ('TND'), ('TTD'), ('LTL'), ('TWD'), ('MAD'), ('BWP'), ('GNF'), ('KWD'), ('PYG'), ('HNL'), ('JMD'), ('GHS'), ('SAR');
 
INSERT INTO countries (name) VALUES ('Nicaragua'), ('Indonesia'), ('Cuba'), ('China'), ('Cyprus'), ('Afghanistan'), ('Uzbekistan'), ('Tajikistan'), ('Peru'), ('Luxembourg'), ('Poland'), ('Philippines'), ('Brazil'), ('Nigeria'), ('North Korea'), ('Sweden'), ('France'), ('Czech Republic'), ('Ukraine'), ('Netherlands'), ('Russia'), ('Armenia'), ('Japan'), ('Mexico'), ('Bulgaria'), ('Senegal'), ('Greece'), ('Croatia'), ('Mauritius'), ('Palestinian Territory'), ('Malaysia'), ('Finland'), ('Belarus'), ('Hungary'), ('Colombia'), ('Canada'), ('Estonia'), ('United States'), ('Kazakhstan'), ('Denmark'), ('Democratic Republic of the Congo'), ('Portugal'), ('United Kingdom'), ('Madagascar'), ('Latvia'), ('Costa Rica'), ('El Salvador'), ('Macedonia'), ('Egypt'), ('Zambia'), ('Kenya'), ('Kosovo'), ('Australia'), ('Bolivia'), ('Albania'), ('Sierra Leone'), ('Dominican Republic'), ('Thailand'), ('Argentina'), ('South Africa'), ('Niger'), ('Chile'), ('Moldova'), ('Vietnam'), ('Germany'), ('Guatemala'), ('Gambia'), ('Pakistan'), ('Mongolia'), ('Slovenia'), ('Syria'), ('Malta'), ('Myanmar'), ('Turkmenistan'), ('New Caledonia'), ('Jordan'), ('Mauritania'), ('Burkina Faso'), ('Somalia'), ('Uruguay'), ('Yemen'), ('South Korea'), ('French Polynesia'), ('Haiti'), ('Iran'), ('Iraq'), ('Serbia'), ('Bosnia and Herzegovina'), ('Samoa'), ('Montenegro'), ('Venezuela'), ('Panama'), ('Norway'), ('Pitcairn'), ('Cambodia'), ('Uganda'), ('Tanzania'), ('Cameroon'), ('Ethiopia'), ('Sri Lanka'), ('Tunisia'), ('Ecuador'), ('Trinidad and Tobago'), ('Lithuania'), ('Taiwan'), ('Italy'), ('Morocco'), ('New Zealand'), ('Botswana'), ('Guinea'), ('Kuwait'), ('Paraguay'), ('Spain'), ('Benin'), ('Republic of the Congo'), ('Ireland'), ('Honduras'), ('Jamaica'), ('Ghana'), ('Aland Islands'), ('Chad'), ('Saudi Arabia');
 
INSERT INTO credit_card_types (name) VALUES ('mastercard'), ('visa-electron'), ('jcb'), ('visa'), ('switch'), ('maestro'), ('diners-club-enroute'), ('bankcard'), ('americanexpress'), ('diners-club-carte-blanche'), ('china-unionpay'), ('solo'), ('instapayment'), ('laser'), ('diners-club-international'), ('diners-club-us-ca');
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('813-86-3131','Benedikt','Abberley','babberley0@artisteer.com','Male','118','San Jorge','415 Green Lane','887-564-6105' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('387-63-2772','Ellwood','Speirs','espeirs1@mediafire.com','Male','65','Kiarajangkung','4368 Sloan Trail','660-819-9883' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('500-47-2929','Gray','Slucock','gslucock2@wufoo.com','Male','13','Vertientes','01195 Laurel Drive','689-147-8731' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('183-06-7195','Felicia','Starbucke','fstarbucke3@mashable.com','Female','41','Shijing','90119 Grasskamp Parkway','312-874-7275' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('249-75-0095','Ewell','Hazzard','ehazzard4@istockphoto.com','Male','21','Kíti','45987 8th Road','479-392-7059' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('361-48-2924','Kristoffer','Portwain','kportwain5@mashable.com','Male','40','Shahrak','3 Hallows Point','979-372-3737' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('138-07-4256','Vivian','Everleigh','veverleigh6@deviantart.com','Female','100','Navoiy','5496 Welch Junction','981-908-1763' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('879-81-8422','Blakelee','Kedward','bkedward7@hatena.ne.jp','Female','39','Proletar','17311 Maple Court','383-963-1677' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('321-12-3355','Wilfrid','Paradine','wparadine8@whitehouse.gov','Male','18','Acobamba','4335 Glacier Hill Park','997-221-1933' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('790-68-2030','Monah','Sneath','msneath9@ed.gov','Female','92','Solok Timur','56284 Holy Cross Plaza','952-547-2943' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('855-30-5168','Aldus','Furby','afurbya@abc.net.au','Male','55','Mamer','0 Armistice Avenue','566-805-8767' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('668-49-2538','Fidole','Dyshart','fdyshartb@vkontakte.ru','Male','4','Fucun','6 Eastlawn Plaza','310-292-8532' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('526-21-4495','Gusta','Kemme','gkemmec@google.nl','Female','53','Widuchowa','7 Jana Circle','112-154-0476' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('293-03-5451','Lem','Bremond','lbremondd@cbslocal.com','Male','77','Mangarine','881 Graedel Pass','410-185-6675' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('282-79-4320','Misti','Derricoat','mderricoate@canalblog.com','Female','17','Barcarena','60 Starling Pass','578-566-6838' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('225-02-2575','Elias','Delle','edellef@icq.com','Male','79','Sofo-Birnin-Gwari','24 Sycamore Terrace','638-297-7522' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('154-88-2507','Torey','Beddow','tbeddowg@digg.com','Male','111','Namp’o','497 Fieldstone Place','904-393-6436' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-89-8091','Goldi','Gavrielly','ggavriellyh@homestead.com','Female','61','Enskede','996 Nevada Pass','563-472-1311' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('356-57-1102','Anatollo','Wetherburn','awetherburni@printfriendly.com','Male','36','Batuidu','8 Killdeer Crossing','262-274-0140' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('715-98-2609','Fidela','Bedder','fbedderj@photobucket.com','Female','114','Nantes','0174 Cherokee Street','102-274-7646' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('299-99-4088','Danette','McMeeking','dmcmeekingk@webnode.com','Female','61','Muñoz East','12 Marcy Crossing','722-959-1322' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('619-41-6615','Donnie','Wheeler','dwheelerl@wix.com','Male','26','Jingshan','951 Upham Place','946-311-1639' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('585-80-1964','Chev','Thornton','cthorntonm@boston.com','Male','50','Bar-le-Duc','4 Golf Course Crossing','378-464-0897' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('453-42-3420','Thalia','Karpf','tkarpfn@123-reg.co.uk','Female','51','Smołdzino','0 Reinke Hill','795-965-9305' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('104-39-2084','Ardyth','Simmell','asimmello@prlog.org','Female','66','Macun','6 Texas Hill','472-245-9398' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('824-47-1326','Far','Lagden','flagdenp@umich.edu','Male','19','Sumberan','497 Algoma Terrace','184-466-4098' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('422-58-4324','Adolphus','Leathe','aleatheq@linkedin.com','Male','81','Hovorany','1 Dwight Junction','289-768-8652' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('635-49-4873','Hannah','Gorcke','hgorcker@xing.com','Female','101','Viline','9 Spohn Drive','140-618-7342' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('252-28-0186','Cinnamon','Gilling','cgillings@dion.ne.jp','Female','13','Lelystad','05507 Kinsman Lane','932-776-0073' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('882-55-8389','Frederigo','Badsworth','fbadswortht@barnesandnoble.com','Male','34','Altan Emel','94374 Parkside Pass','832-797-5025' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('811-24-1800','Franchot','Fallawe','ffallaweu@dell.com','Male','87','Mayma','6 Carioca Avenue','355-155-6386' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('380-74-9214','Flori','Brayley','fbrayleyv@github.io','Female','42','Zhangcun','295 Summit Park','697-425-9049' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('245-26-7207','Viki','Kighly','vkighlyw@eventbrite.com','Female','45','Karanlukh','29056 Rockefeller Crossing','547-586-1422' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-61-2353','Zita','Mabbott','zmabbottx@tripod.com','Female','118','Sangkalputung','394 Elka Trail','317-789-9953' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('109-37-9717','Leta','Parkman','lparkmany@discovery.com','Female','95','Xiaoyan','13 Norway Maple Terrace','242-484-8211' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('654-90-1399','Eunice','Gerner','egernerz@usatoday.com','Female','62','Freguesia do Ribeirao da Ilha','6852 Northland Hill','266-533-0335' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('467-44-3689','Jarred','Binyon','jbinyon10@state.tx.us','Male','31','Muroran','05354 Nova Hill','181-483-1989' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('578-32-8167','Candice','Cordelle','ccordelle11@icio.us','Female','88','Toupopu','7807 Luster Circle','119-409-3890' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('392-51-5624','Tanney','O'Corren','tocorren12@163.com','Male','33','Cipari','56 Alpine Trail','726-206-5317' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('391-08-2278','Odette','Ernke','oernke13@opensource.org','Female','52','Marseille','24849 Morrow Drive','432-413-7272' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('242-79-5337','Thomasina','Kynge','tkynge14@springer.com','Female','50','Dawe','90 Bunker Hill Way','343-686-6276' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('496-08-0171','Tina','Blackler','tblackler15@usgs.gov','Female','27','Benito Juarez','0289 Trailsway Court','366-332-7135' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('416-92-8912','Edin','McGarvie','emcgarvie16@nydailynews.com','Female','47','Xiaohe','54494 Maryland Way','531-472-2818' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('659-52-9223','Fremont','Ambrosoni','fambrosoni17@usgs.gov','Male','40','Peshtera','1318 Melby Junction','640-653-6421' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('190-88-9924','Gussy','St Pierre','gstpierre18@163.com','Female','27','Denglong','19 Old Shore Court','133-374-5460' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('198-18-0939','Lori','Kernaghan','lkernaghan19@123-reg.co.uk','Female','118','Bajia','756 Tennyson Lane','694-801-7840' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('869-03-0902','Vachel','Yakobowitz','vyakobowitz1a@tiny.cc','Male','97','Polel Diaoubé','86 Pleasure Lane','211-892-5499' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('215-75-1068','Theo','Corona','tcorona1b@technorati.com','Male','106','Umanday Centro','71 Stoughton Drive','931-115-8339' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('784-97-6070','Baird','Ivankov','bivankov1c@cargocollective.com','Male','54','Svorónos','34760 Karstens Crossing','636-953-1189' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('441-99-6890','Robby','Rishman','rrishman1d@godaddy.com','Male','30','Aleksandrovka','7 Aberg Crossing','714-983-1132' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('101-47-4605','Florette','Mechi','fmechi1e@hatena.ne.jp','Female','2','Vavozh','88829 Melrose Road','472-148-2895' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('340-13-2068','Lewes','Hurton','lhurton1f@nymag.com','Male','33','Borucin','2497 Nelson Trail','233-445-6800' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('603-96-9121','Kristan','Tart','ktart1g@constantcontact.com','Female','105','Dubrava','7261 Sunnyside Crossing','581-470-5120' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('857-03-8238','Dody','Hambers','dhambers1h@github.com','Female','51','Pailles','1178 Jenna Trail','319-215-4202' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('477-48-7224','Gasparo','O' Dooley','godooley1i@reuters.com','Male','19','Sezimovo Ústí','75 Red Cloud Trail','651-780-6411' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('433-21-8546','Logan','Baldin','lbaldin1j@t-online.de','Male','49','Cienfuegos','64129 Bowman Plaza','877-481-1996' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('710-10-8358','Wainwright','Friman','wfriman1k@tamu.edu','Male','3','Västra Frölunda','59 Loeprich Point','266-788-5750' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('823-41-1958','Mollee','Marxsen','mmarxsen1l@narod.ru','Female','120','Bardalah','291 Blackbird Hill','933-437-2288' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('847-15-1565','Jacki','Jahnisch','jjahnisch1m@weather.com','Female','51','João Pinheiro','12755 Meadow Valley Hill','777-273-2362' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('598-23-0538','Claudell','Rhymer','crhymer1n@free.fr','Male','26','Semamung','2753 Novick Parkway','819-964-8684' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('788-15-8280','Marietta','Kleiner','mkleiner1o@cdc.gov','Male','107','Johor Bahru','619 Hooker Place','851-574-4667' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('676-90-8566','Kellsie','Halliburton','khalliburton1p@51.la','Female','75','Dazhou','8 Starling Way','950-919-3717' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('723-63-2201','Archaimbaud','Allcoat','aallcoat1q@instagram.com','Male','74','Fukuoka-shi','95352 Forest Run Junction','758-453-2884' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('673-37-9796','Aldridge','Seacombe','aseacombe1r@moonfruit.com','Male','31','Marttila','738 Scoville Road','929-402-5130' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('446-62-9769','Rozalin','Ohanessian','rohanessian1s@infoseek.co.jp','Female','86','Mazyr','7437 Manley Place','329-422-5003' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('354-95-0578','Beverlee','Heephy','bheephy1t@cafepress.com','Female','15','Sarapul','9939 1st Alley','746-546-5758' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('514-35-7427','Dennet','Durnall','ddurnall1u@dedecms.com','Male','111','Győr','55686 Towne Drive','256-478-3028' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('576-17-0478','Drona','Berney','dberney1v@adobe.com','Female','26','Rogowo','1853 Katie Trail','495-192-7475' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('571-82-5712','Gwyn','Manneville','gmanneville1w@ted.com','Female','77','Carmen de Viboral','4 Pearson Park','504-585-2615' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('141-74-4819','Orion','Bank','obank1x@soundcloud.com','Male','95','Amherst','4866 Milwaukee Way','905-944-5354' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('490-36-6784','Prudy','Ramshay','pramshay1y@salon.com','Female','36','Sumberagung','424 Artisan Street','660-173-5687' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('816-37-6296','Wyndham','Nickoll','wnickoll1z@tamu.edu','Male','13','Lomme','6160 Dahle Lane','876-398-7828' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('728-88-0155','Chandal','Grinstead','cgrinstead20@multiply.com','Female','66','Hualongyan','7749 Carpenter Plaza','931-136-2813' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('243-10-0075','Vicki','Inglese','vinglese21@ed.gov','Female','54','Viçosa','8708 Calypso Road','738-189-4816' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('186-21-8672','Janelle','Domm','jdomm22@apple.com','Female','119','Otan Aiyegbaju','9960 Cardinal Pass','446-114-1876' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('829-64-1867','Valencia','Le Sieur','vlesieur23@youku.com','Female','3','Narva-Jõesuu','2067 2nd Circle','427-172-8255' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('207-11-9311','Bradley','Driscoll','bdriscoll24@baidu.com','Male','98','Cool űrhajó','1 Monica Court','741-728-0289' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('468-74-4614','Ferd','Mendes','fmendes25@360.cn','Male','81','Revolucion','503 Mosinee Junction','626-270-1520' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('357-93-0859','Dulsea','Dewi','ddewi26@deviantart.com','Female','64','Khallat ad Dār','6 Barby Road','715-799-7151' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('704-90-6708','Ondrea','Cowlas','ocowlas27@census.gov','Female','106','Haukivuori','58 Amoth Center','541-299-7386' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('245-95-3571','Myriam','De Laci','mdelaci28@cornell.edu','Female','24','San Diego','5863 Petterle Court','619-454-6418' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('566-47-6346','Kristien','Parkeson','kparkeson29@bloglines.com','Female','46','Khromtau','8 Blaine Point','930-397-9416' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('186-71-8034','Elisabet','Tate','etate2a@purevolume.com','Female','30','København','7395 Goodland Crossing','137-645-6231' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('611-45-2367','Courtnay','Pithie','cpithie2b@etsy.com','Male','60','Luna','225 Loeprich Court','205-486-7698' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('524-32-5348','Esteban','Chaster','echaster2c@state.tx.us','Male','100','Clervaux','3377 Larry Street','777-580-4076' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('134-91-4037','Alleen','Toffler','atoffler2d@ibm.com','Female','18','Sumenep','61 Rusk Street','918-885-4119' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('375-41-1497','Garrik','Chinge de Hals','gchingedehals2e@biblegateway.com','Male','58','Boende','922 Mayfield Alley','848-401-7118' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('610-44-0839','Fritz','Benedit','fbenedit2f@yahoo.com','Male','75','Parnamirim','35 Corscot Place','734-968-7517' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('195-45-9542','Bev','McIlhone','bmcilhone2g@nymag.com','Female','62','Arcos de Valdevez','07547 Riverside Road','923-238-5380' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('411-13-5197','Eudora','McSparran','emcsparran2h@va.gov','Female','47','Mandikbatu','94005 Atwood Terrace','226-613-4423' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('446-99-0661','Waverley','Jedrasik','wjedrasik2i@blogger.com','Male','98','Sinacaban','5 Holmberg Court','672-774-1030' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('333-23-3570','Sterne','Trusty','strusty2j@biblegateway.com','Male','36','Cayur','641 Riverside Park','950-393-6364' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('763-85-6072','Bil','Davitti','bdavitti2k@msn.com','Male','70','Karangturi','615 Helena Alley','458-769-3920' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('230-57-7204','Bent','Guiel','bguiel2l@adobe.com','Male','35','Pueblo Nuevo','414 Badeau Lane','101-346-9166' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('898-65-0442','Fredrika','Dalzell','fdalzell2m@theguardian.com','Female','70','Olympia','6816 Annamark Junction','360-811-6431' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('399-92-6094','Bonnie','Roe','broe2n@ehow.com','Female','49','Horton','4 Declaration Court','147-513-4767' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('420-82-3975','Randolf','Brandrick','rbrandrick2o@imgur.com','Male','99','Fenkeng','45 Nelson Place','946-575-8919' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('201-05-7362','Frazier','Strickett','fstrickett2p@sciencedirect.com','Male','23','Banjar Bias','63174 Warrior Junction','813-166-4817' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('774-67-4136','Isac','Blazic','iblazic2q@friendfeed.com','Male','118','Lahad Datu','6 Mosinee Place','908-956-2336' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('677-66-6305','Bertha','Meneyer','bmeneyer2r@4shared.com','Female','15','Denyshi','123 Thompson Pass','923-687-5484' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('578-12-8462','Astrix','Gilhool','agilhool2s@google.pl','Female','65','Mahates','4549 Lakewood Gardens Lane','120-424-7783' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('533-24-8245','Whitney','Maywood','wmaywood2t@mashable.com','Female','90','Las Americas','41686 Granby Road','877-216-4264' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('378-77-3020','Scarface','Crone','scrone2u@elpais.com','Male','72','Morohongō','37122 Bonner Center','193-789-0107' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('885-23-4917','Madison','Legh','mlegh2v@mtv.com','Male','58','Antananarivo','4706 Paget Lane','636-155-5540' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('330-43-5107','Lawry','Anfosso','lanfosso2w@weibo.com','Male','40','Ludza','99 Nobel Crossing','702-498-2286' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('845-70-4063','Stanislaus','Grigor','sgrigor2x@1688.com','Male','35','Ngulangan','3 Caliangt Crossing','172-875-0022' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('706-39-1255','Chaunce','Sheldrake','csheldrake2y@cocolog-nifty.com','Male','118','Panikian','8818 Namekagon Court','835-306-8511' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('719-90-2468','Arne','Pococke','apococke2z@usda.gov','Male','87','Zhongzi','59 Huxley Park','500-321-2777' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('892-47-9916','Hortense','Febre','hfebre30@sciencedirect.com','Female','118','Lesnoye','2 Drewry Court','477-835-8214' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('627-44-6029','Courtenay','Franckton','cfranckton31@weibo.com','Female','112','Veiga','191 Golden Leaf Pass','661-666-5530' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('591-54-2702','Gray','Nemchinov','gnemchinov32@joomla.org','Male','77','Saint Louis','75 Union Drive','636-904-6604' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('495-26-6936','Jeanie','Ivimey','jivimey33@loc.gov','Female','40','Boucinha','81174 Bluejay Park','263-408-5501' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('803-21-9328','Merrile','Fernan','mfernan34@ow.ly','Female','96','Gaoqiao','3327 Emmet Drive','285-549-9537' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('768-52-1565','Sarine','Oller','soller35@pen.io','Female','51','Patía','7380 2nd Avenue','899-355-3123' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('115-26-5587','Leontine','Pic','lpic36@abc.net.au','Female','24','Taldan','9134 Algoma Plaza','299-473-2564' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('152-47-4495','Berne','Quirk','bquirk37@feedburner.com','Male','72','Houxixi','9268 Buhler Pass','201-350-6306' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('209-77-7858','Cherilyn','Briar','cbriar38@nationalgeographic.com','Female','30','Tigarunggu','319 Kropf Place','584-142-1092' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('291-33-7978','Giralda','Beauchop','gbeauchop39@nationalgeographic.com','Female','49','Xingpinglu','506 Melody Hill','385-410-7498' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('202-48-0769','Benedicta','Halliberton','bhalliberton3a@boston.com','Female','58','Cartago','171 Hoepker Center','477-486-1479' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('733-62-9295','Collen','Mattheeuw','cmattheeuw3b@tamu.edu','Female','34','Chirilagua','9 Lighthouse Bay Park','378-953-7819' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('678-20-9961','Wright','Lippard','wlippard3c@ftc.gov','Male','32','Novyy Svit','6 Browning Drive','212-794-9291' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('775-90-7731','Banky','Cushion','bcushion3d@oracle.com','Male','63','Gala','18581 Rockefeller Crossing','964-860-1271' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('290-12-5784','Gerhard','Honacker','ghonacker3e@scientificamerican.com','Male','46','Muricay','87 Cherokee Way','715-327-1833' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('457-22-7950','Kittie','De Leek','kdeleek3f@dailymotion.com','Female','27','Sieradza','700 International Alley','537-332-1457' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('379-65-7365','Yolanda','Wenderoth','ywenderoth3g@wsj.com','Female','88','Karbinci','271 Dwight Park','700-113-4307' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('726-79-0150','Barri','Stockill','bstockill3h@apache.org','Male','10','Nagano-shi','15 Anhalt Terrace','788-619-6118' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('194-97-4221','Florrie','Powys','fpowys3i@instagram.com','Female','25','Resapombo','8324 Lyons Junction','858-886-3777' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('286-74-2903','Urbanus','Coule','ucoule3j@behance.net','Male','19','Sihe','9813 Hovde Trail','521-838-0408' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('312-95-2090','Currie','Plenty','cplenty3k@themeforest.net','Male','3','Burbank','28102 Butterfield Park','661-882-5883' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('208-56-1582','Garald','Sleigh','gsleigh3l@ifeng.com','Male','102','Kryva Hora','02121 Kings Plaza','681-310-2243' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('507-49-4202','Rubin','De L'Isle','rdelisle3m@spiegel.de','Male','38','Gondar','94169 Killdeer Street','246-566-6732' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('677-61-0992','Imogen','Moakes','imoakes3n@topsy.com','Female','6','Strážná','23 Melvin Pass','801-603-8591' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('559-76-5320','Chlo','Halbeard','chalbeard3o@baidu.com','Female','1','Probolinggo','2440 Little Fleur Park','753-490-9314' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('768-02-2668','Aggie','Mumby','amumby3p@youku.com','Female','44','Pogonsili','78 Sachs Center','777-797-4539' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('583-50-4904','Alexandro','Aikett','aaikett3q@deviantart.com','Male','20','Mersa Matruh','98 Forest Circle','370-118-1830' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('360-45-5712','Allan','De Simone','adesimone3r@icq.com','Male','116','Nchelenge','7859 Blaine Avenue','529-363-3650' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('701-51-7712','Yulma','Nias','ynias3s@latimes.com','Male','18','Pul-e Sangī','6006 Pepper Wood Road','989-333-5836' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('189-40-7683','Codi','Dunlop','cdunlop3t@timesonline.co.uk','Female','69','Boise','94917 Leroy Drive','208-839-3142' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('505-72-7548','Clemente','Dunlap','cdunlap3u@cdbaby.com','Male','7','Årjäng','517 Manufacturers Crossing','535-673-0655' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('573-99-9969','Jacklyn','Sindle','jsindle3v@dyndns.org','Female','102','Delray Beach','18396 Butternut Alley','561-466-2491' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('840-52-8783','Eveline','Heyworth','eheyworth3w@gizmodo.com','Female','31','Molo','56 Carberry Drive','504-540-6013' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('868-81-2843','Lilith','LaBastida','llabastida3x@twitpic.com','Female','26','Budakovo','34 Doe Crossing Place','986-204-0462' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('250-41-9986','Karla','Chase','kchase3y@surveymonkey.com','Female','29','Alicia','1 Merrick Hill','935-863-5742' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('881-31-0038','Consolata','Provost','cprovost3z@theglobeandmail.com','Female','89','Hobart','39 Buhler Court','631-194-1638' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('790-99-2952','Jermayne','Benasik','jbenasik40@jiathis.com','Male','32','Furongqiao','2 Wayridge Hill','561-768-7542' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('587-16-3414','Beatrisa','Kave','bkave41@github.io','Female','35','Provo','2456 Packers Trail','801-153-3732' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('363-50-8023','Nonnah','Bonifas','nbonifas42@wikimedia.org','Female','35','Srabah','44 Spenser Junction','106-428-8744' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('815-85-5890','Lester','Litton','llitton43@shareasale.com','Male','20','Jinping','00 Arrowood Junction','277-784-6289' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('230-92-7529','Alwyn','Cartwright','acartwright44@scribd.com','Male','67','Xinjian','1 Mallory Point','972-671-2028' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('477-88-0769','Patrice','Chart','pchart45@columbia.edu','Female','108','Aelande','038 Ludington Avenue','952-872-3587' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('590-17-3800','Ilene','Offner','ioffner46@bigcartel.com','Female','27','Yumani','83 Holmberg Pass','862-854-5867' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('233-37-3106','Kirstyn','Woodberry','kwoodberry47@ox.ac.uk','Female','92','Qi’an','8 Leroy Place','305-763-6022' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('705-70-3131','Manya','Heatherington','mheatherington48@github.com','Female','43','Mollas','1910 Golden Leaf Place','900-232-2307' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('361-92-4403','Marietta','Schruurs','mschruurs49@hubpages.com','Male','107','Wyszogród','63306 Superior Trail','518-229-0752' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('175-43-8266','Karin','Toffano','ktoffano4a@twitter.com','Female','66','Zhaojia','831 Green Crossing','768-673-0593' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('893-21-4850','Sawyer','McNuff','smcnuff4b@sfgate.com','Male','107','Město','3865 Warner Avenue','531-352-5186' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('872-70-5330','Ly','Bonnell','lbonnell4c@tiny.cc','Male','77','El Playón','753 Haas Street','258-204-0073' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('650-65-2960','Amos','Blaasch','ablaasch4d@slideshare.net','Male','79','Paris 13','219 Alpine Center','556-845-6099' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('634-12-4043','Lyndsey','Torritti','ltorritti4e@sciencedaily.com','Female','11','Yara','7349 Mcguire Point','499-645-0792' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('305-80-9085','Gareth','Farden','gfarden4f@china.com.cn','Male','90','São Luís do Quitunde','1 Schlimgen Point','528-862-7146' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('507-07-6672','Mel','Suthren','msuthren4g@wisc.edu','Male','86','Wutongkou','922 Continental Parkway','150-368-4230' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('877-84-9739','Obidiah','Melladew','omelladew4h@sourceforge.net','Male','82','Wangchang','06 Sugar Road','422-858-4349' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('655-01-0078','Corty','Muzzall','cmuzzall4i@timesonline.co.uk','Male','46','Vydreno','6033 Sundown Avenue','532-968-5638' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('312-06-6701','Galven','Revill','grevill4j@taobao.com','Male','111','Futu','8 Meadow Valley Road','398-521-5982' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('760-38-4098','Nollie','Fassman','nfassman4k@delicious.com','Male','87','Moyamba','45612 Clarendon Trail','684-710-9327' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('862-59-4137','Minta','Choke','mchoke4l@google.nl','Female','31','Smilavichy','67 Birchwood Lane','385-686-4857' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('769-46-3881','Gareth','Huikerby','ghuikerby4m@techcrunch.com','Male','17','Guaíba','1 Drewry Street','906-235-3782' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('610-80-3125','Moises','Lambrechts','mlambrechts4n@marriott.com','Male','86','Moca','4620 Corry Terrace','258-951-0675' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('685-96-7514','Norine','MacMeeking','nmacmeeking4o@canalblog.com','Female','67','Zougang','61 Blue Bill Park Parkway','123-256-6318' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('535-57-1981','Kessia','Barbe','kbarbe4p@taobao.com','Female','55','Puhechang','07 Meadow Valley Trail','774-342-4285' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('503-21-0557','Darrin','Croll','dcroll4q@pagesperso-orange.fr','Male','45','Sunan','665 Lien Way','936-350-1767' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('414-08-9091','Merridie','Tidey','mtidey4r@qq.com','Female','55','Sancang','6 Dunning Center','287-825-0572' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-74-4345','Nicki','Corkitt','ncorkitt4s@gmpg.org','Female','106','Ilaya','7637 Longview Park','364-169-7268' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('751-60-8228','Adah','Dungay','adungay4t@admin.ch','Female','68','Lobuk','66 Anhalt Way','899-594-0375' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('180-55-1552','Viviana','Webling','vwebling4u@topsy.com','Female','8','Kastsyukovichy','13 Nova Way','653-966-5607' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('747-06-5839','Felicdad','Conquest','fconquest4v@thetimes.co.uk','Female','74','Nova Kakhovka','4663 Comanche Place','978-302-9412' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('538-41-2229','Geraldine','Linay','glinay4w@ezinearticles.com','Female','18','Paris 08','31855 Weeping Birch Way','449-372-4721' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('365-26-4345','Luther','Wallbridge','lwallbridge4x@tumblr.com','Male','49','Xiaoyue','6 Shoshone Way','257-537-4371' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-58-1909','Napoleon','Jeannaud','njeannaud4y@barnesandnoble.com','Male','119','Strängnäs','932 Vidon Park','838-127-8780' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('899-25-9486','Jarvis','Lotze','jlotze4z@narod.ru','Male','69','Det Udom','34 Bartillon Parkway','751-569-7495' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('493-91-7085','Doroteya','Lantoph','dlantoph50@privacy.gov.au','Female','77','Filipstad','0 Mayer Street','323-708-2309' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('153-95-7463','Bride','Nertney','bnertney51@biblegateway.com','Female','14','Crespo','36 Spaight Hill','687-471-9546' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('775-21-5871','Irvin','Fattorini','ifattorini52@nationalgeographic.com','Male','60','Tekik Wetan','88321 Lerdahl Court','582-327-9522' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('236-28-3885','Danielle','Lockner','dlockner53@wunderground.com','Female','28','Salcedo','65187 Haas Way','450-810-2018' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('210-98-6715','Bert','Moyse','bmoyse54@wikipedia.org','Female','49','Olmos','15321 Sunbrook Hill','453-577-3431' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('415-75-4977','Lindsy','Ketcher','lketcher55@shutterfly.com','Female','56','Alice','7 North Center','202-307-5337' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('322-43-1451','Devinne','Krimmer','dkrimmer56@google.com.br','Female','97','Boawae','6 Dixon Plaza','491-678-2712' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('677-34-2258','Nicolais','Josupeit','njosupeit57@ezinearticles.com','Male','7','San Sebastian','14 Havey Hill','197-522-8162' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('291-54-3595','Rudy','Buckell','rbuckell58@nasa.gov','Male','101','Changshan','5002 Golf Course Road','665-146-9507' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('212-40-8125','Alissa','Hedgecock','ahedgecock59@house.gov','Female','101','Baisha','32286 Independence Place','516-919-5297' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('499-20-6022','Valaria','Durn','vdurn5a@unc.edu','Female','73','Yuandun','8183 Memorial Street','963-335-0851' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('225-55-0934','Judith','Tuck','jtuck5b@microsoft.com','Female','50','Yizhivtsi','555 Elgar Avenue','311-685-4717' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('728-98-3777','Maurits','Cleiment','mcleiment5c@prnewswire.com','Male','112','Ang Thong','3 4th Circle','158-530-4109' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('683-81-9195','Elmore','Crichley','ecrichley5d@360.cn','Male','95','Xiatuanpu','410 Autumn Leaf Point','593-172-5197' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('814-12-3822','Darryl','Dahill','ddahill5e@mtv.com','Female','99','Malway','03541 Dexter Pass','222-777-1128' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('141-65-1951','Evanne','Mushawe','emushawe5f@cisco.com','Female','47','San José de La Montaña','3 Lakewood Gardens Pass','232-944-2450' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('886-96-4260','Jobina','Kaaskooper','jkaaskooper5g@infoseek.co.jp','Female','3','Rowokangkung','93 School Lane','204-307-6813' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('150-29-0003','Lotty','Itzchaky','litzchaky5h@friendfeed.com','Female','91','Sagasa','19573 Lotheville Place','386-377-4941' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('898-94-4694','Enoch','Mashro','emashro5i@flickr.com','Male','62','Matamey','72395 Mcguire Crossing','451-370-1313' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('882-38-0435','Linn','Conti','lconti5j@dell.com','Female','74','Taifu','9 Loeprich Pass','647-749-5577' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('622-44-2612','Meaghan','Scamadin','mscamadin5k@behance.net','Female','78','Sakaiminato','4125 Blaine Trail','874-520-8152' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('436-87-7980','Ingra','Neylon','ineylon5l@virginia.edu','Male','19','Bebedahan','15744 Charing Cross Alley','126-463-0132' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('593-97-8073','Davey','Skelhorn','dskelhorn5m@cargocollective.com','Male','35','Meia Via','3235 Coleman Pass','903-601-3441' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('147-82-5932','Margaretta','Mathiot','mmathiot5n@4shared.com','Female','8','Trelleborg','04765 Dexter Pass','620-612-5248' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('793-20-7762','Olag','Dobbs','odobbs5o@samsung.com','Male','13','Rancagua','4 Pleasure Street','623-177-5600' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('302-87-7813','Garner','Smurthwaite','gsmurthwaite5p@youtu.be','Male','14','Tongkiling','53 Roth Alley','882-665-9527' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('124-48-5723','Cordie','Lysons','clysons5q@deviantart.com','Female','51','Larap','6 Bonner Road','685-163-1620' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('430-60-4097','Rogerio','Iddon','riddon5r@wp.com','Male','62','Morelos','57 Coleman Lane','873-557-1585' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('502-72-9153','Letitia','Rubinowitch','lrubinowitch5s@indiatimes.com','Female','71','Titab','4 Evergreen Lane','634-114-5590' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('298-35-2331','Ax','Fludgate','afludgate5t@apache.org','Male','65','Postmasburg','2233 Daystar Crossing','902-136-7540' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('382-04-6896','Dolly','Gaishson','dgaishson5u@miibeian.gov.cn','Female','34','Onoda','88 Logan Trail','277-260-4125' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('823-36-8990','Marina','Algeo','malgeo5v@salon.com','Female','73','Banjar Bengkelgede','688 Macpherson Street','904-198-4430' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('652-82-6303','Genna','Halfacre','ghalfacre5w@usa.gov','Female','119','Saharna','49 Tennyson Trail','374-754-9938' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('496-62-8155','Sisely','Benford','sbenford5x@ovh.net','Female','69','Independence','1407 Stang Street','816-562-7495' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('272-39-7441','Norina','Breem','nbreem5y@mapy.cz','Female','34','A dos Cunhados','7 John Wall Place','257-762-0169' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('263-70-1347','Susi','Hardinge','shardinge5z@shutterfly.com','Female','72','Göteborg','26641 Washington Drive','736-724-4466' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('847-86-8983','Simmonds','Freestone','sfreestone60@paginegialle.it','Male','2','Puente Alto','46701 Emmet Junction','955-725-9201' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('658-39-2822','Calvin','Laise','claise61@sun.com','Male','44','Lazaro Cardenas','1788 Continental Junction','992-919-8800' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('505-26-7874','Adara','Boyle','aboyle62@pagesperso-orange.fr','Female','71','Umeå','84030 Longview Point','933-551-1045' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('801-62-3127','Bronnie','Hamments','bhamments63@nih.gov','Male','8','Szczerbice','28483 Darwin Plaza','418-559-1556' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('481-83-5361','Francisca','Fowles','ffowles64@macromedia.com','Female','115','Balagon','44 Bluestem Street','179-608-3977' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('476-70-1561','Dickie','Marquiss','dmarquiss65@aol.com','Male','19','Kampungbaru','6 1st Avenue','782-889-6437' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('203-94-0020','Joshuah','Maior','jmaior66@miibeian.gov.cn','Male','39','Hengjiang','9095 Manitowish Lane','179-523-4428' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('649-80-2349','Correy','Becraft','cbecraft67@fotki.com','Female','99','Hậu Nghĩa','0009 Randy Plaza','597-905-9215' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('108-69-7529','Ermina','O'Neill','eoneill68@github.com','Female','94','Niquelândia','3 Reinke Point','589-700-9508' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('571-39-2793','Kittie','De Bell','kdebell69@howstuffworks.com','Female','78','Xiangyangpu','22 Emmet Avenue','132-862-2491' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('231-77-3749','Charlotta','Ingley','cingley6a@lulu.com','Female','85','Sindangsari','7708 Goodland Junction','190-337-4760' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('503-90-4196','Erick','Devenport','edevenport6b@hc360.com','Male','13','São José dos Campos','7253 Lakewood Gardens Hill','782-157-6296' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('687-03-8473','Brianne','Shotter','bshotter6c@mayoclinic.com','Female','64','Langqi','0 Buhler Place','298-549-4891' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('465-24-8099','Collen','McKee','cmckee6d@instagram.com','Female','27','Kabulusan','6 La Follette Alley','686-288-3694' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-55-8276','Glory','Hayles','ghayles6e@rakuten.co.jp','Female','59','Taytayan','184 Darwin Center','196-490-0217' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('646-26-4115','Addi','Lennon','alennon6f@google.es','Female','91','Pilot Butte','074 Bunker Hill Park','794-892-1578' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('673-76-9267','Beverlee','Creak','bcreak6g@exblog.jp','Female','91','Dresden','89072 Cody Park','365-726-6230' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('136-09-2296','Natala','Divine','ndivine6h@cafepress.com','Female','87','Navotas','576 Tennessee Trail','929-712-4918' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('668-86-4749','Baldwin','Gillespey','bgillespey6i@1und1.de','Male','62','Delong','98 Sauthoff Street','287-777-3415' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('272-17-3594','Eleanora','Pritchett','epritchett6j@sbwire.com','Female','49','Lubei','643 Bashford Crossing','321-399-0505' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('355-28-2281','Tyrus','Magister','tmagister6k@wordpress.com','Male','94','Una','8153 Prairieview Drive','682-238-3714' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('426-79-7448','Nikolaus','Scolts','nscolts6l@twitter.com','Male','1','Ilopango','17773 Kim Way','781-352-3181' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('171-76-7916','Noelle','Grimes','ngrimes6m@census.gov','Female','30','San Luis','28712 Nova Place','275-313-3980' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('154-96-7396','Les','Rabbage','lrabbage6n@themeforest.net','Male','43','Tvrdonice','4 Gina Road','477-353-5780' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('226-25-2470','Sydel','Hanscom','shanscom6o@qq.com','Female','26','Canguaretama','1 Michigan Trail','187-796-9966' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('349-31-7958','Dedie','Boman','dboman6p@kickstarter.com','Female','82','Houston','2 Bunting Center','713-168-0617' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('539-80-1016','Lori','Buntin','lbuntin6q@bing.com','Female','79','Hongqiao','6 Orin Trail','851-595-8850' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('829-93-7516','Noam','MacPhee','nmacphee6r@timesonline.co.uk','Male','47','Malausma Kidul','10 Morning Trail','565-573-5897' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('886-35-5390','Jeralee','Josifovitz','jjosifovitz6s@cam.ac.uk','Female','23','Fastiv','2 Summer Ridge Avenue','142-776-4703' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('699-04-1190','Emmy','Guile','eguile6t@google.com','Female','75','Bancal','48 Toban Junction','615-757-5178' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('472-55-0487','Kate','Rock','krock6u@live.com','Female','15','Barţa‘ah ash Sharqīyah','7 Monica Court','131-271-0535' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('683-40-7372','Brendon','Decourt','bdecourt6v@meetup.com','Male','111','Baimajing','6 Maryland Junction','426-266-9783' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('470-18-0467','Sherie','Puddle','spuddle6w@google.co.jp','Female','92','Beaufort','7119 Claremont Court','843-366-3046' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('398-05-9054','Stafford','Danev','sdanev6x@ezinearticles.com','Male','5','Buffalo','70 Westridge Junction','716-346-3757' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('523-62-4100','Doralin','Benton','dbenton6y@homestead.com','Female','91','Lazaro Cardenas','55 East Avenue','560-623-6616' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('185-76-5429','Madelon','Simononsky','msimononsky6z@cnet.com','Female','53','Banturkrajan','74 Green Ridge Road','953-871-3178' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('252-64-7208','Rachelle','Bentall','rbentall70@edublogs.org','Female','85','Presidente Epitácio','4153 Eliot Point','879-426-8874' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('175-37-1166','Sauncho','Hinemoor','shinemoor71@umn.edu','Male','4','Chesapeake','1694 Morrow Court','757-844-5799' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('151-56-9232','Randi','McMenamin','rmcmenamin72@craigslist.org','Female','35','Kandangan','334 Waywood Park','817-859-8874' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('285-11-1915','Gaynor','Leyre','gleyre73@npr.org','Female','41','Candelaria','2533 Gateway Street','908-340-8646' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('508-42-7738','Eduino','Milbank','emilbank74@gmpg.org','Male','109','Dankunku','23490 Brown Crossing','564-119-4555' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('440-41-5023','Mufinella','Beckford','mbeckford75@narod.ru','Female','25','Hagondange','64 Merry Lane','821-751-1881' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('187-47-9794','Papageno','Molloy','pmolloy76@mozilla.com','Male','102','Watuagung','142 Scofield Center','124-579-0296' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('229-25-3165','Wendel','Scryne','wscryne77@bloglines.com','Male','92','Hexi','5091 Oneill Parkway','520-590-9692' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('461-30-8374','Murvyn','Bowes','mbowes78@mysql.com','Male','4','Shajing','084 Blue Bill Park Way','926-834-0268' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('246-59-0914','Tully','Wray','twray79@samsung.com','Male','4','Nueva Imperial','619 Declaration Point','327-512-3637' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('772-11-9926','Peri','Dislee','pdislee7a@ftc.gov','Female','56','Nacimiento','2 School Terrace','859-288-1922' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('789-94-5207','Legra','Mordue','lmordue7b@sciencedaily.com','Female','1','Niitsu-honchō','0062 Cascade Hill','553-115-0551' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('719-20-7255','Olin','Alcott','oalcott7c@smh.com.au','Male','23','Harrison','60 Lakewood Gardens Hill','976-404-5484' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('874-97-3785','Tabb','Bazeley','tbazeley7d@about.com','Male','70','Chapayevka','991 Oakridge Crossing','805-450-8314' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('563-35-7517','Ulberto','De Francisci','udefrancisci7e@multiply.com','Male','51','Angkimang','2181 Lukken Plaza','277-182-7549' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('121-79-7769','Jase','Heinsen','jheinsen7f@mysql.com','Male','8','Liuliping','39 Shasta Crossing','394-887-3050' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('485-64-5572','Melissa','Chell','mchell7g@etsy.com','Female','108','Prokhladnyy','56 Nova Parkway','367-955-4223' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('584-99-1733','Neel','Broe','nbroe7h@sciencedaily.com','Male','13','Kuvandyk','2 Emmet Drive','808-777-4416' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('703-89-6933','Aila','Limpenny','alimpenny7i@imgur.com','Female','47','Villa Altagracia','64560 Anzinger Crossing','853-219-7858' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('624-10-2054','Titos','Tewkesberrie','ttewkesberrie7j@miitbeian.gov.cn','Male','37','Curridabat','87 Duke Avenue','706-788-2970' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('434-20-1259','Wilburt','Tidder','wtidder7k@artisteer.com','Male','35','Thatta','7370 Atwood Point','402-284-9255' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('533-71-9583','Gibb','Paye','gpaye7l@washingtonpost.com','Male','22','Nogoonnuur','28 Eastwood Avenue','590-813-0225' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('574-22-1340','Silas','Steabler','ssteabler7m@tuttocitta.it','Male','71','Polzela','4078 Hanson Street','543-578-8972' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('759-08-9108','Kayley','Coultard','kcoultard7n@latimes.com','Female','112','Al Ibrāhīmīyah','43552 Stuart Trail','824-957-2246' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('374-19-4004','Belicia','Mundell','bmundell7o@nba.com','Female','19','Forquilhinha','07105 Welch Junction','476-342-4684' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('355-39-5104','Zelig','Onslow','zonslow7p@diigo.com','Male','101','Wufu','369 Roxbury Circle','705-898-7080' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('366-79-9080','Audi','Frogley','afrogley7q@msu.edu','Female','55','Tanggulangin','1078 Pleasure Crossing','559-639-5380' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('472-13-9787','Melicent','Romaines','mromaines7r@hhs.gov','Female','98','Tadmur','15706 Calypso Circle','410-642-4526' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('893-27-4070','Bard','Dalrymple','bdalrymple7s@hexun.com','Male','35','Bojongsari','87 Ilene Hill','314-707-5174' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('569-54-6553','Herminia','Brauninger','hbrauninger7t@imgur.com','Female','75','Sultan Kudarat','0312 Onsgard Park','672-168-2961' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('562-15-9732','Hillyer','Boecke','hboecke7u@flickr.com','Male','10','Uk','74 Fremont Pass','477-257-4807' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('828-91-6746','Rustin','Whitely','rwhitely7v@aboutads.info','Male','13','Obubra','152 Burrows Drive','363-287-0959' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('633-38-9033','Dewain','Gretton','dgretton7w@sourceforge.net','Male','34','Balzan','242 Stoughton Road','159-689-7920' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('477-40-7607','Emmet','Meardon','emeardon7x@examiner.com','Male','43','Stopnica','2 Cordelia Alley','423-844-6383' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('531-47-2274','Janet','Scramage','jscramage7y@example.com','Female','61','Paris 02','1389 Butternut Terrace','505-773-3286' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('580-52-4944','Karie','Daulby','kdaulby7z@hexun.com','Female','32','Pushkin','1034 Springs Way','760-448-6271' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('740-13-7317','Melly','Bradburne','mbradburne80@go.com','Female','84','Vale das Mós','956 Coleman Parkway','681-746-8763' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('560-77-7344','Marie','Kilfoyle','mkilfoyle81@globo.com','Female','46','Chengzhong','873 Corscot Lane','143-779-0980' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('864-39-5357','Sancho','Layne','slayne82@eepurl.com','Male','119','Cinunjang','7 Westport Place','767-140-2052' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('789-02-6196','Rene','Noen','rnoen83@joomla.org','Female','58','Dongshan','3 Bashford Trail','338-472-4301' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('781-98-1734','Katharine','Jaulmes','kjaulmes84@sitemeter.com','Female','101','Jandaia do Sul','034 Blaine Drive','966-751-8635' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('863-11-7038','Sherwin','Malinson','smalinson85@plala.or.jp','Male','37','Wādī Raḩḩāl','701 Johnson Avenue','522-720-5147' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('864-61-2892','Harmon','Lemerie','hlemerie86@ycombinator.com','Male','113','Abbottābād','6885 Grayhawk Street','412-957-8954' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('801-18-5770','Rod','Lefever','rlefever87@ihg.com','Male','2','Chwaszczyno','2839 Lien Court','741-525-3848' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('798-02-0617','Aurelea','Fidge','afidge88@sourceforge.net','Female','65','Hrušovany u Brna','646 Reindahl Street','809-620-3245' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('650-88-3701','Sherwynd','Simoni','ssimoni89@google.de','Male','33','Göteborg','10129 Lotheville Hill','423-810-9422' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('221-86-7999','Pammi','Mussared','pmussared8a@xinhuanet.com','Female','18','Kraljevica','4086 Everett Place','471-349-1893' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('250-46-7071','Eustace','Erasmus','eerasmus8b@wordpress.com','Male','115','Sebulu','11 Northland Trail','254-602-4734' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('364-07-2357','Lamont','Calleja','lcalleja8c@oakley.com','Male','27','Campo','7 Randy Circle','750-502-6931' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('104-61-6979','Filberto','Westcarr','fwestcarr8d@slate.com','Male','13','Linjiang','6 Ridge Oak Drive','472-755-7139' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('518-79-2893','Ulric','Bartlosz','ubartlosz8e@vistaprint.com','Male','101','Jiaokou','8 Eggendart Avenue','433-215-9037' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('388-83-1482','Carlos','Iacofo','ciacofo8f@mozilla.org','Male','115','Washington','45614 Lillian Park','202-555-5991' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('571-23-7831','Jacki','McWhan','jmcwhan8g@omniture.com','Female','35','Souto','5 Northridge Point','123-185-8661' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('857-62-4322','Augusto','Doddemeade','adoddemeade8h@amazonaws.com','Male','43','Pojok','4 Farwell Street','397-138-6181' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('112-78-2992','Hildegarde','Browning','hbrowning8i@gravatar.com','Female','63','Monywa','7 Monica Place','588-922-6569' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('530-73-9374','Valerye','Klosges','vklosges8j@dell.com','Female','117','Beizhakou','275 Boyd Way','498-317-3718' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('805-52-6847','Dee','Haibel','dhaibel8k@phpbb.com','Female','31','Birqīn','409 Northwestern Park','515-433-9131' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('703-10-6826','Delcine','Moehle','dmoehle8l@angelfire.com','Female','21','Żernica','881 Daystar Road','221-969-4923' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('849-89-5221','Minda','Dornin','mdornin8m@google.es','Female','28','Florentino Ameghino','190 Stoughton Circle','387-896-9304' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('877-70-2449','Kalle','Snalum','ksnalum8n@artisteer.com','Male','68','Arrën','5 Macpherson Way','260-770-1680' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('132-85-3667','Mace','Cattellion','mcattellion8o@blogtalkradio.com','Male','115','Zhongben','36 Manley Court','812-347-1290' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('558-33-1455','Winnie','Siddall','wsiddall8p@whitehouse.gov','Female','119','Lewokluok','6 Loeprich Hill','287-655-2855' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('348-17-3952','Ricard','Higounet','rhigounet8q@state.gov','Male','22','Büzmeýin','9630 Memorial Terrace','790-831-0637' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('660-95-0499','Cass','Rizziello','crizziello8r@economist.com','Male','68','Göteborg','67445 Doe Crossing Trail','270-761-4363' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('611-38-0234','Zack','Murford','zmurford8s@github.com','Male','14','Melaka','116 Scott Point','256-890-1863' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('293-91-9585','Lancelot','Burrill','lburrill8t@intel.com','Male','41','Penggakrajeng','72863 Laurel Street','863-908-0910' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('110-46-9968','Rhianon','Pallatina','rpallatina8u@usda.gov','Female','64','Nigríta','8 Farragut Way','598-622-9817' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('119-74-1074','Nelia','Bexon','nbexon8v@time.com','Female','51','Sibulan','23111 Alpine Alley','317-590-9569' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('280-29-0678','Husain','Jimenez','hjimenez8w@ebay.com','Male','88','Macabugos','49104 Becker Center','739-521-7580' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('523-73-8951','Emera','Rozalski','erozalski8x@i2i.jp','Female','78','Arzila','93106 Shoshone Avenue','740-326-2629' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('899-64-6134','Thedrick','McGrey','tmcgrey8y@cnbc.com','Male','63','Pato-o','492 Roxbury Junction','720-999-7035' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('515-59-6029','Gottfried','Weatherup','gweatherup8z@cmu.edu','Male','92','Jamaica','1971 Caliangt Street','212-377-1033' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('421-54-6157','Bailey','Wolfendale','bwolfendale90@netvibes.com','Male','99','Nagrumbuan','1049 Knutson Crossing','654-103-0573' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('243-96-7808','Alexa','Mashro','amashro91@wiley.com','Female','56','Kampunglistrik','676 Emmet Park','461-939-0477' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('844-53-1631','Vanya','Gouldthorpe','vgouldthorpe92@delicious.com','Female','99','Gondanglegi Wetan','1448 Cordelia Terrace','453-670-4261' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('799-50-6864','Moses','Attawell','mattawell93@cnbc.com','Male','8','Mont-Dore','5738 Merchant Point','309-326-7639' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('329-32-0828','Leshia','Scirman','lscirman94@51.la','Female','18','Thaba Nchu','73570 Prairieview Trail','438-719-7066' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('865-32-3058','Eva','Romao','eromao95@wiley.com','Female','66','Stockholm','82993 Old Shore Way','601-209-1891' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('586-49-5818','Jenna','Moulton','jmoulton96@simplemachines.org','Female','92','Situ','614 Sachtjen Junction','721-308-5439' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('327-02-2168','Gabriele','Agge','gagge97@behance.net','Male','23','Paris 17','79 Village Plaza','733-332-4960' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('548-66-7110','Muffin','McKeowon','mmckeowon98@reuters.com','Male','13','Waco','68 Roxbury Street','801-431-3915' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('739-97-8101','Law','Millhill','lmillhill99@microsoft.com','Male','75','Imbang','3 Moulton Park','457-136-5814' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('335-86-8183','Mirella','Utting','mutting9a@symantec.com','Female','52','Joyabaj','88754 Springview Street','509-401-0983' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('165-19-4658','Natalya','Bedberry','nbedberry9b@ox.ac.uk','Female','91','Al Azraq ash Shamālī','573 Charing Cross Plaza','835-459-6607' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('294-73-0276','Giavani','Page','gpage9c@behance.net','Male','64','Mullsjö','64 Northport Lane','431-443-5356' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('392-69-4123','Bayard','Lammas','blammas9d@printfriendly.com','Male','46','Guanghou','306 Blue Bill Park Junction','579-738-9056' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('241-97-7490','Reggie','Perrin','rperrin9e@nbcnews.com','Male','100','Kuala Lumpur','13007 Dennis Plaza','867-215-1881' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('375-62-0845','Dulcinea','Risdale','drisdale9f@deviantart.com','Female','54','Gamut','489 Mitchell Place','588-519-5946' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('497-05-2201','Lynett','Tersay','ltersay9g@photobucket.com','Female','62','Emiliano Zapata','1666 Northridge Place','118-287-8369' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('242-41-1930','Deborah','MacNess','dmacness9h@google.co.jp','Female','6','Votkinsk','32244 Sundown Hill','730-276-9455' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('368-61-9516','Hortense','Blackeby','hblackeby9i@cnbc.com','Female','102','Pylaía','97447 Dixon Trail','683-437-1922' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('750-48-4587','Vivian','Dewer','vdewer9j@webmd.com','Female','80','Néma','9 Mendota Hill','769-689-6453' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('437-49-0738','Forest','Cauldfield','fcauldfield9k@blogger.com','Male','30','Creil','460 Cascade Road','544-152-5307' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('448-38-0656','Anna-maria','Olifaunt','aolifaunt9l@devhub.com','Female','100','Tōbetsu','9445 Talisman Plaza','718-330-5259' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('544-70-5996','Melinda','Bonsey','mbonsey9m@google.com.br','Female','35','McKinley','36825 Nova Road','902-742-7846' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('628-87-0667','Ainsley','Britto','abritto9n@uol.com.br','Female','36','Dori','512 Grasskamp Alley','160-824-2773' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-96-7037','Eli','Bignold','ebignold9o@1und1.de','Male','37','Bapska','320 Hanson Trail','683-719-9734' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('238-78-1555','Quinta','Frizell','qfrizell9p@buzzfeed.com','Female','95','Tasīl','14304 Everett Center','322-843-8372' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('461-66-9906','Aura','Fidler','afidler9q@salon.com','Female','102','Qandala','6 Burning Wood Terrace','560-861-3833' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('602-21-3430','Greer','Wille','gwille9r@soundcloud.com','Female','69','Daojiang','94 Summit Drive','975-375-8508' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('719-89-5797','Tara','St. Pierre','tstpierre9s@fotki.com','Female','115','Lascano','2836 Sutherland Plaza','129-491-3235' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('809-47-7493','Petr','Dy','pdy9t@ustream.tv','Male','75','Libertad','504 Autumn Leaf Hill','161-818-4585' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('543-66-1837','Ansell','Dubose','adubose9u@behance.net','Male','85','Katsuura','9584 Banding Crossing','583-202-0115' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('451-51-0453','Dale','Skitterel','dskitterel9v@dagondesign.com','Female','26','Chipata','57 6th Plaza','396-517-5037' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('681-01-1458','Barbra','Goodbar','bgoodbar9w@sciencedirect.com','Female','41','Novotitarovskaya','593 Dapin Pass','526-912-8030' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('404-87-0458','Ilsa','Mabbe','imabbe9x@ebay.com','Female','92','Chirpan','3749 Sunbrook Parkway','385-921-2411' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('683-64-5345','Oberon','Derdes','oderdes9y@sohu.com','Male','29','Cái Nhum','63 Springs Junction','280-229-8196' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('144-45-5139','Homerus','Leader','hleader9z@nature.com','Male','17','Coronel','94 Melody Trail','245-140-0499' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('672-53-7719','La verne','Oxberry','loxberrya0@google.com.br','Female','41','Posse','30895 Sutteridge Park','788-434-8968' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('337-85-0614','Rickert','Crowcher','rcrowchera1@businessweek.com','Male','69','Jiḩānah','06 Spohn Place','174-221-0973' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('317-87-1082','Idelle','Chevins','ichevinsa2@artisteer.com','Female','18','Mesiméri','73 American Ash Plaza','684-735-9652' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('869-12-4516','Alden','Nelthorpe','anelthorpea3@unblog.fr','Male','33','Kapuan','72460 Sommers Circle','155-685-0328' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('155-52-7179','Rhodie','Opfer','ropfera4@sun.com','Female','98','Zhabagly','6515 Sunfield Terrace','119-728-1854' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('607-34-5456','Merrili','Fereday','mferedaya5@newyorker.com','Female','91','Tim','77 Commercial Circle','480-998-2184' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('409-16-2605','Demetris','Jancar','djancara6@jigsy.com','Female','120','Pubal','720 Sauthoff Hill','276-703-9040' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('496-43-5797','Vanessa','Dutteridge','vdutteridgea7@webnode.com','Female','32','Nanqiao','236 Pierstorff Hill','603-148-3034' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('337-01-6121','Cosimo','Hebditch','chebditcha8@wsj.com','Male','73','San Pedro','651 2nd Pass','579-716-4567' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('106-37-9505','Alistair','McDarmid','amcdarmida9@51.la','Male','23','Quy Đạt','04712 6th Center','933-586-3566' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('505-73-8347','Kerstin','Phipp','kphippaa@ucla.edu','Female','82','Uva','64 Jackson Hill','277-567-3928' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('679-20-0256','Hakeem','Hendrick','hhendrickab@ning.com','Male','104','Tuban','460 Havey Hill','580-778-6063' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('537-56-7048','Janeczka','Ruos','jruosac@studiopress.com','Female','42','Hule','0503 Crest Line Circle','751-669-2890' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('156-55-9260','Farlay','Debill','fdebillad@archive.org','Male','64','Rikitea','25 Sunbrook Street','520-605-7913' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('391-51-5956','Linus','Bruntjen','lbruntjenae@over-blog.com','Male','96','Ubá','1 Duke Road','181-134-5032' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('295-86-0171','Kendall','Medley','kmedleyaf@google.pl','Male','61','Sanjiao','4338 Carioca Plaza','710-797-4249' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('837-04-9435','Juli','Magne','jmagneag@cyberchimps.com','Female','103','Shuidong','2446 Florence Place','763-829-4173' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('630-46-4268','Emma','Farington','efaringtonah@google.com.br','Female','87','Qarqīn','89106 Melvin Center','448-247-8599' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('726-33-1504','Devondra','Hargitt','dhargittai@hexun.com','Female','51','Tagnanan','4467 John Wall Avenue','930-781-9652' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('312-50-8164','Marjie','St. Paul','mstpaulaj@cbc.ca','Female','85','Buena Vista','9 Kensington Lane','201-287-9019' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('776-61-2826','Belvia','Gardiner','bgardinerak@ovh.net','Female','112','Hezhi','809 Di Loreto Circle','662-435-1940' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('124-19-0210','Rosalinda','Ledekker','rledekkeral@angelfire.com','Female','104','Xilin','2 Fisk Drive','161-794-7489' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('873-86-1843','Tristan','McGinty','tmcgintyam@mapy.cz','Male','105','Dzüyl','85536 Wayridge Drive','836-671-9657' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('257-79-9275','Lorelei','Brideoke','lbrideokean@diigo.com','Female','48','Praia de Mira','63278 Norway Maple Plaza','695-656-4684' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('676-15-4056','Fair','Garnam','fgarnamao@discuz.net','Male','18','Kushima','6 Monterey Crossing','681-926-6268' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('738-07-3492','Pauly','Crack','pcrackap@cbc.ca','Female','28','Deán Funes','7054 Huxley Hill','368-846-5987' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('748-42-7174','Hermine','Antoney','hantoneyaq@mlb.com','Female','27','Sarzedo','80647 Kedzie Park','272-827-5450' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('474-52-8103','Gabe','Rosengren','grosengrenar@mit.edu','Male','65','Balogo','14 Scofield Center','581-253-3882' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('105-78-9141','Dana','Emptage','demptageas@delicious.com','Female','5','Babakanjaya','1 Blue Bill Park Circle','780-531-9103' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('829-86-1947','Niles','McLevie','nmclevieat@unc.edu','Male','70','Kembang','799 Mallory Street','403-229-6061' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('464-74-0966','Raviv','Huebner','rhuebnerau@tumblr.com','Male','27','Vose’','5 Alpine Street','582-368-0266' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('124-19-1907','Celestia','Klicher','cklicherav@devhub.com','Female','17','Lagoa Santa','779 Mockingbird Way','151-216-6586' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('281-68-2549','Shaun','Bovaird','sbovairdaw@washingtonpost.com','Male','90','Malabonot','81657 Twin Pines Place','276-296-1546' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('828-52-2670','Jordanna','Wennington','jwenningtonax@cmu.edu','Female','67','Jeremi','0 Northview Street','693-198-8819' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('688-93-1440','Hermon','Gossop','hgossopay@wix.com','Male','71','Cepões','7360 Acker Hill','424-473-4644' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('468-81-8904','Brandais','Fache','bfacheaz@weebly.com','Female','95','Konārak','6 Fulton Street','183-244-9056' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('669-07-1024','Des','Albasiny','dalbasinyb0@bluehost.com','Male','74','Stockholm','78068 Dottie Junction','771-870-3145' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('273-64-4792','Jeremiah','Lonsbrough','jlonsbroughb1@flavors.me','Male','62','Shymkent','1 Manley Court','394-559-0103' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('321-83-6488','Clemmie','Clac','cclacb2@stumbleupon.com','Female','115','Yuanyang','64622 Chive Terrace','881-360-1217' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('115-98-3357','Anderea','Mattingson','amattingsonb3@amazon.de','Female','41','Tân Kỳ','72669 Lien Circle','401-880-1729' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('395-64-6471','Chick','McNamara','cmcnamarab4@devhub.com','Male','80','Mariposa','24553 Dexter Crossing','843-619-9769' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('665-08-0758','Billie','Corradi','bcorradib5@wisc.edu','Male','6','La Molina','01 Kensington Trail','450-584-0427' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('147-38-0484','Nikolaus','Brookshaw','nbrookshawb6@globo.com','Male','40','Taurija','27697 Forest Run Lane','281-900-7833' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('752-81-9827','Karry','Costellow','kcostellowb7@symantec.com','Female','34','Shīrvān','057 Schiller Drive','357-520-1400' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('818-45-1192','Yettie','Colenutt','ycolenuttb8@ed.gov','Female','55','Ourentã','45 Morningstar Pass','645-800-0529' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('769-86-4293','Kienan','Glasard','kglasardb9@domainmarket.com','Male','117','Kirkuk','584 Nelson Way','678-458-5402' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('501-06-5369','Ryley','Hachard','rhachardba@sitemeter.com','Male','44','Cigaras','58999 Pleasure Center','517-433-0402' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('356-02-2975','Darnell','Jaqueme','djaquemebb@dyndns.org','Male','10','Nyzhnya Krynka','0249 Dayton Court','106-586-0945' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('382-10-8019','Niccolo','Rendell','nrendellbc@sohu.com','Male','81','Nato','34 Stuart Park','405-602-9305' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('397-24-7604','Nelle','Joscelyne','njoscelynebd@blogtalkradio.com','Female','48','Taoyuan','90 Goodland Plaza','578-292-1971' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('380-25-7015','Reinhold','Bilsborrow','rbilsborrowbe@chicagotribune.com','Male','2','Mporokoso','5 Cody Court','207-153-5074' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('840-07-3056','Rufus','Paddock','rpaddockbf@last.fm','Male','79','Edsbyn','53 Stoughton Point','344-232-6685' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('594-12-0103','Vladimir','Petry','vpetrybg@opensource.org','Male','18','Yunlu','6 South Junction','894-221-9409' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('817-75-8753','Shari','Lambertson','slambertsonbh@boston.com','Female','19','Los Arcos','39 Graceland Pass','242-392-0820' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('582-38-6115','Cristina','Jephcott','cjephcottbi@google.ru','Female','6','Alderetes','757 Cordelia Alley','334-322-1047' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('534-30-8584','Brendis','Scolli','bscollibj@mac.com','Male','100','Nkwerre','1229 Esch Trail','211-757-9155' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('648-34-3147','Lulu','Candlin','lcandlinbk@cornell.edu','Female','90','Gakovo','91856 Tomscot Terrace','189-622-2244' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('353-80-3366','Kaiser','Borrott','kborrottbl@about.com','Male','111','Ares Tengah','496 Meadow Vale Court','458-388-6456' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('288-85-0120','Dione','Steart','dsteartbm@cam.ac.uk','Female','119','Zhenping Chengguanzhen','824 Anderson Hill','597-782-1919' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('621-70-6894','Avivah','Gainsburgh','againsburghbn@census.gov','Female','109','Chumpi','75 Novick Hill','913-594-2708' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('513-09-4343','Sidnee','Lavell','slavellbo@salon.com','Male','64','Shidong','4108 Westport Plaza','518-254-1775' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('410-48-8886','Bibbye','Eschalotte','beschalottebp@harvard.edu','Female','66','Pingshi','31 Superior Pass','375-229-9531' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('265-06-6778','Lynnell','Hankinson','lhankinsonbq@telegraph.co.uk','Female','84','Bystřany','9 Algoma Terrace','130-287-9806' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('411-66-7542','Sullivan','Pithie','spithiebr@freewebs.com','Male','106','New York City','8 Moulton Lane','212-801-7906' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('729-07-2174','Butch','Cremen','bcremenbs@opera.com','Male','38','Nanhe','84 Express Center','340-138-9237' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('490-40-9239','Annecorinne','Roblin','aroblinbt@gizmodo.com','Female','74','Jinjing','4814 Prairie Rose Park','373-526-8055' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('743-19-4292','Irina','Samways','isamwaysbu@nydailynews.com','Female','36','Qianshan','5 Harper Plaza','698-848-3527' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('508-68-6361','Nevil','Bullman','nbullmanbv@storify.com','Male','56','Ar Rawḑah','207 Huxley Street','248-938-4007' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('536-01-2897','Matty','Roper','mroperbw@google.com','Female','34','Yuli','4256 Lighthouse Bay Pass','674-371-8008' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('306-48-3192','Waly','Pywell','wpywellbx@4shared.com','Female','65','Zaki Biam','1324 Barby Way','955-424-5324' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('689-72-8904','Helyn','MacAlaster','hmacalasterby@networksolutions.com','Female','106','Shaydon','46565 Graedel Trail','387-797-8449' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('558-62-4375','Noby','Harkes','nharkesbz@vkontakte.ru','Male','16','Patzicía','77 Killdeer Lane','414-421-1822' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('247-70-1879','Percival','Gierek','pgierekc0@studiopress.com','Male','119','Mandi Bahāuddīn','376 Londonderry Junction','189-835-4734' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-27-9014','Virginia','Ludovico','vludovicoc1@wikispaces.com','Female','97','Lipník nad Bečvou','53900 Northview Court','183-995-2108' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('270-35-2823','Rocky','Dolden','rdoldenc2@163.com','Male','96','Kikinda','9 Browning Parkway','320-708-3140' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('868-64-9667','Arny','Blint','ablintc3@nymag.com','Male','76','Tlogowetan','52554 Pennsylvania Trail','936-439-9468' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('360-79-3487','Pattie','Winslade','pwinsladec4@wordpress.com','Male','7','Poncokusumo','26007 East Alley','429-951-9982' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-12-0028','Benedikt','Brussels','bbrusselsc5@seattletimes.com','Male','118','Ponta Delgada','01585 Ridgeview Street','125-905-0870' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('335-97-6640','Grover','Swallow','gswallowc6@quantcast.com','Male','58','Phu Luang','0 Holy Cross Center','310-999-7732' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('498-72-5827','Prentiss','Paolotto','ppaolottoc7@intel.com','Male','104','Sarajevo','806 Grayhawk Trail','789-321-3314' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('482-01-6334','Lorianne','Gateman','lgatemanc8@digg.com','Female','9','Dangchang Chengguanzhen','577 Dryden Alley','981-971-3966' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('430-30-5734','Jarrad','Gallemore','jgallemorec9@rambler.ru','Male','21','Malie','96906 Anthes Avenue','324-782-4966' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('523-90-4347','Goldia','Gadie','ggadieca@youtube.com','Female','92','Lanipao','8713 Burrows Terrace','554-664-2006' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('118-26-2103','Arvin','Fanti','afanticb@mozilla.com','Male','73','Zorgo','42734 Fordem Terrace','520-545-1140' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('580-02-1542','Brandie','Malins','bmalinscc@army.mil','Female','38','Loma Bonita','95627 Saint Paul Pass','327-805-3469' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('724-68-3013','Freemon','McKeady','fmckeadycd@webeden.co.uk','Male','84','Ulcinj','6 Harbort Hill','781-897-9569' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('153-40-4321','Fair','Falla','ffallace@jiathis.com','Male','98','Parakanhonje Wetan','62276 Morning Terrace','925-496-5842' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('280-44-6574','Charil','Hartfield','chartfieldcf@home.pl','Female','112','Gucheng','82 Surrey Drive','891-925-3167' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('434-30-2956','Aimil','Dyble','adyblecg@wired.com','Female','109','Bungkal','21909 Carey Place','128-275-2802' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('891-08-7771','Alic','Hove','ahovech@toplist.cz','Male','46','Belogorsk','479 Charing Cross Court','919-226-9252' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('439-40-7985','Konstantine','Meran','kmeranci@nsw.gov.au','Male','38','Wolofeo','54376 Sutherland Pass','665-471-0682' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('207-35-0586','Jonas','Sciacovelli','jsciacovellicj@webmd.com','Male','96','Rabāţ-e Sangī-ye Pā’īn','5030 Mockingbird Avenue','701-109-0075' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('571-93-4992','Yorgos','Camillo','ycamillock@geocities.jp','Male','63','Vila de Rei','36 Killdeer Point','939-288-2592' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('817-26-7577','Ardith','Chalcraft','achalcraftcl@irs.gov','Female','108','Liantan','7393 Tennyson Crossing','925-654-5373' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('794-16-9258','Reinold','Ayto','raytocm@altervista.org','Male','119','Walton','32 Grayhawk Terrace','608-993-1381' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('356-95-5885','Johannah','Eggleton','jeggletoncn@mapquest.com','Female','14','Cumaná','3 West Trail','959-472-4508' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('821-12-9323','Ade','Flecknell','aflecknellco@geocities.jp','Male','8','Sanshui','984 Monterey Drive','682-991-5561' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('589-05-8397','Kala','Havers','khaverscp@netscape.com','Female','11','Caen','55816 Rusk Lane','573-344-7191' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('839-43-5538','Burton','Orrow','borrowcq@alibaba.com','Male','78','Liuqu','9 Anderson Place','101-785-2602' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('431-23-1060','Blayne','McVanamy','bmcvanamycr@goo.ne.jp','Male','98','Minshan','6 Blackbird Street','148-621-1604' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('336-19-9805','Fraser','Dukelow','fdukelowcs@github.com','Male','92','Managua','00211 Gale Drive','664-400-8013' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('227-92-1302','Adi','Bolsover','abolsoverct@rediff.com','Female','110','Nuevo Emperador','28 Chive Park','800-403-7001' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('649-41-7296','Conrade','Pleager','cpleagercu@java.com','Male','101','Solo','8 Steensland Street','331-780-6031' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('277-86-0745','Herman','Feltham','hfelthamcv@unblog.fr','Male','58','Cikondang','924 Washington Point','835-472-8555' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('146-86-2685','Gaspard','Braxay','gbraxaycw@nifty.com','Male','9','Senahú','9099 Miller Point','966-643-0883' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('209-83-3763','Ermentrude','Weeds','eweedscx@delicious.com','Female','88','Huaylillas','70784 Hooker Junction','629-636-7392' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('649-43-8845','Gifford','Bollis','gbolliscy@furl.net','Male','7','Stavanger','43 Beilfuss Place','874-209-2144' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('121-07-6201','Jamey','Jacobovitch','jjacobovitchcz@liveinternet.ru','Male','82','Ciloa','355 Mosinee Way','940-528-8534' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('298-90-3927','Sheffield','Fripps','sfrippsd0@vk.com','Male','34','Patemon','4 Arrowood Avenue','530-549-8576' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('429-78-9166','Whitaker','Obert','wobertd1@about.com','Male','76','Mashi','143 Manitowish Place','187-299-1701' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('440-05-5871','Halley','Punter','hpunterd2@foxnews.com','Female','57','Sajia','50820 Basil Avenue','656-973-5972' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('477-24-1007','Brigg','Lant','blantd3@constantcontact.com','Male','62','Hong’an Chengguanzhen','8 Cambridge Junction','317-830-4691' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('273-32-9368','Sunshine','Amerighi','samerighid4@ebay.com','Female','56','Lingsar','95 Ryan Street','311-980-2955' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('434-02-1754','Spence','Muzzullo','smuzzullod5@google.ru','Male','9','Fengshan','97250 Morning Avenue','150-341-0473' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('361-69-9872','Sheffield','Pallin','spallind6@bluehost.com','Male','45','Qiansuo','48306 Pearson Trail','846-819-8771' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('507-31-5391','Stillman','Frankton','sfranktond7@dailymail.co.uk','Male','69','Treinta y Tres','9959 Prairie Rose Parkway','151-741-9935' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('290-80-8941','Deeyn','Heinreich','dheinreichd8@hhs.gov','Female','63','Numazu','34 Bayside Place','889-263-9767' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('816-22-5066','Car','Gini','cginid9@freewebs.com','Male','15','Zubin Potok','78099 Center Center','937-159-5556' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('719-27-8583','Lydon','Tretwell','ltretwellda@prnewswire.com','Male','40','Borūjen','82 Lukken Road','289-366-0191' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('254-66-8456','Meridel','Malby','mmalbydb@soundcloud.com','Female','82','Denton','754 Quincy Plaza','972-968-6559' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('422-38-6408','Dilan','Hastelow','dhastelowdc@netlog.com','Male','48','Belogorsk','3929 Russell Point','106-369-3744' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('427-69-1171','Mignon','Malcolm','mmalcolmdd@webs.com','Female','93','Caucaia','09 Mifflin Drive','111-496-8872' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('130-50-2634','Eugene','Greenalf','egreenalfde@geocities.jp','Male','52','Adamstown','1275 Twin Pines Center','867-216-6814' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('141-66-4379','Webb','Huby','whubydf@google.es','Male','69','Penco','94 Farwell Lane','514-739-4318' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('445-57-0228','Melosa','Sheehan','msheehandg@privacy.gov.au','Female','35','Sá','20 Aberg Drive','370-885-5079' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('235-33-5291','Karlens','Izat','kizatdh@dot.gov','Male','79','Nizhniye Achaluki','1443 Warner Hill','818-325-6406' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('232-47-3872','Ofella','Housam','ohousamdi@webmd.com','Female','32','Säter','852 Arizona Place','431-389-0665' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('834-55-0173','Prudi','Orkney','porkneydj@taobao.com','Female','25','Cibingbin','32 Bultman Alley','775-730-8502' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('191-88-7980','Amara','Illston','aillstondk@merriam-webster.com','Female','59','Larvik','0 Morningstar Center','736-980-5715' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('702-22-0421','Miguela','Kays','mkaysdl@multiply.com','Female','120','Sisŏphŏn','4 Main Point','583-843-6377' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('761-34-8383','Pooh','Sikorski','psikorskidm@zimbio.com','Female','72','Sekartaji','46 Bunker Hill Drive','767-491-8926' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('578-16-8193','Tripp','Guiel','tguieldn@soundcloud.com','Male','64','Caohe','4517 Redwing Plaza','558-980-8301' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('474-73-1342','Ariel','Arnaez','aarnaezdo@si.edu','Male','4','Phủ Thông','0902 Colorado Crossing','188-879-8943' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('443-41-3238','Land','Stribling','lstriblingdp@youtu.be','Male','48','Kantharalak','029 Artisan Street','552-849-8028' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('415-90-1347','Thane','Feria','tferiadq@icio.us','Male','23','Lobanovo','6709 Randy Road','355-520-5937' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-96-8769','Madlin','Askaw','maskawdr@sourceforge.net','Female','4','Horodne','6 Sherman Way','820-759-9105' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('480-67-4966','Adrien','Mattys','amattysds@google.co.uk','Male','66','Ntoroko','6479 Maryland Center','893-927-3360' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('317-62-4098','Licha','Huygen','lhuygendt@linkedin.com','Female','14','Lens','765 Pierstorff Way','758-555-2683' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('594-28-0614','Isidore','Embling','iemblingdu@ow.ly','Male','14','Sindangsari','774 Arapahoe Court','684-597-6938' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('707-51-2193','Derrik','Treagust','dtreagustdv@i2i.jp','Male','64','Pacajus','59710 Spenser Alley','438-484-7454' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('283-76-9066','Rick','Bramont','rbramontdw@usda.gov','Male','63','Quận Bốn','7 Sommers Terrace','960-895-6605' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('501-37-2659','Dona','Mewitt','dmewittdx@go.com','Female','48','Pangkalan','039 Delladonna Drive','784-690-6391' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('811-36-7190','Karney','Ackenhead','kackenheaddy@parallels.com','Male','27','Watoona','23 Bartillon Hill','304-939-7002' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('161-10-1680','Carley','Hegerty','chegertydz@weebly.com','Female','63','Ludgeřovice','421 Rowland Place','147-118-3959' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('647-24-1221','Cesar','Finlayson','cfinlaysone0@about.me','Male','80','Kuleqi','5 Dapin Hill','767-325-9677' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('170-94-6180','Gavra','Lestor','glestore1@java.com','Female','41','Guleluke','7343 Muir Lane','318-345-8075' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('276-89-5352','Karney','Molloy','kmolloye2@gmpg.org','Male','28','Thành Phố Ninh Bình','3996 High Crossing Drive','694-991-7794' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('508-74-9300','Jenilee','Ruane','jruanee3@parallels.com','Female','112','Krajan Bejagung','592 Northridge Street','141-975-6068' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('711-31-2831','Margret','Housego','mhousegoe4@vistaprint.com','Female','106','Trawniki','54939 Portage Plaza','439-526-8821' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('656-47-1748','Justino','Waldock','jwaldocke5@domainmarket.com','Male','79','Želiv','7 Vahlen Way','664-246-3987' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('743-52-9242','Shane','Hoofe','shoofee6@csmonitor.com','Female','15','Loacan','23106 Roth Junction','261-711-4366' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('386-14-2448','Spencer','Zanni','szannie7@wix.com','Male','19','Matatiele','9854 Mesta Point','410-663-3665' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('746-80-6229','Farlie','Mendenhall','fmendenhalle8@theguardian.com','Male','44','Pangani','01249 Anderson Way','991-462-2998' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('732-11-6320','Merrilee','Kalberer','mkalberere9@fc2.com','Female','119','Succha','62604 Jenna Pass','189-157-5686' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('823-92-2815','Janaya','Borrill','jborrillea@symantec.com','Female','31','Bago City','006 Truax Drive','841-335-0095' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('528-02-1080','Amble','Rosenhaupt','arosenhaupteb@ted.com','Male','30','Chiquinquirá','205 Talmadge Crossing','801-679-7133' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('367-35-5137','Merrel','Alliker','mallikerec@paginegialle.it','Male','1','Радолишта','346 Scott Center','492-363-4504' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('448-53-8235','Alvan','Prowse','aprowseed@nature.com','Male','57','Talisayan','65 Mitchell Circle','928-539-8567' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('554-34-1093','Almire','Dancer','adanceree@imgur.com','Female','117','Qianchuan','654 Colorado Point','428-921-9787' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('624-89-7439','Pauli','Kenrick','pkenrickef@timesonline.co.uk','Female','11','Vindeln','11695 Almo Parkway','634-701-7823' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('107-14-8765','Rorie','Fassan','rfassaneg@sina.com.cn','Female','103','Tarikolot','49138 Eagan Park','573-593-1413' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('839-71-7463','Thedric','Worsnip','tworsnipeh@kickstarter.com','Male','50','Santa Bárbara d'Oeste','37 Fairfield Park','209-967-1201' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('255-22-5194','Leia','Youngs','lyoungsei@prweb.com','Female','33','Capulaan','6045 Mallory Trail','972-243-9952' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('339-78-4811','Lilah','Lorence','llorenceej@dmoz.org','Female','55','Kadubamban','2 Eggendart Court','371-680-9119' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('327-62-7135','Shaylynn','Spellacy','sspellacyek@g.co','Female','68','Suchy Las','86719 Menomonie Terrace','904-929-5777' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('873-51-8496','Glenine','McKeady','gmckeadyel@oakley.com','Female','40','Tanabe','70 Sommers Plaza','634-490-0601' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('610-67-0533','Regina','Jocic','rjocicem@tamu.edu','Female','98','São João de Caparica','90 Park Meadow Circle','567-949-0149' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('745-69-1076','Budd','Tatteshall','btatteshallen@artisteer.com','Male','44','Dodol','670 Grim Way','850-286-4583' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('401-56-0645','Chevalier','Critten','ccritteneo@1und1.de','Male','31','Puma','145 Vera Park','963-659-4682' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('778-05-4147','Karlens','McElroy','kmcelroyep@auda.org.au','Male','97','Yugang','6 Banding Drive','363-387-1814' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('357-24-0158','Paulita','Mawd','pmawdeq@thetimes.co.uk','Female','63','Can-Avid','0 Rockefeller Point','400-564-8454' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('651-99-2424','Allyn','Cuthbertson','acuthbertsoner@theatlantic.com','Male','104','Évodoula','12279 Manitowish Hill','952-250-4564' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('305-41-6982','Emmalee','Cordel','ecordeles@bloomberg.com','Female','103','Saint-Étienne','2843 Ohio Pass','571-785-4696' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('524-93-9265','Alisa','Sevin','asevinet@bloglines.com','Female','83','Sillamäe','637 Kropf Avenue','855-796-5825' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('460-04-9772','Daveen','Wellings','dwellingseu@telegraph.co.uk','Female','37','Falāvarjān','283 Stoughton Circle','491-154-9292' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('115-49-1517','Niall','Greste','ngresteev@dyndns.org','Male','72','Ailigandí','844 Mosinee Park','566-767-2043' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('459-64-0580','Fairlie','Traviss','ftravissew@springer.com','Male','57','Huazhu','6963 Fieldstone Way','496-676-3225' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('321-22-8605','Joannes','Dallaghan','jdallaghanex@1688.com','Female','64','Xingfu','6 Randy Way','818-845-7411' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('329-84-6916','Gypsy','Hardison','ghardisoney@dagondesign.com','Female','7','Mierzęcice','91 John Wall Point','795-161-3851' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('375-31-4682','Kermy','Leece','kleeceez@fda.gov','Male','52','Campok','5 Mariners Cove Lane','338-275-0084' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('159-90-3249','Romain','Wildbore','rwildboref0@tmall.com','Male','92','Kertahayu','5 Saint Paul Hill','833-301-3026' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('229-87-5777','Shara','Tink','stinkf1@va.gov','Female','10','Jiebu','5100 Cherokee Plaza','317-303-7497' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('586-23-8761','Bethanne','Blackmore','bblackmoref2@qq.com','Female','116','Arras','4256 Hayes Parkway','104-860-7372' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('205-43-3159','Yalonda','Reford','yrefordf3@tinyurl.com','Female','74','Bantu','30300 Sundown Trail','250-912-4173' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('231-20-4429','Arabela','Mathis','amathisf4@a8.net','Female','37','Petaling Jaya','9 Oneill Trail','137-593-3755' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('897-99-7105','Jojo','Mulcock','jmulcockf5@unc.edu','Female','43','Garoua Boulaï','84130 Riverside Terrace','363-198-0806' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('495-82-4969','Robby','Dauby','rdaubyf6@amazon.de','Male','53','Liupai','31 Colorado Avenue','308-919-0432' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('893-89-4659','Raimundo','Kluge','rklugef7@spotify.com','Male','44','Fovissste','15221 Kropf Court','999-471-8010' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('608-99-9781','Bennie','Dimmne','bdimmnef8@wikispaces.com','Male','40','Walakeri','5083 Hazelcrest Street','815-514-7505' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('639-57-7668','Ruy','Highwood','rhighwoodf9@cam.ac.uk','Male','100','Butajīra','2 Nevada Lane','355-513-3677' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('581-70-0790','Egon','Snibson','esnibsonfa@xinhuanet.com','Male','61','Guohe','24 Birchwood Junction','357-288-2355' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('890-73-2719','Bonny','Yetman','byetmanfb@i2i.jp','Female','18','Buynaksk','75887 Luster Parkway','466-754-5921' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('405-76-3371','Letizia','Shapera','lshaperafc@bbc.co.uk','Female','8','Villa Constitución','61047 Ryan Street','128-722-1114' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('177-40-0866','Cristin','Berntssen','cberntssenfd@cdc.gov','Female','72','Kukichūō','1976 Dunning Street','138-418-3532' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('662-97-4150','Emerson','Gilroy','egilroyfe@deviantart.com','Male','105','Vaulx-en-Velin','62720 Pearson Parkway','338-747-6682' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('222-59-4017','Consalve','Filewood','cfilewoodff@eepurl.com','Male','86','Kholmsk','902 Montana Hill','878-845-1972' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('392-74-5563','Theodora','Dow','tdowfg@phoca.cz','Female','33','Gaoqiao','5093 Ilene Street','686-843-1225' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('855-50-5710','Chrissie','Royan','croyanfh@yellowpages.com','Male','52','Bungoma','12569 Summerview Junction','548-585-1134' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('545-30-7057','Raphaela','Cawthron','rcawthronfi@alexa.com','Female','54','Panalanoy','09744 Mosinee Circle','930-795-0117' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('324-57-7317','Redford','Joslyn','rjoslynfj@vk.com','Male','79','Islamey','18323 Bonner Terrace','960-276-6819' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('258-28-6857','Adriaens','Blas','ablasfk@shareasale.com','Female','43','Novomykolayivka','83 Merrick Road','216-762-8436' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('386-95-3395','Xaviera','Ebbing','xebbingfl@indiegogo.com','Female','95','Yilan','66822 Anthes Road','725-977-4683' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('552-80-1128','Charlotta','Cowoppe','ccowoppefm@disqus.com','Female','30','Gornji Grad','9 1st Place','338-437-5117' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('886-16-9900','Gabey','Phippin','gphippinfn@ftc.gov','Female','105','Granada','4589 Memorial Pass','166-373-8374' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('749-46-5006','Sid','Brownbridge','sbrownbridgefo@de.vu','Male','22','Karipidita','2220 Marcy Circle','560-884-5120' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('754-74-4595','Margarethe','Illing','millingfp@ocn.ne.jp','Female','31','Panyingkiran','1 Sunbrook Drive','283-402-8577' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('757-20-9013','Helenka','Koppel','hkoppelfq@free.fr','Female','10','Reguengos de Monsaraz','1 Maple Alley','659-189-2028' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('697-41-9474','Biddie','McGrah','bmcgrahfr@wired.com','Female','112','Reshui','84 Eagle Crest Parkway','419-430-3666' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('671-19-7646','Alie','Hamshaw','ahamshawfs@msn.com','Female','100','Lamoso','24 Mitchell Park','401-461-1468' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('747-18-1776','Mayer','Choake','mchoakeft@typepad.com','Male','92','Aquia','7 Mcguire Court','199-190-6629' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('780-47-9900','Viola','Danett','vdanettfu@yahoo.co.jp','Female','101','Villazón','73699 Mitchell Drive','347-174-1885' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('799-90-6236','Kalie','Cuell','kcuellfv@360.cn','Female','35','Paris 10','1 Glendale Court','474-446-4424' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('712-57-7695','Dacy','Kochlin','dkochlinfw@chicagotribune.com','Female','23','Novyy Nekouz','4 Waxwing Drive','768-828-3601' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('270-34-0109','Gilbertina','Sawdy','gsawdyfx@wikia.com','Female','108','Aksu','81311 Montana Junction','714-307-0485' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('864-23-7843','Maryrose','Biglin','mbiglinfy@sciencedaily.com','Female','115','Celje','67734 Kedzie Pass','152-872-0761' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('574-26-1938','Isaiah','Briat','ibriatfz@drupal.org','Male','103','Bazha','60224 Dahle Drive','884-459-2777' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('830-02-6249','Kalinda','Hrinchishin','khrinchishing0@tinypic.com','Female','24','Boucherville','2362 Crowley Way','100-756-3921' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('282-50-5476','Alberta','Faltin','afalting1@ucoz.com','Female','15','Gotemba','85948 Milwaukee Center','943-191-1516' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('383-15-0013','Carlita','Harriot','charriotg2@auda.org.au','Female','71','Iwkowa','6 Comanche Road','242-571-0359' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('714-80-3654','Gerick','Brigginshaw','gbrigginshawg3@telegraph.co.uk','Male','17','Conchucos','4 South Lane','867-307-5830' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('735-08-8211','Zacherie','Bellhouse','zbellhouseg4@ucsd.edu','Male','93','Oslo','7728 Delladonna Point','924-594-6527' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('262-40-0233','Karoly','Hauch','khauchg5@meetup.com','Male','77','Crauthem','41226 Moulton Center','631-984-4462' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('375-39-1260','Alexa','Marklund','amarklundg6@ycombinator.com','Female','59','Ceibas','5337 Warrior Park','808-176-2918' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('845-68-1542','Gaspar','Chaston','gchastong7@omniture.com','Male','28','Burgeo','09040 Melody Way','994-473-4491' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('447-81-9368','Svend','Mickleborough','smickleboroughg8@amazon.com','Male','104','Hyesan-dong','38391 Quincy Junction','656-552-6675' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('885-22-0171','Skipp','Cottem','scottemg9@google.nl','Male','118','Néa Ionía','98866 Bashford Plaza','617-160-3487' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('438-08-9284','Charlie','Longstreeth','clongstreethga@cam.ac.uk','Male','1','Kema','871 Mosinee Avenue','204-767-3647' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('111-81-3052','Lanny','de Merida','ldemeridagb@blogger.com','Female','42','San Joaquin','56460 Bayside Plaza','515-645-5592' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('451-82-8894','Blondell','Smallthwaite','bsmallthwaitegc@woothemes.com','Female','52','Santa Maria','9 Old Shore Junction','158-965-7841' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('258-17-4528','Athena','Twentyman','atwentymangd@businessweek.com','Female','51','Rustāq','82 Dapin Crossing','143-230-4878' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('568-34-0810','Kikelia','Coplestone','kcoplestonege@cocolog-nifty.com','Female','87','Dianshui','628 Dakota Street','677-924-9455' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('170-74-6845','Adlai','Rosle','aroslegf@amazon.de','Male','40','Igang','51 Westend Terrace','360-224-4927' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('898-40-8177','Donavon','Chatin','dchatingg@elegantthemes.com','Male','57','Borås','18 Lighthouse Bay Center','299-681-3371' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('703-39-3826','Aloysia','Brandli','abrandligh@reverbnation.com','Female','49','Cunliji','93622 Hansons Road','795-576-5713' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('769-10-4062','Lynnelle','Thoresby','lthoresbygi@lycos.com','Female','38','Mekarsari','73 Onsgard Park','403-125-3192' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('185-68-7397','Adela','Abazi','aabazigj@ucoz.com','Female','20','Al Ibrāhīmīyah','0658 Fieldstone Park','603-282-8084' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('242-67-1420','Erny','Lomasna','elomasnagk@youtube.com','Male','57','Braço do Norte','8 Cody Place','215-939-9804' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('445-12-3257','Gretel','Huburn','ghuburngl@moonfruit.com','Female','117','Timrå','611 School Way','824-461-8299' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('407-44-3718','Zebulen','Gilyatt','zgilyattgm@gnu.org','Male','97','Dabao','36639 Dunning Plaza','622-535-5951' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('425-56-8967','Karlotta','Cicculini','kcicculinign@wisc.edu','Female','90','Ampara','4281 Tennessee Street','192-350-7832' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('764-38-3849','Evonne','Hourigan','ehourigango@ca.gov','Female','3','Daishan','2 Schlimgen Center','709-321-6835' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('241-19-9255','Nichole','Inglesfield','ninglesfieldgp@goo.gl','Male','13','Río Grande','3 Gateway Drive','107-350-4652' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('659-50-9463','Ber','Dymond','bdymondgq@sbwire.com','Male','12','Rawasan','317 Prentice Crossing','904-649-5715' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('797-26-5684','Zelda','Betteriss','zbetterissgr@sohu.com','Female','113','Marseille','322 Wayridge Lane','528-602-9757' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('495-58-8716','Kerstin','MacCarter','kmaccartergs@msn.com','Female','119','Al Baqāliţah','395 Rowland Terrace','422-452-1986' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('516-37-8985','Junina','Vitler','jvitlergt@webnode.com','Female','35','Vlorë','58 Corscot Circle','231-559-5275' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('364-38-8208','Bess','Castano','bcastanogu@addtoany.com','Female','96','Jiangtou','15345 School Lane','520-720-4606' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('751-88-0320','Dwain','Delve','ddelvegv@sohu.com','Male','117','Haumeni','8442 Moulton Way','748-203-1149' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('231-55-2595','Blondell','Boag','bboaggw@virginia.edu','Female','50','Quevedo','86 Jay Court','121-785-9518' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('850-91-0173','Richardo','Pendrick','rpendrickgx@woothemes.com','Male','51','Sala','2003 Brickson Park Place','143-391-2792' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('320-61-3363','Domenic','Chadbourn','dchadbourngy@sciencedaily.com','Male','76','Jiangqiao','70080 Bultman Avenue','819-969-3178' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('225-36-1756','Dunstan','Lockwood','dlockwoodgz@toplist.cz','Male','119','Shilong','543 Susan Place','618-336-5828' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('308-94-6363','Fredrika','Netherwood','fnetherwoodh0@dell.com','Female','105','Sukaraja','39017 Old Gate Drive','321-856-5441' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('104-28-5695','Monika','Meardon','mmeardonh1@weebly.com','Female','15','Bacnar','2 Jay Terrace','661-565-0405' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('869-36-1335','Freeman','Jammet','fjammeth2@posterous.com','Male','64','Fankeng','8 Kim Park','760-492-4310' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('774-04-2403','Inigo','Yankin','iyankinh3@1und1.de','Male','8','Warmare','91950 Delaware Circle','481-367-1842' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('569-87-5933','Anna-maria','Rubinovitch','arubinovitchh4@cdbaby.com','Female','116','Myeik','176 Ludington Place','326-941-4122' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('714-16-6807','Cirstoforo','Cornbill','ccornbillh5@webnode.com','Male','68','Proptisht','4 Mesta Point','197-543-3761' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('682-68-6202','Nelia','Sweetnam','nsweetnamh6@reference.com','Female','52','Ústí nad Labem','10667 Burrows Center','230-286-8457' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('824-41-4013','Millard','Morhall','mmorhallh7@japanpost.jp','Male','77','Kafir Qala','141 Fairfield Drive','663-848-5958' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('606-96-7597','Maisie','Capper','mcapperh8@wordpress.org','Female','53','Shangcai Zhongxing','352 Holy Cross Lane','124-314-1345' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('333-52-7373','Sherill','Kimblin','skimblinh9@google.cn','Female','76','Naranjal','824 Holy Cross Lane','370-746-3589' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('822-83-4981','Bill','Hagart','bhagartha@google.es','Male','30','Londiani','38 Barnett Street','324-605-4609' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('857-89-5283','Elli','Hayley','ehayleyhb@amazon.co.uk','Female','75','Želešice','32 Clove Crossing','321-708-6123' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('137-22-4597','Bond','Winkworth','bwinkworthhc@google.de','Male','4','Aquitania','798 Porter Street','662-155-1896' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('868-75-3659','Livvy','Zanre','lzanrehd@phoca.cz','Female','96','Al ‘Awjah','7 Springview Junction','822-907-9076' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('577-67-9731','Catherin','Cordrey','ccordreyhe@arstechnica.com','Female','4','Zuocun','575 Manley Drive','838-595-8244' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('800-86-7918','Lenci','Dibb','ldibbhf@usda.gov','Male','96','Couva','945 Red Cloud Alley','492-402-2936' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('417-71-0712','Fredrick','Hammond','fhammondhg@pen.io','Male','50','Ajung','3 Dwight Park','532-446-7724' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('303-30-0120','Ludwig','Mullin','lmullinhh@opera.com','Male','24','Chor','37 Rusk Drive','682-188-7272' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('434-95-4838','Judah','Kalderon','jkalderonhi@hexun.com','Male','41','Buena Esperanza','24 Shopko Plaza','385-539-8317' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('263-99-4506','Flo','Schoroder','fschoroderhj@oakley.com','Female','11','Bolian','892 Daystar Place','221-437-4240' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('616-16-2481','Ruby','Wilbore','rwilborehk@webs.com','Female','60','Qiaotou','4761 Welch Trail','268-266-2239' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('564-08-3682','Claribel','De la Perrelle','cdelaperrellehl@webmd.com','Female','72','Skalat','63580 West Court','651-704-3363' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('153-20-5234','Jorie','Peploe','jpeploehm@technorati.com','Female','35','Amuru','85075 Forster Junction','670-973-3508' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('295-77-7907','Gussi','Bullus','gbullushn@walmart.com','Female','69','Aix-en-Provence','1668 Brentwood Lane','853-736-1375' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('276-97-7880','Ingeberg','Yukhnev','iyukhnevho@ycombinator.com','Female','33','Kirove','926 Corscot Center','844-406-3349' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('364-76-8484','Lew','Beard','lbeardhp@soup.io','Male','63','Balungkopi','9554 Thackeray Lane','159-681-4071' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('215-05-6798','Kandace','Wicklen','kwicklenhq@cnet.com','Female','97','Aquitania','87005 Cherokee Lane','771-664-5133' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('154-06-4072','Isaiah','Esberger','iesbergerhr@redcross.org','Male','90','Nong Khai','45 Red Cloud Point','832-714-8163' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('656-32-9808','Katherina','Phillipps','kphillippshs@redcross.org','Female','87','Nazca','04801 Buell Pass','156-642-7699' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('847-51-8612','Anna-maria','Eastam','aeastamht@e-recht24.de','Female','114','Huaguo','8530 Northview Avenue','220-359-9867' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('134-04-9753','Elie','Jerrans','ejerranshu@prnewswire.com','Female','67','Santaluz','81 Hauk Plaza','877-930-4036' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('631-92-4056','Rickey','Marples','rmarpleshv@illinois.edu','Male','68','Nîmes','87 Holmberg Street','687-184-0463' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('500-80-2616','Stanford','Speed','sspeedhw@accuweather.com','Male','51','Širvintos','92790 Kennedy Court','887-766-0911' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('884-53-7724','Kirbee','Kellaway','kkellawayhx@rediff.com','Female','25','Nuamuzi','6489 Claremont Center','870-479-0099' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('503-20-6546','Marysa','Bertelsen','mbertelsenhy@examiner.com','Female','32','San Salvador','132 Lukken Junction','244-670-2453' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('692-25-0786','Liva','Portress','lportresshz@example.com','Female','22','Kaolack','3328 Mifflin Avenue','421-866-3401' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('264-90-5073','Jens','Monshall','jmonshalli0@theglobeandmail.com','Male','75','Milwaukee','33154 Carberry Point','360-474-9114' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('655-61-8510','Ned','Scrinage','nscrinagei1@wordpress.org','Male','99','Tabuaço','57243 Main Court','582-394-2744' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('829-16-7571','Carlee','By','cbyi2@vkontakte.ru','Female','48','Raniżów','7252 Mandrake Street','802-679-3645' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('611-69-1727','Alfonse','Hanwright','ahanwrighti3@hexun.com','Male','1','Jam','47 Tennyson Hill','181-716-7064' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('681-77-8960','Susannah','Elgy','selgyi4@paginegialle.it','Female','59','Castillos','0 Green Ridge Center','124-192-0864' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('756-69-8687','Powell','Sargant','psarganti5@joomla.org','Male','95','Dārayyā','443 Elgar Junction','360-243-4170' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('401-61-4373','Ruthie','Pegden','rpegdeni6@over-blog.com','Female','94','Trzciana','0294 Division Trail','932-365-1569' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('554-26-5323','Janis','Kochs','jkochsi7@simplemachines.org','Female','106','Bobonan','0 Anniversary Point','896-213-1225' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('322-53-0462','Thea','Sharpless','tsharplessi8@irs.gov','Female','37','Żabia Wola','617 Northwestern Avenue','133-156-8018' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('367-94-7560','Leeland','Sponder','lsponderi9@nytimes.com','Male','34','Pinglin','85 Spohn Terrace','136-436-2205' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('815-37-9907','Maitilde','Pires','mpiresia@ow.ly','Female','95','Tatabánya','1028 Miller Junction','448-564-9055' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('846-28-7803','Bernadette','Mathiot','bmathiotib@state.gov','Female','2','Rumāh','43 Starling Trail','857-690-2425' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('690-64-6618','Louisa','Sallis','lsallisic@cmu.edu','Female','76','Lac du Bonnet','484 Rusk Point','536-750-3824' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('715-12-1824','Serge','Hyrons','shyronsid@wisc.edu','Male','46','Washington','8638 Jackson Crossing','202-111-7231' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('590-06-5941','Laughton','Gunton','lguntonie@ehow.com','Male','45','Hualian','2 Sherman Parkway','534-780-3106' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('161-23-2974','Kat','Schuster','kschusterif@irs.gov','Female','12','Bagan','58 Kenwood Trail','199-491-3607' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('117-74-8185','Creigh','Shildrake','cshildrakeig@trellian.com','Male','16','Radocza','585 Leroy Parkway','139-124-0547' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('514-25-9758','Tamera','Toulch','ttoulchih@dagondesign.com','Female','112','Wukang','76797 Fuller Place','178-316-5718' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('257-39-1921','Zorah','Hammersley','zhammersleyii@google.es','Female','3','Gulod','0384 Grim Center','251-869-7878' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('229-21-9009','Carrissa','Venard','cvenardij@mapy.cz','Female','21','Magugu','582 Daystar Trail','295-280-4909' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('639-77-9264','Laryssa','MacPeake','lmacpeakeik@multiply.com','Female','95','Pomerode','804 Brentwood Center','646-911-2179' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('625-51-2539','Breena','Di Dello','bdidelloil@tinypic.com','Female','59','Canta','8 Sheridan Road','181-488-3615' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('172-64-0302','Christen','Virgo','cvirgoim@photobucket.com','Female','112','Huangji','5 Golf View Crossing','449-225-8286' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('185-13-0771','Barby','Seagood','bseagoodin@skyrock.com','Female','10','Korsakovo','0 Acker Road','438-783-5542' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('268-71-7612','Cyril','Pocklington','cpocklingtonio@netscape.com','Male','14','Banjar Parekan','16813 Twin Pines Street','492-163-5766' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('358-40-0738','Steffen','Brambell','sbrambellip@jiathis.com','Male','4','Tukan','52 Scott Court','387-377-9020' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('179-98-4175','Angy','Marcum','amarcumiq@vk.com','Female','5','Lanos','78 Fulton Crossing','443-320-2992' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('391-04-0599','Alair','Adger','aadgerir@ycombinator.com','Male','92','Växjö','598 Eggendart Court','708-906-4845' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('745-38-4936','Zach','Hawler','zhawleris@yelp.com','Male','39','Kanugrahan','4 Heath Avenue','372-133-1941' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('823-06-1112','Inez','Chudleigh','ichudleighit@arstechnica.com','Female','118','Yecun','4140 Petterle Junction','146-294-2135' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('778-22-7574','Finlay','Well','fwelliu@umich.edu','Male','11','Gunungmalang Satu','082 Blackbird Plaza','190-124-1686' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('231-01-6313','Roley','Lepper','rlepperiv@slideshare.net','Male','32','Wangxian','841 Buell Alley','963-747-2198' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('287-29-9954','Astrix','Swinglehurst','aswinglehurstiw@irs.gov','Female','88','Cucutilla','31 Loftsgordon Road','643-658-7675' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('428-07-2223','Lissa','Garroway','lgarrowayix@arizona.edu','Female','74','Zhulan','3418 Charing Cross Point','540-149-6424' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('873-19-7056','Annalise','Cradock','acradockiy@de.vu','Female','33','Sishan','0125 Heath Crossing','827-912-0759' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('163-60-3632','Mari','Bewshire','mbewshireiz@squarespace.com','Female','10','Catania','1596 Eagan Alley','822-484-1093' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('330-87-1844','Alisha','Treven','atrevenj0@go.com','Female','16','Tupã','22429 Cody Avenue','882-432-3890' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('784-24-9582','Aridatha','Heilds','aheildsj1@squidoo.com','Female','80','Palermo','7376 Riverside Drive','101-965-5074' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('365-62-6980','Brannon','Warrington','bwarringtonj2@si.edu','Male','56','Saint-Jouan-des-Guérets','1 Evergreen Court','644-974-0728' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('109-56-7978','Starla','Skahill','sskahillj3@paypal.com','Female','55','Reisjärvi','004 Delaware Drive','833-394-1987' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('215-04-4887','Patrice','Embery','pemberyj4@thetimes.co.uk','Female','3','Floriano','782 Bunker Hill Pass','407-564-4650' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('400-99-7623','Allis','Derges','adergesj5@constantcontact.com','Female','102','Kuryłówka','757 Reinke Center','335-645-6997' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('402-18-0396','Giorgio','Briddle','gbriddlej6@skype.com','Male','17','Itinga','15 Bashford Way','866-181-5670' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('469-61-4692','Florina','Middlemass','fmiddlemassj7@google.it','Female','49','Dalam','107 Hoard Place','339-976-0057' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('801-54-0342','Allin','Arndtsen','aarndtsenj8@zdnet.com','Male','81','Mabini','04 Crowley Avenue','249-269-5923' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('674-75-8505','Lemmy','Wannop','lwannopj9@myspace.com','Male','80','Cibangban Girang','283 Miller Junction','277-422-7620' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('658-20-2500','Marwin','Rossbrooke','mrossbrookeja@nbcnews.com','Male','75','Valenciennes','0672 Harbort Park','678-148-1483' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('699-07-9177','Junie','Seres','jseresjb@elpais.com','Female','16','Polloc','5 Schmedeman Center','490-347-8441' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('599-84-5221','Cordey','Dron','cdronjc@yahoo.co.jp','Female','107','Alagoinhas','3545 Larry Trail','486-692-6267' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('733-26-6807','Bidget','Benedettini','bbenedettinijd@lycos.com','Female','98','Aksakovo','5188 South Center','859-666-9367' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('837-39-7260','Dar','Maccraw','dmaccrawje@scientificamerican.com','Male','109','Murygino','43 Independence Street','398-816-6323' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('218-07-8740','Alleen','Wroughton','awroughtonjf@php.net','Female','32','Guxian','43387 Cordelia Hill','280-168-7373' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('455-30-0380','Franklin','Chantillon','fchantillonjg@foxnews.com','Male','97','Pocohuanca','2572 Westend Drive','768-956-8965' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('282-90-5809','Ariana','Yitzovicz','ayitzoviczjh@youtu.be','Female','40','Vorontsovka','47 Anhalt Terrace','590-150-9178' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('217-48-8271','Kiley','Bernini','kberniniji@godaddy.com','Male','32','Wufeng','59121 Rowland Terrace','946-845-7160' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('524-77-9604','Elmira','Pech','epechjj@seesaa.net','Female','4','Fontem','6425 Corry Place','430-115-9134' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('343-36-8395','Doll','Gosnay','dgosnayjk@google.fr','Female','36','Changning','08 Harper Street','957-681-1606' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('488-91-6737','Kate','McCullouch','kmccullouchjl@irs.gov','Female','109','Prawdzinski','615 Dahle Terrace','281-427-2244' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('138-34-5449','Ginny','Scala','gscalajm@google.co.jp','Female','37','Gaoqiao','7410 Waxwing Alley','302-313-9703' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('693-04-1403','Baryram','Shill','bshilljn@archive.org','Male','103','Bol’shoye Skuratovo','99163 Pond Court','412-756-3819' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('678-84-3962','Lazar','Twiname','ltwinamejo@berkeley.edu','Male','114','Buarcos','1 Prairieview Parkway','632-852-8852' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('300-54-2008','Kaitlyn','Rist','kristjp@merriam-webster.com','Female','82','Antsohimbondrona','66919 Southridge Lane','532-213-3166' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('288-37-7372','Laura','Cisneros','lcisnerosjq@networksolutions.com','Female','29','Vila Nova','5616 Badeau Way','816-632-3189' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('817-55-2875','Elsa','Bains','ebainsjr@nbcnews.com','Female','49','Tabouda','81426 Columbus Lane','701-954-3179' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('619-75-4227','Maurine','Bartaloni','mbartalonijs@over-blog.com','Female','92','Wat Bot','51096 Bluestem Plaza','237-915-2902' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('470-09-9132','Briggs','MacKnockiter','bmacknockiterjt@linkedin.com','Male','28','Hesi','052 Victoria Parkway','254-157-4176' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('280-12-3925','Ransell','Tibbs','rtibbsju@t.co','Male','112','Isyangulovo','0 Red Cloud Avenue','336-224-7075' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('503-50-1101','Winona','Ber','wberjv@engadget.com','Female','58','Kangmei','53833 Westport Parkway','663-601-4267' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('347-15-9469','Addy','Edger','aedgerjw@ycombinator.com','Female','30','Edinburgh','01376 Granby Parkway','339-404-9939' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('895-83-1338','Martica','Reimers','mreimersjx@live.com','Female','100','Dudchany','808 Ryan Drive','523-814-8826' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('116-26-0800','Egor','Service','eservicejy@ihg.com','Male','116','Baima','4555 Delladonna Terrace','527-843-5142' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('184-70-9229','Wiley','Tomaello','wtomaellojz@quantcast.com','Male','96','Butou','6613 Cardinal Avenue','219-827-5176' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('700-47-7379','Valera','Perin','vperink0@naver.com','Female','9','Campok','24 Ludington Drive','148-756-6738' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('683-27-7637','Marylou','Rainville','mrainvillek1@ycombinator.com','Female','29','Nagasaki-shi','5 Vermont Hill','983-695-0097' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('343-29-1533','Winonah','Littell','wlittellk2@wiley.com','Female','114','Hyrynsalmi','8 Cordelia Crossing','192-231-0702' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('380-37-7164','Florencia','Drew-Clifton','fdrewcliftonk3@fotki.com','Female','71','Ożarów','5 Armistice Way','982-176-5438' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('167-60-2304','Analise','Fairpool','afairpoolk4@cloudflare.com','Female','80','Bristol','73667 Schiller Alley','729-164-9351' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('491-34-3387','Zollie','Harper','zharperk5@is.gd','Male','6','Ishëm','1682 Crownhardt Trail','465-294-0637' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('536-84-3830','Benoite','Wedge','bwedgek6@flavors.me','Female','100','Azenha','6 Superior Center','758-701-4969' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('538-86-1339','Alexia','Adame','aadamek7@phoca.cz','Female','21','Talacogon','63244 Mayer Point','243-750-5315' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('816-60-2379','Ewen','Grewcock','egrewcockk8@disqus.com','Male','88','Chrzanów','1 Sundown Junction','209-972-0551' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('133-86-2808','Tremaine','Duffie','tduffiek9@vkontakte.ru','Male','66','Las Vegas','1 Bellgrove Road','702-319-7001' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('867-23-4601','Dru','Carreyette','dcarreyetteka@senate.gov','Female','57','Kunmi Erdi','749 Spaight Center','297-988-5872' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('638-44-5166','Vail','Syddon','vsyddonkb@free.fr','Male','114','Göteborg','379 Rusk Terrace','634-515-5076' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('634-91-8489','Benjy','Cuncarr','bcuncarrkc@photobucket.com','Male','75','Qiulu','761 Texas Alley','541-896-2111' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('262-26-1155','Suellen','Manach','smanachkd@bigcartel.com','Female','27','Taytayan','2601 Northview Park','225-454-2382' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('503-99-6069','Scotty','De Lascy','sdelascyke@deviantart.com','Male','98','Bondy','9 Spaight Parkway','100-721-3394' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('153-94-7321','Vittoria','Readitt','vreadittkf@lulu.com','Female','8','Raglan','5478 Wayridge Pass','739-288-1604' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('238-35-9050','Clerissa','Lynskey','clynskeykg@ow.ly','Female','96','Maishi','1257 Glendale Road','550-467-7147' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('530-39-7357','Elsworth','Boeck','eboeckkh@noaa.gov','Male','2','Senlis','3899 Fuller Parkway','275-126-2311' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('463-97-8065','Jess','Maylott','jmaylottki@pinterest.com','Male','103','Larnaca','851 Reindahl Way','839-784-8826' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('551-44-4971','Anabelle','Bortoletti','abortolettikj@xinhuanet.com','Female','31','Shuangshipu','9624 Red Cloud Trail','122-881-4221' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('517-57-9513','Kiel','Tadd','ktaddkk@aboutads.info','Male','108','Dongtian','411 Pawling Plaza','878-829-8634' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('872-14-7768','Trudey','Christley','tchristleykl@ebay.com','Female','85','Tapiramutá','31 Westerfield Circle','373-253-9087' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('152-04-0062','Hermina','Antcliff','hantcliffkm@answers.com','Female','19','Amboasary','396 Swallow Park','785-127-2902' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('765-47-9382','Orazio','Paolicchi','opaolicchikn@pen.io','Male','12','Fažana','0654 Anniversary Road','723-271-4634' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('114-69-5068','Zared','McKeand','zmckeandko@bizjournals.com','Male','11','Atabayan','8 Knutson Pass','566-840-6762' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('747-85-8040','Sara-ann','Deguara','sdeguarakp@toplist.cz','Female','63','Begejci','25 Commercial Plaza','233-768-6863' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('691-48-3905','Glennie','Laterza','glaterzakq@msu.edu','Female','6','Rodionovo-Nesvetayskaya','9479 Rigney Crossing','858-589-6957' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('723-68-3401','Renate','Quinnell','rquinnellkr@wufoo.com','Female','4','Glogovac','8786 Onsgard Trail','476-884-7160' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('580-30-7999','Hetty','Tallyn','htallynks@topsy.com','Female','10','Jianggezhuang','43225 Mallard Avenue','204-978-6359' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('767-19-9971','Fielding','Mariault','fmariaultkt@tmall.com','Male','62','As Sawdā','84 Eggendart Avenue','481-486-3481' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('535-12-1125','Tracie','Feehily','tfeehilyku@mysql.com','Male','50','Perehonivka','07695 Dunning Avenue','192-406-6729' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('665-75-7670','Reece','Halvosen','rhalvosenkv@engadget.com','Male','35','Yaransk','140 Lunder Circle','707-979-4934' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('577-99-4063','Herb','Guerri','hguerrikw@facebook.com','Male','33','Khromtau','9 Mayfield Pass','531-838-5084' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('225-02-5898','Mellicent','deKnevet','mdeknevetkx@bloomberg.com','Female','101','Avignon','2181 Monica Plaza','243-621-5586' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('400-48-7785','Charleen','Swalteridge','cswalteridgeky@msu.edu','Female','8','Gnojnik','3988 Caliangt Trail','230-115-4646' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('524-59-5524','Ludvig','Shooter','lshooterkz@123-reg.co.uk','Male','106','Taipingxu','520 North Park','252-898-6138' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('196-35-4578','Marcelo','Martinello','mmartinellol0@histats.com','Male','73','Gaotian','27991 Maywood Street','661-731-5737' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('703-89-9043','Willetta','Wheaton','wwheatonl1@yandex.ru','Female','80','Mao','01 Mariners Cove Drive','922-559-0415' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('636-33-5741','Enriqueta','O'Hengerty','eohengertyl2@comcast.net','Female','26','Mobile','1 Mariners Cove Parkway','251-662-4471' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('290-21-6404','Smith','Polon','spolonl3@wix.com','Male','4','Virden','1677 Pine View Park','470-913-5432' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('809-17-4767','Hynda','Dalgarno','hdalgarnol4@sohu.com','Female','69','Santiago de Chuco','7599 Blaine Circle','710-114-0015' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('809-72-6752','Hercules','Liggett','hliggettl5@nydailynews.com','Male','75','Andramasina','48350 Merry Way','633-137-6464' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('399-04-1733','Letta','Espinet','lespinetl6@sphinn.com','Female','86','Judita','730 Dottie Terrace','589-759-4206' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('530-08-7201','Skelly','Dinsmore','sdinsmorel7@auda.org.au','Male','28','Communal','04937 Anthes Alley','496-171-2846' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('226-29-7822','Bellina','Persse','bperssel8@kickstarter.com','Female','98','Paris 10','1 West Avenue','773-118-5392' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('593-84-5044','Mollie','McNess','mmcnessl9@youku.com','Female','94','Huayllo','90335 Claremont Drive','495-999-3631' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('651-91-9459','Phaedra','Eilhermann','peilhermannla@skype.com','Female','73','Lebak','5884 Steensland Court','248-593-4569' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('793-19-1888','Sashenka','Buck','sbucklb@spotify.com','Female','101','Ibadan','02 Carey Terrace','378-283-1613' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('550-56-5749','Philip','Jenton','pjentonlc@arizona.edu','Male','74','Villaba','1 Sundown Lane','242-742-7650' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('184-06-3942','Margalo','Dellenbrook','mdellenbrookld@addthis.com','Female','50','Fengshan','487 2nd Trail','189-316-2155' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('665-03-8666','Constancia','Plunkett','cplunkettle@g.co','Female','1','Şaḩneh','50 Express Avenue','329-905-6568' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('382-53-5373','Ferrell','Lannen','flannenlf@icio.us','Male','68','Lianozovo','82 Carpenter Way','470-927-0885' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('650-68-1959','Marcela','Heninghem','mheninghemlg@samsung.com','Female','75','Saransk','3 Alpine Pass','101-178-8893' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('480-70-7112','Ab','Faivre','afaivrelh@wikia.com','Male','77','Guluoshan','35894 Sauthoff Avenue','211-356-1146' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('709-93-2858','Hermie','Toma','htomali@ucsd.edu','Male','32','Nielisz','97 Manitowish Center','246-227-0224' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-69-7424','Ddene','Digan','ddiganlj@shutterfly.com','Female','16','Tawangrejo','758 Towne Point','689-747-3963' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('142-62-2496','Grantley','Crank','gcranklk@imgur.com','Male','12','Luobuqiongzi','04 Starling Way','142-170-7144' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('837-58-1568','Bunni','Claypoole','bclaypoolell@google.it','Female','63','Slobodka','8 Birchwood Avenue','625-671-6157' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('771-91-5719','Claus','Rawstorn','crawstornlm@shop-pro.jp','Male','118','Portet-sur-Garonne','6167 Golden Leaf Way','744-768-7304' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('662-30-9216','Eddy','Grenshiels','egrenshielsln@wufoo.com','Male','108','Tangping','29 Florence Center','193-327-1205' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('601-31-4245','Suzanna','Tipler','stiplerlo@de.vu','Female','90','Kodra','600 Stephen Drive','673-659-8368' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('838-65-9730','Arabella','Linck','alincklp@taobao.com','Female','66','Oranzherei','27828 Mockingbird Plaza','149-882-1014' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('297-73-0769','Elvina','Kerton','ekertonlq@is.gd','Female','54','Štore','927 Morning Hill','502-856-5873' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('205-91-6064','Rutherford','Samart','rsamartlr@scribd.com','Male','43','Soito','41742 Lillian Junction','607-977-8067' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('195-59-5699','Corette','Stenning','cstenningls@vimeo.com','Female','57','Keles Timur','3 Sachs Junction','820-549-1735' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('293-37-6024','Eal','Vooght','evooghtlt@dmoz.org','Male','41','Bani','7263 Toban Way','882-815-9975' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('397-82-3278','Ardella','Swett','aswettlu@japanpost.jp','Female','4','Jevišovice','92 Lukken Hill','775-204-1511' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('413-34-3261','Gabbie','Morrison','gmorrisonlv@wiley.com','Male','102','Taounza','4546 Linden Alley','745-179-9809' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('622-15-7713','Adi','De Gouy','adegouylw@tumblr.com','Female','12','Mogoditshane','0 Old Shore Crossing','976-519-0275' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('822-99-0512','Vasili','Botcherby','vbotcherbylx@shop-pro.jp','Male','21','Dabola','41 Thackeray Crossing','991-788-0766' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('697-51-3621','Krystyna','Capstack','kcapstackly@booking.com','Female','28','Los Santos','0 Farragut Center','277-779-1834' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('772-66-6379','Susette','Maynell','smaynelllz@acquirethisname.com','Female','17','Wanzu','5100 Wayridge Hill','591-217-1416' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('143-42-7390','Dyan','Propper','dpropperm0@studiopress.com','Female','36','Podosinovets','3953 Basil Court','383-999-8254' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('281-28-3446','Erhart','Hankinson','ehankinsonm1@flavors.me','Male','115','Bodø','10810 Chinook Pass','781-969-5493' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('593-20-5756','Bert','De Zuani','bdezuanim2@mediafire.com','Female','107','Haokou','7 Village Green Street','731-666-6789' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('850-72-1709','Dolly','Wait','dwaitm3@skyrock.com','Female','108','Chitré','8787 Esker Drive','311-928-2754' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('267-06-8969','Alvie','Graalman','agraalmanm4@nhs.uk','Male','74','Kirovsk','485 Cherokee Alley','296-397-9164' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('718-82-9703','Sarah','Bearsmore','sbearsmorem5@foxnews.com','Female','44','Glubokiy','2 Lillian Alley','394-931-4983' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('116-18-7958','Ibrahim','Scraney','iscraneym6@ycombinator.com','Male','87','El Crucero','0610 Texas Alley','674-315-8535' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('575-50-0341','Karola','Colvine','kcolvinem7@dailymotion.com','Female','18','Tambakan','2787 Bultman Terrace','186-526-2775' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('496-91-6451','Loella','Malyan','lmalyanm8@jigsy.com','Female','117','Zhaitou','0452 Jenna Pass','126-551-5504' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('476-67-3972','Aubrey','Elster','aelsterm9@jugem.jp','Male','43','Pulangbato','79 Loeprich Trail','805-229-9778' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('117-66-9584','Brynna','Bruyntjes','bbruyntjesma@senate.gov','Female','110','Xian’an','924 Southridge Plaza','324-846-3445' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('756-53-5504','Eldridge','Gadie','egadiemb@aboutads.info','Male','43','Khueang Nai','0 Green Ridge Road','476-197-1353' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('641-68-1156','Nicola','Dignam','ndignammc@indiegogo.com','Male','54','Saverne','52727 Lunder Way','410-689-8286' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('547-02-8671','Godwin','Buckbee','gbuckbeemd@themeforest.net','Male','3','Yotsukaidō','22 Swallow Drive','805-818-0741' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('212-81-4546','Tedra','Diloway','tdilowayme@unesco.org','Female','72','Pictou','8648 Hoard Terrace','408-701-3130' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('380-08-8445','Zolly','Alvar','zalvarmf@sogou.com','Male','97','Rakičan','29 Pierstorff Pass','785-533-8217' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('309-42-5167','Row','Pering','rperingmg@fda.gov','Female','65','Lizi','5 Warbler Lane','447-236-4318' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('517-33-2596','Moishe','Summerlee','msummerleemh@shop-pro.jp','Male','51','Cibatuireng','1 Hoard Plaza','841-382-8649' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('712-22-9726','Trisha','Peploe','tpeploemi@auda.org.au','Female','79','Orlando','0942 Morning Terrace','954-544-2674' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('853-02-7292','Fitz','Birkenhead','fbirkenheadmj@wikia.com','Male','10','As Sālimīyah','581 Superior Avenue','785-434-1755' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('214-49-1575','Ban','Jankin','bjankinmk@usatoday.com','Male','36','Pontes e Lacerda','839 Rutledge Crossing','814-511-1651' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('271-17-1334','Ashleigh','Yetman','ayetmanml@scribd.com','Female','52','Gunung Sugih','818 Fairfield Center','668-376-1044' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('368-45-5510','Delphine','Backhouse','dbackhousemm@tumblr.com','Female','114','Karajeun','7058 Cordelia Way','437-394-3423' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('459-06-0435','Julia','Kahn','jkahnmn@mapquest.com','Female','59','Thị Trấn Thuận Châu','18 Service Drive','585-399-7273' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('241-02-9032','Lockwood','Brandel','lbrandelmo@redcross.org','Male','28','Futuroscope','6235 Fuller Circle','230-639-7468' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('643-35-1835','Algernon','Roddan','aroddanmp@stanford.edu','Male','67','Huanglong','60 Mockingbird Drive','441-148-0247' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('752-29-3238','Darby','Lenormand','dlenormandmq@bigcartel.com','Male','101','Castelo','45436 Sheridan Parkway','645-851-5153' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('359-61-5022','Beitris','Abadam','babadammr@skype.com','Female','54','Nueva Requena','6 Scott Crossing','902-395-6856' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('809-07-0872','Fred','Heeran','fheeranms@odnoklassniki.ru','Male','118','Monte Novo','45406 Paget Circle','974-523-0598' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('323-15-5791','Yetta','Sudran','ysudranmt@hp.com','Female','86','Wenquan','8 Derek Park','849-697-9423' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('166-26-5565','Fanny','Gutans','fgutansmu@virginia.edu','Female','67','Staropyshminsk','5 Clarendon Street','751-713-9579' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('537-73-5487','Nobe','Espinet','nespinetmv@google.com.au','Male','51','Bang Racham','047 Armistice Place','660-796-8898' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('143-26-8051','Thorpe','Tetlow','ttetlowmw@sfgate.com','Male','18','Puncaksempur','4028 Elka Road','136-890-2029' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('427-49-0635','Chandler','Winthrop','cwinthropmx@angelfire.com','Male','60','Cáceres','47 Farragut Court','208-243-6764' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('136-36-0285','Lodovico','Daykin','ldaykinmy@123-reg.co.uk','Male','55','El Porvenir','96156 Golden Leaf Drive','940-892-9838' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('528-95-4684','Dolf','Rodwell','drodwellmz@ask.com','Male','49','Limoges','24494 Petterle Way','975-240-8903' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('381-55-8279','Eran','Navarijo','enavarijon0@answers.com','Female','14','Preserje pri Radomljah','413 Del Sol Plaza','510-596-9197' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('437-24-5113','Dean','Labro','dlabron1@hugedomains.com','Male','16','Phoenix','189 Evergreen Court','602-117-1629' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('764-90-3094','Christian','Leupold','cleupoldn2@youtu.be','Female','1','Prabuty','31 Havey Drive','382-205-0771' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('172-20-6915','Algernon','Morter','amortern3@vinaora.com','Male','23','Duwayr Raslān','336 Maywood Pass','692-643-7535' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('778-69-0191','Shoshanna','Ohanessian','sohanessiann4@dell.com','Female','12','Lupak','62 Manufacturers Way','443-406-6763' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('685-66-8779','Miriam','Profit','mprofitn5@abc.net.au','Female','119','Wierzchosławice','475 Kropf Trail','431-178-8331' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('211-71-4598','Ambrosio','Leedes','aleedesn6@moonfruit.com','Male','75','‘Aşīrah ash Shamālīyah','6 Crest Line Crossing','273-961-4796' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('645-87-7431','Vitia','Cuphus','vcuphusn7@cbsnews.com','Female','105','Marantao','94147 Lillian Plaza','743-863-0821' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('808-14-3607','Brnaba','Curwen','bcurwenn8@devhub.com','Male','58','Nong Kung Si','41221 Nancy Plaza','156-214-7350' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('806-20-8485','Florida','O'Mannion','fomannionn9@prlog.org','Female','53','Shijing','9 Waxwing Place','566-720-3419' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('542-56-5312','Etta','Swannie','eswanniena@list-manage.com','Female','103','Żychlin','9 Charing Cross Alley','411-738-6222' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('406-62-6552','Wayland','Daldry','wdaldrynb@intel.com','Male','80','Laxou','38305 Anzinger Junction','631-144-8428' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('155-14-8090','Karla','Bramstom','kbramstomnc@google.co.uk','Female','36','Groznyy','5 Dixon Lane','342-534-7235' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('504-97-5077','Mathian','Plott','mplottnd@parallels.com','Male','36','Repatriación','5249 Paget Terrace','459-972-3429' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('722-93-4290','Pancho','Hill','phillne@ning.com','Male','100','Velykyy Burluk','7 Cardinal Terrace','561-249-0876' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('378-69-5102','Orsa','Piers','opiersnf@newyorker.com','Female','67','Praia das Maçãs','245 Sycamore Park','407-800-1462' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('764-11-1400','Jermaine','Karlowicz','jkarlowiczng@google.ru','Male','26','Sūrak','7 Florence Court','133-272-2143' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('603-17-0659','Blondelle','Henriet','bhenrietnh@princeton.edu','Female','71','Alchevs’k','25 Stang Lane','349-336-6581' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('721-99-1040','Blondie','Stute','bstuteni@tumblr.com','Female','86','Stara Kornica','232 Pond Center','863-443-9687' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('624-69-3287','Buddy','Stote','bstotenj@nyu.edu','Male','18','Yeghegnut','30183 Manufacturers Hill','804-812-9664' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('631-96-4009','Susannah','Rameaux','srameauxnk@wunderground.com','Female','31','Bang Ban','96 Tennessee Terrace','618-163-1211' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('213-31-5142','Dreddy','Rackstraw','drackstrawnl@statcounter.com','Female','107','Neuilly-sur-Seine','9 Armistice Pass','276-923-7192' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('712-21-0025','Keeley','Nan Carrow','knancarrownm@google.com','Female','57','Krajan','91634 School Drive','829-351-1794' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('300-26-4175','Freedman','Hodgen','fhodgennn@sciencedirect.com','Male','93','Pieńsk','92702 1st Park','178-952-6521' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('287-17-7125','Alvan','Botwright','abotwrightno@indiatimes.com','Male','56','Valinhos','77 Nelson Circle','499-833-4141' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('869-16-0946','Enos','Pruvost','epruvostnp@skype.com','Male','72','Chigorodó','511 Ridgeview Street','932-805-4805' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('879-30-7410','Tommie','Howselee','thowseleenq@photobucket.com','Female','111','Koška','28 Harper Park','344-567-4927' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('522-21-1016','Brandtr','Everall','beverallnr@dedecms.com','Male','34','Luknovo','68329 Kingsford Circle','975-452-8577' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('704-12-6943','Collette','Wickes','cwickesns@reverbnation.com','Female','85','Gaogongdao','0 Towne Lane','912-772-4315' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('363-16-1441','Donella','Ervine','dervinent@miibeian.gov.cn','Female','56','Ćuprija','973 Warbler Lane','921-767-2195' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('324-03-8814','Gabi','Sergean','gsergeannu@quantcast.com','Male','7','Pleiku','1 Kings Pass','594-604-0523' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('678-86-8916','Derwin','Segrave','dsegravenv@berkeley.edu','Male','70','Garanhuns','29119 Golf Course Park','392-494-8848' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('296-66-9356','Colene','Klimowski','cklimowskinw@patch.com','Female','14','Iberia','8943 Arizona Alley','794-971-6964' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('693-37-9411','Glennie','Messom','gmessomnx@nsw.gov.au','Female','93','Pontevedra','50708 Alpine Point','129-807-0011' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('266-53-0895','Dody','Markwelley','dmarkwelleyny@bluehost.com','Female','51','Mesyagutovo','77 Golden Leaf Circle','164-353-6662' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('636-35-1595','Panchito','Mariaud','pmariaudnz@china.com.cn','Male','78','Bétérou','929 Laurel Drive','814-253-3827' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('158-67-0324','Virge','Sibery','vsiberyo0@ebay.co.uk','Male','75','Ribeirinha','7676 Sutteridge Point','266-896-4908' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('209-96-0049','Concettina','Furnival','cfurnivalo1@businessinsider.com','Female','22','Ribeirão Pires','66048 Brickson Park Pass','201-896-7881' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('864-50-1488','Shawn','Forestall','sforestallo2@wordpress.com','Male','92','Rizokárpaso','77666 Rowland Pass','690-259-0710' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('624-64-4253','Lindsey','Stocken','lstockeno3@skype.com','Male','36','Tumpang','9339 Barnett Pass','487-952-1297' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('188-99-3666','Nari','Camin','ncamino4@jimdo.com','Female','67','Kayes','8 Monterey Hill','661-241-9208' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('756-38-8790','Ketti','Stace','kstaceo5@a8.net','Female','105','Torres Novas','5 Michigan Junction','902-707-1705' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('861-99-2666','Walt','Biggs','wbiggso6@toplist.cz','Male','79','Páno Polemídia','39776 Lotheville Alley','425-130-8923' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('857-71-7844','Paul','Vyse','pvyseo7@wsj.com','Male','51','Belsk Duży','3 Dryden Court','815-817-2193' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('400-67-6650','Tony','Rubertis','trubertiso8@wikispaces.com','Male','31','Cam Ranh','57 Linden Street','244-155-4273' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('682-01-0010','Lizzy','Mc Meekin','lmcmeekino9@jiathis.com','Female','118','Lukavice','68651 Toban Circle','957-349-2544' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('661-34-7139','Bax','Tole','btoleoa@noaa.gov','Male','47','Arroyo Naranjo','0 Lukken Hill','197-585-9964' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('442-04-4766','Uriel','Thor','uthorob@wp.com','Male','108','Mpophomeni','367 Anniversary Terrace','853-418-4608' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('266-93-5844','Justen','Coots','jcootsoc@xrea.com','Male','27','Mahalapye','68 Schlimgen Road','834-416-8316' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('755-49-1031','Vikky','Hatterslay','vhatterslayod@flavors.me','Female','13','Novomoskovs’k','30897 Hallows Street','261-360-3310' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('742-58-5916','Staci','Lung','slungoe@1und1.de','Female','47','Jian’ou','33 Nova Trail','792-208-3418' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('220-55-0315','Frants','Doleman','fdolemanof@cnn.com','Male','83','Fuente de Oro','19471 Scoville Drive','866-579-4767' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('101-59-2148','Devonne','Revely','drevelyog@google.de','Female','104','Shalkar','8600 Mandrake Junction','548-113-5558' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('172-75-3555','Kynthia','McMakin','kmcmakinoh@desdev.cn','Female','46','Pruszków','215 Shelley Circle','313-153-1440' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('743-59-5576','Stevie','Greasty','sgreastyoi@youku.com','Male','41','Sekolan','22 Harper Street','940-250-0979' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('427-76-0461','Harald','Baline','hbalineoj@sphinn.com','Male','27','Żoliborz','052 Jana Avenue','243-727-7654' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('564-70-9540','Adolphe','Pawlik','apawlikok@lycos.com','Male','8','Tulusmulyo','47 Farragut Terrace','243-127-8242' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('527-86-4561','Emmalynn','Caneo','ecaneool@eventbrite.com','Female','76','San Juan Ixcoy','3 Graedel Circle','235-758-8591' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('158-61-9862','Berny','Rapsey','brapseyom@squarespace.com','Female','30','Doro Oo','46091 Westend Drive','884-963-3485' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('410-73-0688','Aida','Bendley','abendleyon@hugedomains.com','Female','99','Pescadería','46268 Marquette Street','894-873-0676' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('314-19-9921','Deloria','Moniker','dmonikeroo@engadget.com','Female','120','Bloemhof','66603 Northport Hill','491-332-0407' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('292-79-7796','Orion','Negri','onegriop@goo.gl','Male','65','Aramayuan','04718 Crownhardt Hill','791-442-4453' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('734-37-6817','Griz','Shoosmith','gshoosmithoq@about.me','Male','106','Sindangkerta','4512 Basil Trail','539-914-2480' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('836-52-7350','Orion','Howlings','ohowlingsor@arizona.edu','Male','53','Maulawin','2659 Brentwood Way','420-287-8660' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('268-28-0502','Garik','Crutcher','gcrutcheros@angelfire.com','Male','55','Goyty','51 Anniversary Road','797-408-1439' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('690-98-7669','Gasper','Mosdill','gmosdillot@ask.com','Male','64','Dukuhbadag','86 Caliangt Plaza','270-837-4147' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('246-79-3066','Rebbecca','Bunker','rbunkerou@google.com.au','Female','45','Bugana','31070 Cordelia Hill','717-795-5848' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('390-99-5402','Mollee','Dibnah','mdibnahov@yandex.ru','Female','14','Akarakar','52 Homewood Avenue','991-954-7319' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('532-21-1688','Marlyn','Stanmer','mstanmerow@cyberchimps.com','Female','109','Pitogo','127 Jenna Place','395-965-7478' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('778-73-0017','Werner','Bernardinelli','wbernardinelliox@cafepress.com','Male','38','Qorashina','060 Clemons Junction','629-114-6118' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('221-04-2042','Deanna','Gerrets','dgerretsoy@live.com','Female','115','Jasienica','0359 Fairfield Lane','475-572-1809' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('533-13-2694','Jerry','McClarence','jmcclarenceoz@house.gov','Female','112','Mont-de-Marsan','01269 Pennsylvania Point','667-114-2508' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('812-81-7193','Essy','Hardacre','ehardacrep0@hao123.com','Female','110','Marcabamba','0797 Jenifer Avenue','963-768-5058' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('442-52-4506','Mayor','Flye','mflyep1@weibo.com','Male','67','Sapataria','6873 Barby Way','872-851-5793' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('221-72-6895','Benedikta','Thorndycraft','bthorndycraftp2@privacy.gov.au','Female','5','Përmet','746 Southridge Hill','347-224-3549' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('694-08-6469','Gail','Corbishley','gcorbishleyp3@wiley.com','Female','116','Listowel','11 Sherman Hill','781-284-3372' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('168-17-9361','Forest','Scown','fscownp4@dailymotion.com','Male','89','Xiaozhai','680 Eastwood Hill','906-452-6052' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('317-06-8591','Egan','Kuhnwald','ekuhnwaldp5@illinois.edu','Male','44','Satte','66584 Tomscot Parkway','467-238-6189' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('842-28-0308','Brantley','Stanlake','bstanlakep6@nsw.gov.au','Male','50','Maliang','95481 Steensland Road','509-333-3422' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('198-29-7077','Vanya','Roset','vrosetp7@dailymotion.com','Male','27','Louisville','94 Buell Hill','502-577-9805' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('565-08-1797','Cairistiona','Le Ball','cleballp8@geocities.com','Female','47','Uzlovaya','388 Iowa Junction','635-432-8982' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('818-09-8351','Babara','Albiston','balbistonp9@salon.com','Female','44','Toba Tek Singh','231 Menomonie Avenue','292-420-1825' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('143-82-4593','Bambie','Heineking','bheinekingpa@who.int','Female','53','Taishan','696 Schiller Terrace','949-842-4978' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('150-82-0296','Claudius','Boyton','cboytonpb@tmall.com','Male','98','Cereté','710 Meadow Valley Alley','860-714-6969' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('161-50-3854','Roldan','Birrel','rbirrelpc@t-online.de','Male','45','Kuzhorskaya','3102 Pennsylvania Alley','796-233-7316' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('124-54-4126','Kitty','Cridge','kcridgepd@homestead.com','Female','40','Andong','22 Dixon Parkway','633-352-1687' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('627-52-6567','Marisa','Codron','mcodronpe@prweb.com','Female','117','Azacualpa','1624 Arizona Hill','219-522-9140' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('159-48-1193','Dewitt','Jeyes','djeyespf@google.ru','Male','98','Busalangga','175 Prairieview Avenue','954-508-9768' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('469-74-2229','Roth','Elvish','relvishpg@godaddy.com','Male','40','Landskrona','41 Kim Point','977-911-8571' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('220-63-8076','Gay','Ludovico','gludovicoph@google.ca','Male','32','Tais','66 Hauk Hill','999-904-5619' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('331-60-6425','Reilly','Cadlock','rcadlockpi@webs.com','Male','32','Greater Napanee','3 Lighthouse Bay Crossing','109-755-7106' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('661-80-4931','Fulton','Gerkens','fgerkenspj@parallels.com','Male','109','Mikulášovice','7 Hauk Lane','403-938-5934' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('395-98-4958','Celestyna','Warbey','cwarbeypk@shinystat.com','Female','47','Yangqiaodian','12308 Fisk Court','902-552-0877' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('424-74-7768','Lynnett','Ellesmere','lellesmerepl@admin.ch','Female','101','Odessa','3067 Hanson Plaza','432-817-9436' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('528-18-2812','Ewart','Mochar','emocharpm@google.it','Male','57','Bagansiapiapi','811 Eastlawn Court','439-176-9930' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('167-30-2104','Randolf','Aronsohn','raronsohnpn@mit.edu','Male','65','Szeged','89719 Golden Leaf Court','279-372-5453' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('380-91-8193','Addie','Jansik','ajansikpo@tripod.com','Female','55','Racine','9 Reindahl Terrace','262-546-0241' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('873-94-5162','Fara','Morewood','fmorewoodpp@mail.ru','Female','3','Huangpu','1 Vermont Street','403-905-8143' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('594-76-1732','Keith','Cantwell','kcantwellpq@reverbnation.com','Male','116','Polje','153 Dorton Circle','807-398-7011' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('244-66-8297','Marnia','Marder','mmarderpr@sbwire.com','Female','56','Taotang','5388 Forest Crossing','188-225-1307' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('534-67-5623','Harmonie','Trubshawe','htrubshaweps@alibaba.com','Female','21','Outing','373 Sutherland Trail','934-896-1438' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('121-90-6384','Shirlene','Ceci','scecipt@aboutads.info','Female','113','Proletar','3 Mifflin Parkway','165-430-1853' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('806-06-0819','Karoly','Tarling','ktarlingpu@umich.edu','Female','43','Karpinsk','9051 Mallard Lane','836-259-0593' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('340-89-8441','Darb','Schiesterl','dschiesterlpv@lycos.com','Male','79','Bondo','77192 Clemons Terrace','189-717-5101' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('445-15-1671','Itch','Terne','iternepw@yellowpages.com','Male','101','Pinayagan Norte','11 Bonner Parkway','272-550-5485' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('133-62-7067','Hillel','Gapper','hgapperpx@globo.com','Male','67','Guishan','10 Golden Leaf Park','510-381-6994' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('296-85-2201','Papagena','Ganter','pganterpy@whitehouse.gov','Female','7','Don Matías','471 Everett Parkway','641-600-0267' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('526-24-9479','Janene','Whichelow','jwhichelowpz@washingtonpost.com','Female','113','Halayhay','33 Crest Line Plaza','907-630-7436' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('389-85-1494','Janeva','Ethelston','jethelstonq0@slideshare.net','Female','13','Sumurgayam','302 Autumn Leaf Place','442-368-2205' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('776-80-3745','Hailee','Carrington','hcarringtonq1@mail.ru','Female','32','Propriá','758 Debs Way','102-946-3680' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('694-72-6695','Sukey','Maly','smalyq2@jalbum.net','Female','34','Vayk’','0 4th Court','121-758-6927' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('200-13-0105','Tomasine','Eighteen','teighteenq3@bluehost.com','Female','117','Oslo','76470 Melody Junction','133-566-1900' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('809-75-8498','Jose','Blazic','jblazicq4@webs.com','Male','110','Caikouji','367 Bunker Hill Place','811-449-8970' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('785-89-8277','Heda','Wyse','hwyseq5@latimes.com','Female','54','Xiaohe','0609 Dayton Avenue','266-209-4805' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('626-93-9243','Brendis','Karlowicz','bkarlowiczq6@ted.com','Male','50','Mishixiang','942 5th Parkway','387-927-9991' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('501-04-5688','Emili','Chesterton','echestertonq7@slashdot.org','Female','57','Bang Mun Nak','5130 Algoma Street','613-497-8771' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('577-72-3665','Alisun','Martusov','amartusovq8@sogou.com','Female','117','Harbin','9 Bayside Hill','216-166-2387' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('408-68-8566','Jami','Sall','jsallq9@prlog.org','Female','28','Richmond','72093 Hagan Alley','239-726-8208' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('146-78-1068','Louis','Courtenay','lcourtenayqa@bravesites.com','Male','67','Lagoa de Albufeira','70079 Harbort Point','733-226-1407' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('648-16-5441','Corrina','Allard','callardqb@walmart.com','Female','40','Thouars','352 Johnson Point','380-861-8974' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('821-39-0516','Pearl','Plank','pplankqc@usda.gov','Female','55','Damao','1016 Burning Wood Alley','522-104-2022' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('227-41-6498','Bea','Antonelli','bantonelliqd@weibo.com','Female','54','Sumberagung','060 Moland Court','819-521-1797' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('348-76-3912','Brinn','Danielut','bdanielutqe@irs.gov','Female','35','Casal do Relvas','603 Packers Place','139-526-0955' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('471-48-3476','Kristy','Berendsen','kberendsenqf@springer.com','Female','110','Zhaozhen','48259 Ramsey Hill','151-247-1597' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('364-74-2342','Venus','Synnott','vsynnottqg@arizona.edu','Female','47','Skaudvilė','2949 Loomis Hill','717-587-6428' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('141-69-9426','Caye','Goymer','cgoymerqh@washingtonpost.com','Female','52','Maguan','8 Fuller Plaza','523-780-0557' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('620-38-8250','Kristen','Ormrod','kormrodqi@marriott.com','Female','64','Duwayr Raslān','691 Golf Avenue','741-298-3461' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('736-49-5615','Ario','Reschke','areschkeqj@tumblr.com','Male','49','Akim Swedru','9 Clarendon Terrace','265-675-7252' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('192-54-5180','Matthias','Firminger','mfirmingerqk@flavors.me','Male','27','Maevatanana','8724 Corry Road','295-759-4596' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('556-28-1959','Desmund','Singyard','dsingyardql@discuz.net','Male','4','Pathein','6 Porter Street','359-654-2039' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('839-61-0230','Bradford','Olenchenko','bolenchenkoqm@bbc.co.uk','Male','100','Stará Paka','7 Mockingbird Pass','816-496-6784' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('100-93-1687','Gus','Benettini','gbenettiniqn@about.me','Male','19','Cajazeiras','87 Portage Trail','956-147-8746' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('412-25-4599','Stepha','Benjamin','sbenjaminqo@posterous.com','Female','83','Bourges','8298 Welch Place','143-636-1629' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('114-57-7027','Tristan','Holberry','tholberryqp@google.nl','Male','109','Yangtan','97504 Mariners Cove Road','954-161-7739' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('775-80-7305','Zared','Boorn','zboornqq@symantec.com','Male','61','Chinandega','1 Village Park','271-229-2978' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('475-99-6976','Ringo','Dighton','rdightonqr@europa.eu','Male','65','Guayatá','78 Hanover Park','666-463-4469' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('535-68-9191','Ariel','Arnaez','aarnaezqs@biblegateway.com','Female','99','Örebro','5 Prairieview Park','482-244-2726' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('173-39-7285','Benny','Haggidon','bhaggidonqt@yelp.com','Female','49','Budapest','017 Corben Way','766-685-9251' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('257-30-8654','Katti','Malcolm','kmalcolmqu@behance.net','Female','115','Lemland','36 Ridge Oak Junction','430-320-8859' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('537-87-8806','Clarita','Bartolijn','cbartolijnqv@springer.com','Female','57','Radvanice','66 Shasta Circle','497-501-9715' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('758-69-5642','Jasen','Sheaf','jsheafqw@sun.com','Male','68','Cunday','542 Scoville Drive','752-371-6336' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('406-04-3186','Malissa','Pimm','mpimmqx@macromedia.com','Female','95','Huili','27 Spohn Lane','777-697-4849' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('385-12-6183','Emelita','Danieli','edanieliqy@drupal.org','Female','116','Sepolong Timur','4 Waubesa Plaza','268-303-3801' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('348-31-9227','Amalie','Quarless','aquarlessqz@tripadvisor.com','Female','113','Valongo','404 Nelson Alley','955-683-0615' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('229-99-4997','Andras','Holehouse','aholehouser0@domainmarket.com','Male','118','Malitubog','379 Annamark Street','226-612-1353' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('593-22-3299','Corina','Boulder','cboulderr1@godaddy.com','Female','113','Yumaguzino','30769 Dexter Alley','246-179-4858' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('411-70-4179','Burr','Younie','byounier2@php.net','Male','36','General Alvear','01339 Badeau Drive','218-185-4895' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('221-73-8422','Raye','Bianco','rbiancor3@prnewswire.com','Female','83','Ráječko','1593 Mesta Lane','177-836-9557' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('519-93-8399','Bondy','Aloway','balowayr4@apache.org','Male','113','Yayva','152 Clarendon Hill','631-113-3156' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('824-42-1093','Rosamund','Luck','rluckr5@wikipedia.org','Female','41','Nankengzi','84 Sage Crossing','244-603-7209' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('100-41-5057','Carola','Cockley','ccockleyr6@slashdot.org','Female','87','Colos','6 Jay Terrace','834-713-6099' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('237-19-9229','Erena','Kertess','ekertessr7@amazonaws.com','Female','80','Angra do Heroísmo','4 Forest Circle','157-493-7931' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('820-26-6272','Filide','Headley','fheadleyr8@webmd.com','Female','63','Strum','386 Warrior Trail','801-413-9801' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('430-81-7076','Quintin','Du Hamel','qduhamelr9@flavors.me','Male','83','La Jagua de Ibirico','49836 Saint Paul Center','167-137-9677' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('150-76-7920','Lianna','Leonarde','lleonardera@pen.io','Female','31','Bistrinci','9 Sachs Drive','940-771-6688' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('168-93-6394','Griffith','Bazylets','gbazyletsrb@sohu.com','Male','117','Järvakandi','2 Starling Street','981-433-6877' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('429-01-8509','Alene','Minghella','aminghellarc@cpanel.net','Female','27','As Salţ','21 Ridge Oak Junction','707-969-3405' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('509-61-4690','Rori','Beumant','rbeumantrd@dailymotion.com','Female','14','Dourbali','039 Stang Alley','903-361-0519' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('175-63-5394','Bibbie','Shannon','bshannonre@comsenz.com','Female','95','Ochojno','95819 Tennyson Crossing','947-827-9966' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('830-34-2839','Bondon','Vogl','bvoglrf@blinklist.com','Male','11','Barra de São Francisco','85 Calypso Center','297-121-9157' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('896-83-4525','Skell','Springthorpe','sspringthorperg@disqus.com','Male','23','Taubaté','98 Daystar Parkway','147-491-8192' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('733-28-5726','Eal','Kerkham','ekerkhamrh@privacy.gov.au','Male','28','Barayong','5707 Schiller Court','124-946-4286' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('777-07-2473','Wayne','Cultcheth','wcultchethri@odnoklassniki.ru','Male','71','Mesiméri','9718 Cambridge Court','124-308-2641' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('438-33-1869','Georges','Arkle','garklerj@elpais.com','Male','107','Qiaozhuang','253 Anderson Park','363-149-0582' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('180-80-4383','Klemens','Coult','kcoultrk@blogs.com','Male','65','Ágios Pétros','6320 Hauk Lane','173-548-4915' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('599-90-6908','Diandra','Allicock','dallicockrl@ucla.edu','Female','112','El Dividive','2388 Glendale Crossing','770-758-9570' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('626-83-5143','Bartholemy','Bardey','bbardeyrm@epa.gov','Male','68','Abha','0295 Dixon Lane','409-199-2134' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('215-93-1690','Griffin','MacCoveney','gmaccoveneyrn@joomla.org','Male','104','Slavkov u Brna','46 Spenser Park','665-892-1736' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('505-68-6361','Rachele','Mewha','rmewharo@amazon.co.uk','Female','60','Xinrong','93635 Towne Plaza','577-363-2494' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('299-99-2972','Salvatore','Kach','skachrp@dailymotion.com','Male','114','Ngunguru','8 Morning Place','815-371-5466' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('744-15-5777','Feliks','Newtown','fnewtownrq@wordpress.com','Male','116','Buynaksk','0 Merchant Plaza','131-821-0152' ); 
 
INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES ('439-21-9995','Camila','Phillput','cphillputrr@spiegel.de','Female','102','Dietaisi','99 Hintze Hill','222-966-4903' ); 