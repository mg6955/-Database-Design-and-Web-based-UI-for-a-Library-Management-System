/*Insert dms_authors*/

INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('1', 'William', NULL, 'Shakespeare', '24', 'Bridge Street', 'Brooklyn', 'New York', 'United States', '347189', 'ws123@gmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('2', 'Agatha', NULL, 'Christie',NULL, 'Bleecker Street', 'Manhattan', 'New York', 'United States', '112343', 'ac@bookpublish.org');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('3', 'Barbara', 'Jen', 'Cartland','34', 'Hampshire Street', 'London', 'United Kingdom', 'England', '778767', 'barbara@books.org');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('4', 'Danielle', NULL, 'Steel',NULL, 'Great Street', 'Gurgaon', 'Haryana', 'India', '667856', 'danny@yahoo.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('5', 'Harold', 'Arnold', 'Robbins',NULL, 'Saya Zion', 'Noida', 'Uttar Pradesh', 'India', '223456', 'harold56@yahoo.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('6', 'Georges', 'Chakra', 'Simenon','5', 'Comic Street', 'Jamnagar', 'Gujarat', 'India', '998787', 'george90@hotmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('7', 'Enid', NULL, 'Blyton',NULL, 'Devonshire Ave', 'Mount Holly', 'New Jersey', 'United States', '08060', 'blyte@gmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('8', 'Sidney', NULL, 'Sheldon',NULL, 'Vale Street', 'Champaign', 'Illinois', 'United States', '776768', 'sidneysheldon@gmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('9', 'J', 'K', 'Rowling','6', 'Shore Street', 'Medina', 'Ohio', 'United States', '554567', 'jkharrypotter@gmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('10', 'Gilbert', NULL, 'Patten',NULL, 'N. Garden Lane', 'Wyoming', 'Michigan', 'United States', '49509', 'gillypat67@gmail.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('11', 'Corin', NULL, 'Tellado','17', 'Cherry Hill Ave', 'Hephzibah', 'Georgia', 'United States', '30815', 'corin@contactus.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('12', 'Dean', 'Billy', 'Kool','313', 'Country Ave', 'Norwalk', 'California', 'United States', '889876', 'deanbilly@findbooks.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('13', 'Akira', NULL, 'Toriyama',NULL, 'The Crescent', 'West London', 'Scotland', 'United Kingdom', '556789', 'akira67@akira.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('14', 'Nora', NULL, 'Roberts',NULL, 'Sino Centre', 'Yau Tsim Mong', 'Hong Kong', 'Hond Kong', '998656', 'norawriter@mcgraw.com');
INSERT INTO `dms_authors` (`a_id`, `fname`, `mname`, `lname`, `apt_num`, `st_add`, `city`, `state`, `country`, `zip`, `email`) VALUES ('15', 'Stephen', NULL, 'King','67', 'Sawyers Arms Road', 'Bishopdale', 'Christchurch','New Zealand', '8053', 'stephenking@contact.com');


/*DMS_TOPICS*/
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('100', 'History');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('101', 'Children');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('102', 'Science');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('103', 'Art');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('104', 'Travel');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('105', 'Adventure');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('106', 'Drama');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('107', 'Literature');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('108', 'Horror');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('109', 'Crime');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('110', 'Environment');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('111', 'Religion');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('112', 'Fiction');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('113', 'Wellbeing');
INSERT INTO `dms_topics` (`topid`, `topic_name`) VALUES ('114', 'Music');



/*dms_books*/

INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AA1111', '100', 'The Sun Also Rises');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AB1112', '100', 'To Kill A Mockingbird');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AC1113', '102', 'Pride and Prejudice');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AD1114', '103', 'Great Expectations');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AE1115', '105', 'The Catch');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AF1116', '114', 'The Great Gatsby');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AG1117', '110', 'Sin Eater');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AG1121', '102', 'Educated');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AH1118', '111', 'The Dark Hour');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AI1119', '108', 'The Shining');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AJ1120', '109', 'Mindhunter');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AK1120', '112', 'Dora the Explorer');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AI1121', '112', 'Lunar Storm');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AI1179', '103', 'Summer Holidays');
INSERT INTO `dms_books` (`isbn`, `topid`, `name`) VALUES ('AO1189', '104', 'The Swallows');

/* DMS_CUSTOMER*/
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`, `state`,`country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10000', 'PPT', 'U12345678', 'Sheldon', 'Lee', 'COOPER', '3475521234', NULL, NULL, '1, Gold Street', 'Brooklyn', 'New York', 'USA','11223','scooper','Trains73','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`, `state`,`country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10001', 'SSN', '123-45-6789', 'Leonard', NULL, NULL, '3475824321', NULL, '4A', '45, Fulton Street', 'New York', 'New York','USA', '11201','leonardh','Penny','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10002', 'DRL', 'W456-789-76-023', 'Monica', NULL, NULL, '2121920123', 'mgeller@hotmail.com', NULL, '531 45th Street', 'Brooklyn', 'New York','USA', '11276','mbing','tidiest','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10003', 'PPT', 'B98765432', 'Phoebe', NULL, NULL, '2122871122', NULL, NULL, '229 Jay Street', 'Brooklyn', 'New York', 'USA','11201','pbuffey','smellycat','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`, `state`,`country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10004', 'PPT', 'V37595693', 'Ross', NULL, NULL, '6422347658', NULL, NULL, '327 Trinity Pl', 'New York', 'New York','USA', '10007','drgeller','dinosaur','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10005', 'DRL', 'M234-330-43-321', 'Rachel', NULL, NULL, '9409909898', NULL, NULL, '468 39th Street', 'Brooklyn', 'New York', 'USA','11276','rkgreen','fashion','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10006', 'PPT', 'L48023409', 'Chandler', NULL, NULL, '9798899090', NULL, NULL, '9 Water Street', 'New York', 'New York', 'USA','10003','cmbing','monica','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10007', 'PPT', 'Q12345644', 'Joseph', NULL, NULL, '4434414343', NULL, NULL, '56 65th Street', 'New York', 'New York', 'USA','10076','jtribiani','foodgood','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10008', 'DRL', 'M222-555-22-555', 'Ken', NULL, 'Adams', '2344322234', NULL, NULL, '221B Baker Street', 'London', 'Wesminster','UK', 'NW16XE','kadams','sherlocked','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10009', 'DRL', 'A957-999-345-33', 'Regina', NULL, NULL, '9998887654', NULL, '7B', '39 70th Street', ' Jersey City', 'New Jersey', 'USA','07521','regina','guitar','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10010', 'SSN', '442-23-9876', 'Amy', NULL, NULL, '2345678901', NULL, NULL, ' 27 Kings College Ci', 'Toronto', 'Ontario','Canada', 'ONM5S','afowler','sheldon','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10012', 'PPT', 'Q35909743', 'Roger', NULL, NULL, '4322344432', 'rf2345@gmail.com', NULL, '1 Wall Street', 'New York', 'New York', 'USA', '100001','rfederer','grandslam','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10013', 'PPT', 'T33467806', 'Francis', NULL, 'Bacon', '5677655567', NULL, '98A', '725 5th Ave', 'New York', 'New York','USA', '10009','fbacon','pizzaparty','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10014', 'PPT', 'A98765432', 'Jessica', NULL, 'Huang', '3477899876', NULL, NULL, '710 Walnut Street', 'Brooklyn', 'New York', 'USA','11254','jhuang','huang123','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10011', 'DRL', 'W12325-221-21', 'oprah', NULL, NULL, '34771993', NULL, NULL, '3, Water Street', 'Brooklyn', 'New York', 'USA','11224','owinfrey','goodness','N');
INSERT INTO `dms_customer` (`c_id`, `id_type`, `id_num`, `fname`, `mname`, `lname`, `phone_num`, `email`, `apt_num`, `st_add`, `city`,`state`, `country`, `zip`,`userid`,`pwd`,`superuser`) VALUES ('10015', 'PPT', 'Y5834837', 'admin', NULL, NULL, '3477112233', NULL, NULL, 'Real Library', 'Brooklyn', 'New York', 'USA','11254','admin','admin123','Y');

/*DMS_SPONSORS*/
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90000', 'Bill', NULL, 'Gates', 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90001', 'Elon', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90002', 'Jeff', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90003', 'Larry', NULL, 'Page', 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90004', 'Koch', NULL, NULL, 'O');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90005', 'Mark', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90006', 'Jim', NULL, 'Walton', 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90007', 'Mars', NULL, NULL, 'O');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90008', 'Bob', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90009', 'Charles', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90010', 'Stephen', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90011', 'Phil', NULL, 'Knight', 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90012', 'Dan', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90013', 'Steve', NULL, NULL, 'I');
INSERT INTO `dms_sponsors` (`sid`, `fname`, `mname`, `lname`, `sponsor_type`) VALUES ('90014', 'Miriam', NULL, 'Adelson', 'I');


/*DMS_STUDYROOMS*/
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('100', '1');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('101', '1');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('201', '3');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('202', '3');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('301', '4');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('302', '4');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('303', '4');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('304', '4');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('401', '5');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('402', '5');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('701', '8');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('702', '8');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('703', '8');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('704', '8');
INSERT INTO `dms_study_rooms` (`room_number`, `capacity`) VALUES ('999', '15');


/*DMS_EVENTS*/
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50001', '100', 'S', '2022-12-01 09:00:00.000000', '2022-12-01 17:00:00.000000', ' A talk on Dream');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50002', '101', 'E', '2023-01-02 09:00:00.000000', '2023-01-05 17:00:00.000000', 'Harnessing Hobbies for Kids');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50003', '114', 'S', '2023-01-03 09:00:00.000000', '2023-01-03 17:00:00.000000', 'A note on Pitch');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50004', '102', 'E', '2023-02-04 09:00:00.000000', '2023-02-08 17:00:00.000000', 'Astronomy - A glance');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50005', '107', 'S', '2023-02-05 09:00:00.000000', '2023-02-10 17:00:00.000000', 'Shakespeare for GenZ');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50006', '103', 'E', '2023-03-06 09:00:00.000000', '2023-03-13 17:00:00.000000', 'Modern Art Expo');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50007', '104', 'S', '2023-03-07 09:00:00.000000', '2023-03-09 17:00:00.000000', 'Around the World in 80 hours');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50008', '113', 'E', '2023-04-08 09:00:00.000000', '2023-04-08 17:00:00.000000', 'Meditation for Sound Minds');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50009', '109', 'S', '2023-04-09 09:00:00.000000', '2023-04-12 17:00:00.000000', 'Preventing Violence as an Indi');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50010', '102', 'E', '2023-05-01 09:00:00.000000', '2023-05-03 17:00:00.000000', 'DIY Science');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50011', '110', 'S', '2023-05-02 09:00:00.000000', '2023-05-03 17:00:00.000000', 'Global Warming');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50012', '110', 'E', '2023-06-03 09:00:00.000000', '2023-06-03 17:00:00.000000', 'Climate Change');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50013', '111', 'S', '2023-06-04 09:00:00.000000', '2023-06-04 17:00:00.000000', 'Theology');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50014', '105', 'E', '2023-07-05 09:00:00.000000', '2023-07-06 17:00:00.000000', 'Dare to Live');
INSERT INTO `dms_events` (`eid`, `topid`, `event_type`, `start_date`, `stop_date`, `event_title`) VALUES ('50015', '108', 'S', '2023-07-06 09:00:00.000000', '2023-07-07 17:00:00.000000', 'Paranormal Activities');


/*DMS_SEMINAR*/
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50001', 'Martin', 'King');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50003', 'George', 'Bush');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50005', 'Abraham', 'Lincoln');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50007', 'Michael', 'Jackson');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50009', 'Adolf', 'Hitler');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50011', 'Isaac', 'Newton');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50013', 'John', 'Smith');
INSERT INTO `dms_seminar` (`eid`, `speaker_fname`, `speaker_lname`) VALUES ('50015', 'Neil', 'Armstrong');


/*DMS_SPON_SEM*/
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90000', '50001', '5000.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90001', '50001', '2000.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90002', '50003', '500.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90003', '50003', '1500.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90003', '50005', '750.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90006', '50005', '7500.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90006', '50007', '2500.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90001', '50007', '250.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90002', '50009', '150.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90003', '50011', '3000.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90000', '50011', '1000.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90012', '50013', '750.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90014', '50013', '500.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90010', '50015', '8000.00');
INSERT INTO `dms_spon_sem` (`sid`, `eid`, `sponsor_amt`) VALUES ('90008', '50015', '1000.00');


/*DMS_EXHIBITION*/
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50002');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50004');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50006');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50008');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50010');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50012');
INSERT INTO `dms_exhibition` (`eid`) VALUES ('50014');

/*DMS_EXHIBIT_CUST_REG*/
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('100', '50002', '10000');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('101', '50002', '10002');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('102', '50004', '10004');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('103', '50004', '10006');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('104', '50006', '10008');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('105', '50006', '10000');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('106', '50008', '10000');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('107', '50008', '10005');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('108', '50010', '10005');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('109', '50010', '10007');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('110', '50012', '10001');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('111', '50012', '10013');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('112', '50014', '10014');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('113', '50014', '10011');
INSERT INTO `dms_exhibit_cust_reg` (`reg_id`, `eid`, `c_id`) VALUES ('114', '50004', '10010');


/* DMS_SEM_AUTH_INV */
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('100', '50001', '1');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('101', '50003', '3');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('102', '50003', '5');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('103', '50005', '7');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('104', '50005', '9');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('105', '50001', '11');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('106', '50015', '13');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('107', '50013', '2');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('108', '50011', '4');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('109', '50009', '5');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('110', '50007', '6');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('111', '50007', '7');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('112', '50009', '8');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('113', '50011', '10');
INSERT INTO `dms_sem_auth_inv` (`inv_id`, `eid`, `a_id`) VALUES ('114', '50013', '12');

/* DMS_AUTH_BOOK*/
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AA1111', '1');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AH1118', '2');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AO1189', '3');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AF1116', '4');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AJ1120', '5');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AC1113', '6');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AD1114', '7');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AA1111', '8');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AB1112', '9');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AD1114', '10');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AE1115', '11');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AI1121', '12');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AO1189', '13');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AG1121', '14');
INSERT INTO `dms_auth_book` (`isbn`, `a_id`) VALUES ('AG1117', '15');


/*DMS_RESERVATION*/
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10000', '101', '10000', '2022-11-07 08:00:00.000000', '1', 'R');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10001', '101', NULL, '2022-11-07 11:00:00.000000', '2', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10002', '201', NULL, '2022-11-07 13:00:00.000000', '3', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10003', '201', NULL,'2022-11-07 16:00:00.000000', '4', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10004', '202', '10010', '2022-11-07 16:00:00.000000', '4', 'R');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10005', '301', NULL, '2022-11-07 08:00:00.000000', '1', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10006', '302', NULL, '2022-11-07 11:00:00.000000', '2', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10007', '303', NULL, '2022-11-07 13:00:00.000000', '3', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10008', '304', '10007', '2022-11-07 13:00:00.000000', '3', 'R');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10009', '401', NULL, '2022-11-07 16:00:00.000000', '4', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10010', '402', NULL, '2022-11-07 11:00:00.000000', '2', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10011', '701', NULL, '2022-11-07 08:00:00.000000', '1', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10012', '702', NULL, '2022-11-07 13:00:00.000000', '3', 'A');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10013', '703', '10005', '2022-11-07 16:00:00.000000', '4', 'R');
INSERT INTO `dms_reservation` (`reservation_id`, `room_number`, `c_id`, `reservation_date`, `time_slot`, `reservation_status`) VALUES ('10014', '999', NULL, '2022-11-07 16:00:00.000000', '4', 'A');

/* dms_copies */

INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1001', 'AA1111', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1021', 'AA1111', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1003', 'AC1113', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1033', 'AC1113', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1004', 'AF1116', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1005', 'AI1119', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1006', 'AE1115', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1039', 'AO1189', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1007', 'AO1189', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1008', 'AO1189', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1009', 'AG1121', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1010', 'AG1121', 'N');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1011', 'AE1115', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1012', 'AE1115', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1013', 'AE1115', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1014', 'AI1121', 'Y');
INSERT INTO `dms_copies` (`book_num`, `isbn`, `avail_status`) VALUES ('1015', 'AI1121', 'Y');

/* dms_rentals */
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11223', '10000', '1001', '2022-11-03 22:34:00.000000', '2022-11-05 22:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11224', '10000', '1003', '2022-11-03 22:34:00.000000', '2022-11-05 22:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11225', '10002', '1005', '2022-10-04 22:34:00.000000', '2022-10-06 22:34:00.000000', '2022-10-07 22:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11226', '10002', '1009', '2022-10-20 22:34:00.000000', '2022-10-23 22:34:00.000000', '2022-10-22 22:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11228', '10008', '1009', '2022-10-23 22:34:00.000000', '2022-10-26 22:34:00.000000', '2022-10-28 22:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11229', '10010', '1005', '2022-05-01 22:34:00.000000', '2022-05-05 22:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11230', '10013', '1011', '2022-08-15 22:34:00.000000', '2022-09-01 22:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11231', '10008', '1014', '2022-08-15 12:00:00.000000', '2022-08-15 12:00:00.000000', '2022-08-15 14:00:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11233', '10004', '1009', '2022-07-05 12:00:00.000000', '2022-08-01 12:00:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11234', '10008', '1015', '2022-11-03 15:34:00.000000', '2022-11-05 15:34:00.000000', '2022-11-03 16:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11235', '10007', '1001', '2022-11-01 15:34:00.000000', '2022-11-03 15:34:00.000000', '2022-11-03 15:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11236', '10011', '1001', '2022-11-02 15:34:00.000000', '2022-11-03 15:34:00.000000', '2022-11-06 18:34:00.000000');
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11237', '10011', '1001', '2022-11-05 15:34:00.000000', '2022-11-08 15:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11238', '10004', '1011', '2022-10-24 15:34:00.000000', '2022-10-26 15:34:00.000000', NULL);
INSERT INTO `dms_rentals` (`rid`, `c_id`, `book_num`, `b_date`, `er_date`, `ar_date`) VALUES ('11239', '10008', '1014', '2022-04-24 12:00:00.000000', '2022-05-25 12:00:00.000000', '2022-08-01 14:00:00.000000');
