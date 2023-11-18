-- SQLINES DEMO *** le SQL Developer Data Modeler 22.2.0.165.1149
-- SQLINES DEMO *** -11-04 20:20:04 EDT
-- SQLINES DEMO *** le Database 21c
-- SQLINES DEMO *** le Database 21c
-- SQLINES DEMO *** no DDL - MDSYS.SDO_GEOMETRY
-- SQLINES DEMO *** no DDL - XMLTYPE
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_auth_book (
    a_id INT NOT NULL,
    isbn VARCHAR(20) NOT NULL
);

ALTER TABLE dms_auth_book ADD CONSTRAINT dms_auth_book_pk PRIMARY KEY ( isbn,a_id );


-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_authors (
    a_id    INT NOT NULL COMMENT 'AUTHOR ID',
    fname   VARCHAR(30) NOT NULL COMMENT 'AUTHOR FIRST NAME',
    mname   VARCHAR(30) COMMENT 'AUTHOR MIDDLE NAME',
    lname   VARCHAR(30) COMMENT 'AUTHOR LAST NAME',
    apt_num VARCHAR(10) COMMENT 'APARTMENT NUMBER',
    st_add  VARCHAR(20) NOT NULL COMMENT 'STREET ADDRESS',
    city    VARCHAR(20) NOT NULL COMMENT 'CITY',
    state   VARCHAR(20) NOT NULL COMMENT 'STATE',
    country VARCHAR(30) NOT NULL COMMENT 'COUNTRY',
    zip     VARCHAR(12) NOT NULL COMMENT 'ZIPCODE',
    email   VARCHAR(30) NOT NULL COMMENT 'AUTHOR EMAIL'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.a_id IS
    'AUTHOR ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.fname IS
    'AUTHOR FIRST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.mname IS
    'AUTHOR MIDDLE NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.lname IS
    'AUTHOR LAST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.apt_num IS
    'APARTMENT NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.st_add IS
    'STREET ADDRESS'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.city IS
    'CITY'; */


/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.state IS
    'STATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.country IS
    'COUNTRY'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.zip IS
    'ZIPCODE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_authors.email IS
    'AUTHOR EMAIL'; */

ALTER TABLE dms_authors ADD CONSTRAINT dms_authors_pk PRIMARY KEY ( a_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_books (
    isbn  VARCHAR(20) NOT NULL COMMENT 'ISBN NUMBER OF THE BOOK',
    topid SMALLINT NOT NULL,
    name  VARCHAR(50) NOT NULL COMMENT 'NAME OF THE BOOK'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_books.isbn IS
    'ISBN NUMBER OF THE BOOK'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_books.name IS
    'NAME OF THE BOOK'; */

ALTER TABLE dms_books ADD CONSTRAINT dms_books_pk PRIMARY KEY ( isbn );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_copies (
    book_num     SMALLINT NOT NULL COMMENT 'A 4 DIGIT UNIQUE BOOK NUMBER',
    isbn         VARCHAR(20) NOT NULL,
    avail_status CHAR(1) NOT NULL COMMENT 'AVAILABILITY STAUS OF THE BOOK . ''''Y'''' - YES ,''''N'''' -NO');
/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_copies.book_num IS
    'A 4 DIGIT UNIQUE BOOK NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_copies.avail_status IS
    'AVAILABILITY STAUS OF THE BOOK . ''''Y'''' - YES ,''''N'''' -NO'; */

ALTER TABLE dms_copies ADD CONSTRAINT dms_copies_pk PRIMARY KEY ( book_num );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_creditcard (
    pay_id  INT NOT NULL COMMENT '''A 7 DIGIT PAYMENT ID',
    fname   VARCHAR(30) NOT NULL COMMENT 'PAYEE FIRST NAME',
    lname   VARCHAR(30) NOT NULL COMMENT 'PAYEE LAST NAME',
    c_num   BIGINT NOT NULL COMMENT 'CARD NUMBER',
    exp_mon TINYINT NOT NULL COMMENT 'EXPIRY MONTH',
    exp_yr  SMALLINT NOT NULL COMMENT 'EXPIRY YEAR',
    zipcode VARCHAR(12) NOT NULL COMMENT 'ZIPCODE'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.pay_id IS
    '''A 7 DIGIT PAYMENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.fname IS
    'PAYEE FIRST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.lname IS
    'PAYEE LAST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.c_num IS
    'CARD NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.exp_mon IS
    'EXPIRY MONTH'; */


/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.exp_yr IS
    'EXPIRY YEAR'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_creditcard.zipcode IS
    'ZIPCODE'; */

ALTER TABLE dms_creditcard ADD CONSTRAINT dms_creditcard_pk PRIMARY KEY ( pay_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_customer (
    c_id      INT NOT NULL COMMENT 'A 5 DIGIT CUSTOMER ID',
    id_type   CHAR(3) NOT NULL COMMENT 'IDENTIFICATION TYPE. TAKES VALUES ''''PPT'''' FOR PASSPORT,''''SSN'''' FOR SSN AND ''''DRL'''' FOR DRIVER''''S LICENSE',
    id_num    VARCHAR(15) NOT NULL COMMENT 'IDENTIFICATION NUMBER OF THE DOCUMENT SUBMITTED',
    fname     VARCHAR(30) NOT NULL COMMENT 'FIRST NAME OF CUSTOMER',
    mname     VARCHAR(30) COMMENT 'CUSTOMER MIDDLE NAME',
    lname     VARCHAR(30) COMMENT 'CUSTOMER LAST NAME',
    phone_num BIGINT NOT NULL COMMENT 'CUSTOMER PHONE NUMBER',
    email     VARCHAR(30) COMMENT 'CUSTOMER EMAIL ID',
    apt_num   VARCHAR(10) COMMENT 'APARTMENT NUMBER',
    st_add    VARCHAR(20) NOT NULL COMMENT 'STREET ADDRESS',
    city      VARCHAR(20) NOT NULL COMMENT 'CITY',
    state     VARCHAR(20) NOT NULL COMMENT 'STATE',
    country   VARCHAR(20) NOT NULL COMMENT 'COUNTRY',
    zip       VARCHAR(12) NOT NULL COMMENT 'ZIPCODE'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.c_id IS
    'A 5 DIGIT CUSTOMER ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.id_type IS
    'IDENTIFICATION TYPE. TAKES VALUES ''''PPT'''' FOR PASSPORT,''''SSN'''' FOR SSN AND ''''DRL'''' FOR DRIVER''''S LICENSE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.id_num IS
    'IDENTIFICATION NUMBER OF THE DOCUMENT SUBMITTED'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.fname IS
    'FIRST NAME OF CUSTOMER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.mname IS
    'CUSTOMER MIDDLE NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.lname IS
    'CUSTOMER LAST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.phone_num IS
    'CUSTOMER PHONE NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.email IS
    'CUSTOMER EMAIL ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.apt_num IS
    'APARTMENT NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.st_add IS
    'STREET ADDRESS'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.city IS
    'CITY'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.state IS
    'STATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.country IS
    'COUNTRY'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_customer.zip IS
    'ZIPCODE'; */

ALTER TABLE dms_customer ADD CONSTRAINT dms_customer_pk PRIMARY KEY ( c_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_debitcard (
    pay_id  INT NOT NULL COMMENT '''A 7 DIGIT PAYMENT ID',
    fname   VARCHAR(30) NOT NULL COMMENT 'PAYEE FIRST NAME',
    lname   VARCHAR(30) NOT NULL COMMENT 'PAYEE LAST NAME',
    c_num   BIGINT NOT NULL COMMENT 'CARD NUMBER',
    exp_mon TINYINT NOT NULL COMMENT 'EXPIRY MONTH',
    exp_yr  SMALLINT NOT NULL COMMENT 'EXPIRY YEAR'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.pay_id IS
    '''A 7 DIGIT PAYMENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.fname IS
    'PAYEE FIRST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.lname IS
    'PAYEE LAST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.c_num IS
    'CARD NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.exp_mon IS
    'EXPIRY MONTH'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_debitcard.exp_yr IS
    'EXPIRY YEAR'; */

ALTER TABLE dms_debitcard ADD CONSTRAINT dms_debitcard_pk PRIMARY KEY ( pay_id );



-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_events (
    eid         INT NOT NULL COMMENT '5 DIGIT EVENT ID',
    topid       SMALLINT NOT NULL,
    event_type  CHAR(1) NOT NULL COMMENT 'TYPE OF THE EVENT. TAKES IN VALUES ''''S'''' - SEMINAR , ''''E'''' -EXHIBITIONS',
    start_date  DATETIME NOT NULL COMMENT 'EVENT START DATE',
    stop_date   DATETIME NOT NULL COMMENT 'EVENT STOP DATE',
    event_title VARCHAR(30) NOT NULL COMMENT 'EVENT TITLE'
);

ALTER TABLE dms_events
    ADD CONSTRAINT ch_inh_dms_events CHECK ( event_type IN ( 'E', 'S' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_events.eid IS
    '5 DIGIT EVENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_events.event_type IS
    'TYPE OF THE EVENT. TAKES IN VALUES ''''S'''' - SEMINAR , ''''E'''' -EXHIBITIONS'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_events.start_date IS
    'EVENT START DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_events.stop_date IS
    'EVENT STOP DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_events.event_title IS
    'EVENT TITLE'; */

ALTER TABLE dms_events ADD CONSTRAINT dms_events_pk PRIMARY KEY ( eid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_exhibit_cust_reg (
    reg_id INT NOT NULL COMMENT 'REGISTRATION ID',
    eid    INT NOT NULL,
    c_id   INT);
/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_exhibit_cust_reg.reg_id IS
    'REGISTRATION ID'; */

ALTER TABLE dms_exhibit_cust_reg ADD CONSTRAINT dms_exhibit_cust_reg_pk PRIMARY KEY ( reg_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_exhibition (
    eid INT NOT NULL COMMENT '5 DIGIT EVENT ID'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_exhibition.eid IS
    '5 DIGIT EVENT ID'; */

ALTER TABLE dms_exhibition ADD CONSTRAINT dms_exhibition_pk PRIMARY KEY ( eid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_invoice (
    invid         BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '11 DIGIT INVOICE ID',
    rid           INT NOT NULL,
    creation_date DATETIME NOT NULL COMMENT 'INVOICE CREATION DATE',
    inv_amt       DECIMAL(7, 2) COMMENT 'INVOICE AMOUNT'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_invoice.invid IS
    '11 DIGIT INVOICE ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_invoice.creation_date IS
    'INVOICE CREATION DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_invoice.inv_amt IS
    'INVOICE AMOUNT'; */

/*ALTER TABLE dms_invoice ADD CONSTRAINT dms_invoice_pk PRIMARY KEY ( invid );*/


-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_payments (
    pay_id     INT NOT NULL COMMENT '''A 7 DIGIT PAYMENT ID',
    invid      BIGINT NOT NULL,
    pay_date   DATETIME NOT NULL COMMENT 'PAYMENT DATE',
    method     CHAR(1) NOT NULL COMMENT 'PAYMENT METHOD. TAKES VALUES ''''C'''' - CREDIT CARD, P- PAYPAL, ''''B''''- CASH, ''''D'''' - DEBIT CARD',
    pay_amount DECIMAL(7, 2) NOT NULL COMMENT 'AMOUNT PAID IN USD'
);

ALTER TABLE dms_payments
    ADD CONSTRAINT ch_inh_dms_payments CHECK ( method IN ( 'B', 'C', 'D', 'P' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_payments.pay_id IS
    '''A 7 DIGIT PAYMENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_payments.pay_date IS
    'PAYMENT DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_payments.method IS
    'PAYMENT METHOD. TAKES VALUES ''''C'''' - CREDIT CARD, P- PAYPAL, ''''B''''- CASH, ''''D'''' - DEBIT CARD'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_payments.pay_amount IS
    'AMOUNT PAID IN USD'; */

ALTER TABLE dms_payments ADD CONSTRAINT dms_payments_pk PRIMARY KEY ( pay_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_paypal (
    pay_id INT NOT NULL COMMENT '''A 7 DIGIT PAYMENT ID',
    txnid  VARCHAR(17) NOT NULL
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_paypal.pay_id IS
    '''A 7 DIGIT PAYMENT ID'; */
ALTER TABLE dms_paypal ADD CONSTRAINT dms_paypal_pk PRIMARY KEY ( pay_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_rentals (
    rid      INT NOT NULL COMMENT '5 DIGIT RENTAL ID',
    c_id     INT NOT NULL,
    book_num SMALLINT NOT NULL,
    b_date   DATETIME NOT NULL COMMENT 'BORROW DATE',
    er_date  DATETIME NOT NULL COMMENT 'EXPECTED RETURN DATE',
    ar_date  DATETIME COMMENT 'ACTUAL RETURN DATE'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_rentals.rid IS
    '5 DIGIT RENTAL ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_rentals.b_date IS
    'BORROW DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_rentals.er_date IS
    'EXPECTED RETURN DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_rentals.ar_date IS
    'ACTUAL RETURN DATE'; */

ALTER TABLE dms_rentals ADD CONSTRAINT dms_rentals_pk PRIMARY KEY ( rid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_reservation (
    reservation_id     INT NOT NULL COMMENT 'RESERVATION ID',
    c_id               INT,
    room_number        SMALLINT,
    reservation_date   DATETIME NOT NULL COMMENT 'RESERVATION DATE',
    time_slot          TINYINT NOT NULL COMMENT 'TIME SLOT IS A SINGLE DIGIT NUMERIC THAT TAKES IN VALUES  
1 -  8 AM TO 10 AM;2 - 11 AM TO 1 PM ;3 - 1 PM TO 3 PM;4 - 4 PM TO 6 PM
',
    reservation_status CHAR(1) NOT NULL COMMENT 'RESERVATION STATUS OF THE ROOM FOR THE TIMESLOT. TAKES VALUES ''''A'''' - AVAILABLE AND ''''R'''' - RESERVED'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_reservation.reservation_id IS
    'RESERVATION ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_reservation.reservation_date IS
    'RESERVATION DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_reservation.time_slot IS
    'TIME SLOT IS A SINGLE DIGIT NUMERIC THAT TAKES IN VALUES  
1 -  8 AM TO 10 AM;2 - 11 AM TO 1 PM ;3 - 1 PM TO 3 PM;4 - 4 PM TO 6 PM
'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_reservation.reservation_status IS
    'RESERVATION STATUS OF THE ROOM FOR THE TIMESLOT. TAKES VALUES ''''A'''' - AVAILABLE AND ''''R'''' - RESERVED'; */

ALTER TABLE dms_reservation ADD CONSTRAINT dms_reservation_pk PRIMARY KEY ( reservation_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_sem_auth_inv (
    inv_id INT NOT NULL COMMENT 'A 5 DIGIT INVITATION ID',
    a_id   INT,
    eid    INT NOT NULL
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sem_auth_inv.inv_id IS
    'A 5 DIGIT INVITATION ID'; */

ALTER TABLE dms_sem_auth_inv ADD CONSTRAINT dms_sem_auth_inv_pk PRIMARY KEY ( inv_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_seminar (
    eid           INT NOT NULL COMMENT '5 DIGIT EVENT ID',
    speaker_fname VARCHAR(30) NOT NULL COMMENT 'SPEAKER FIRST NAME',
    speaker_lname VARCHAR(30) NOT NULL COMMENT 'SPEAKER LAST NAME',
    inv_id        DOUBLE NOT NULL
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_seminar.eid IS
    '5 DIGIT EVENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_seminar.speaker_fname IS
    'SPEAKER FIRST NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_seminar.speaker_lname IS
    'SPEAKER LAST NAME'; */

ALTER TABLE dms_seminar ADD CONSTRAINT dms_seminar_pk PRIMARY KEY ( eid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_spon_sem (
    eid         INT NOT NULL,
    sid         INT NOT NULL,
    sponsor_amt DECIMAL(7, 2) NOT NULL COMMENT 'SPONSOR SUPPORT AMOUNT IN USD'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_spon_sem.sponsor_amt IS
    'SPONSOR SUPPORT AMOUNT IN USD'; */

ALTER TABLE dms_spon_sem ADD CONSTRAINT dms_spon_sem_pk PRIMARY KEY ( eid,
                                                                      sid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_sponsors (
    sid          INT NOT NULL COMMENT '5 DIGIT SPONSOR ID',
    fname        VARCHAR(30) NOT NULL COMMENT 'FIRST NAME OF INDIVIDUAL OR ORGANIZATION NAME',
    mname        VARCHAR(30) COMMENT 'MIDDLE NAME OF INDIVDUAL SPONSOR',
    lname        VARCHAR(30) COMMENT 'LAST NAME OF INDIVIDUAL SPONSOR',
    sponsor_type CHAR(1) NOT NULL COMMENT 'TYPE  OF SPONSOR . TAKES VALUES ''''I''''-INDIVIDUAL AND ''''O'''' FOR ORGANIZATION'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sponsors.sid IS
    '5 DIGIT SPONSOR ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sponsors.fname IS
    'FIRST NAME OF INDIVIDUAL OR ORGANIZATION NAME'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sponsors.mname IS
    'MIDDLE NAME OF INDIVDUAL SPONSOR'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sponsors.lname IS
    'LAST NAME OF INDIVIDUAL SPONSOR'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_sponsors.sponsor_type IS
    'TYPE  OF SPONSOR . TAKES VALUES ''''I''''-INDIVIDUAL AND ''''O'''' FOR ORGANIZATION'; */

ALTER TABLE dms_sponsors ADD CONSTRAINT dms_sponsors_pk PRIMARY KEY ( sid );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_study_rooms (
    room_number SMALLINT NOT NULL COMMENT 'UNIQUE 3 DIGIT ROOM NUMBERS',
    capacity    TINYINT NOT NULL COMMENT 'CAPACITY OF THE ROOM'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_study_rooms.room_number IS
    'UNIQUE 3 DIGIT ROOM NUMBERS'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_study_rooms.capacity IS
    'CAPACITY OF THE ROOM'; */

ALTER TABLE dms_study_rooms ADD CONSTRAINT dms_study_rooms_pk PRIMARY KEY ( room_number );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE dms_topics (
    topid      SMALLINT NOT NULL COMMENT '3 DIGIT ID OF TOPICS',
    topic_name VARCHAR(20) NOT NULL COMMENT 'NAME OF THE TOPIC'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_topics.topid IS
    '3 DIGIT ID OF TOPICS'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN dms_topics.topic_name IS
    'NAME OF THE TOPIC'; */

ALTER TABLE dms_topics ADD CONSTRAINT dms_topics_pk PRIMARY KEY ( topid );

ALTER TABLE dms_auth_book
    ADD CONSTRAINT dms_auth_books_fk FOREIGN KEY ( isbn )
        REFERENCES dms_books ( isbn );

ALTER TABLE dms_sem_auth_inv
    ADD CONSTRAINT dms_auth_seminar_fk FOREIGN KEY ( eid )
        REFERENCES dms_seminar ( eid );

ALTER TABLE dms_auth_book
    ADD CONSTRAINT dms_b_authors_fk FOREIGN KEY ( a_id )
        REFERENCES dms_authors ( a_id );

ALTER TABLE dms_books
    ADD CONSTRAINT dms_books_topics_fk FOREIGN KEY ( topid )
        REFERENCES dms_topics ( topid );

ALTER TABLE dms_copies
    ADD CONSTRAINT dms_copies_books_fk FOREIGN KEY ( isbn )
        REFERENCES dms_books ( isbn );


ALTER TABLE dms_creditcard
    ADD CONSTRAINT dms_creditcard_dms_payments_fk FOREIGN KEY ( pay_id )
        REFERENCES dms_payments ( pay_id );

ALTER TABLE dms_exhibit_cust_reg
    ADD CONSTRAINT dms_cust_exhibition_fk FOREIGN KEY ( eid )
        REFERENCES dms_exhibition ( eid );

ALTER TABLE dms_debitcard
    ADD CONSTRAINT dms_debitcard_dms_payments_fk FOREIGN KEY ( pay_id )
        REFERENCES dms_payments ( pay_id );

ALTER TABLE dms_events
    ADD CONSTRAINT dms_events_topics_fk FOREIGN KEY ( topid )
        REFERENCES dms_topics ( topid );

ALTER TABLE dms_exhibit_cust_reg
    ADD CONSTRAINT dms_exh_customer_fk FOREIGN KEY ( c_id )
        REFERENCES dms_customer ( c_id );

ALTER TABLE dms_exhibition
    ADD CONSTRAINT dms_exhibit_events_fk FOREIGN KEY ( eid )
        REFERENCES dms_events ( eid );

ALTER TABLE dms_invoice
    ADD CONSTRAINT dms_invoice_rentals_fk FOREIGN KEY ( rid )
        REFERENCES dms_rentals ( rid );

ALTER TABLE dms_payments
    ADD CONSTRAINT dms_paym_invoice_fk FOREIGN KEY ( invid )
        REFERENCES dms_invoice ( invid );

ALTER TABLE dms_paypal
    ADD CONSTRAINT dms_paypal_payments_fk FOREIGN KEY ( pay_id )
        REFERENCES dms_payments ( pay_id );

ALTER TABLE dms_rentals
    ADD CONSTRAINT dms_rentals_copies_fk FOREIGN KEY ( book_num )
        REFERENCES dms_copies ( book_num );

ALTER TABLE dms_rentals
    ADD CONSTRAINT dms_rentals_customer_fk FOREIGN KEY ( c_id )
        REFERENCES dms_customer ( c_id );

ALTER TABLE dms_reservation
    ADD CONSTRAINT dms_res_customer_fk FOREIGN KEY ( c_id )
        REFERENCES dms_customer ( c_id );

ALTER TABLE dms_reservation
    ADD CONSTRAINT dms_res_study_fk FOREIGN KEY ( room_number )
        REFERENCES dms_study_rooms ( room_number );

ALTER TABLE dms_sem_auth_inv
    ADD CONSTRAINT dms_sem_authors_fk FOREIGN KEY ( a_id )
        REFERENCES dms_authors ( a_id );

ALTER TABLE dms_spon_sem
    ADD CONSTRAINT dms_sem_sponsors_fk FOREIGN KEY ( sid )
        REFERENCES dms_sponsors ( sid );

ALTER TABLE dms_seminar
    ADD CONSTRAINT dms_seminar_dms_events_fk FOREIGN KEY ( eid )
        REFERENCES dms_events ( eid );

ALTER TABLE dms_spon_sem
    ADD CONSTRAINT dms_spon_seminar_fk FOREIGN KEY ( eid )
        REFERENCES dms_seminar ( eid );

/*Trigger for Subtype exceptions*/

DROP TRIGGER IF EXISTS T_EVE_EXH_UP;
DELIMITER $$ 
CREATE TRIGGER T_EVE_EXH_UP
BEFORE UPDATE ON dms_exhibition 
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_exhibition.event_type;
IF a IS NULL OR a <> 'E' THEN
 signal sqlstate '20223' set message_text = 'Invalid Event Type';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_EVE_EXH_IN;
DELIMITER $$ 
CREATE TRIGGER T_EVE_EXH_IN
BEFORE INSERT ON dms_exhibition 
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_exhibition.event_type;
IF a IS NULL OR a <> 'E' THEN
 signal sqlstate '20223' set message_text = 'Invalid Event Type';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_EVE_SEM_UP;
DELIMITER $$ 
CREATE TRIGGER T_EVE_SEM_UP
BEFORE UPDATE ON dms_seminar 
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_seminar.event_type;
IF a IS NULL OR a <> 'S' THEN
 signal sqlstate '20223' set message_text = 'Invalid Event Type';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_EVE_SEM_IN;
DELIMITER $$ 
CREATE TRIGGER T_EVE_SEM_IN
BEFORE INSERT ON dms_seminar 
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_seminar.event_type;
IF a IS NULL OR a <> 'S' THEN
 signal sqlstate '20223' set message_text = 'Invalid Event Type';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_CC_IN;
DELIMITER $$ 
CREATE TRIGGER T_PAY_CC_IN
BEFORE INSERT ON dms_creditcard
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_creditcard.method ;
IF a IS NULL OR a <> 'C' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_CC_UP;
DELIMITER $$ 
CREATE TRIGGER T_PAY_CC_UP
BEFORE UPDATE ON dms_creditcard
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_creditcard.method ;
IF a IS NULL OR a <> 'C' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_DC_IN;
DELIMITER $$ 
CREATE TRIGGER T_PAY_DC_IN
BEFORE INSERT ON dms_debitcard
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_debitcard.method ;
IF a IS NULL OR a <> 'D' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_DC_UP;
DELIMITER $$ 
CREATE TRIGGER T_PAY_DC_UP
BEFORE UPDATE ON dms_debitcard
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_debitcard.method ;
IF a IS NULL OR a <> 'D' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_PP_IN;
DELIMITER $$ 
CREATE TRIGGER T_PAY_PP_IN
BEFORE INSERT ON dms_paypal
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_paypal.method ;
IF a IS NULL OR a <> 'P' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS T_PAY_PP_UP;
DELIMITER $$ 
CREATE TRIGGER T_PAY_PP_UP
BEFORE INSERT ON dms_paypal
FOR EACH ROW
BEGIN
 DECLARE a CHAR(1); 
 SET a = dms_paypal.method ;
IF a IS NULL OR a <> 'C' THEN
 signal sqlstate '20223' set message_text = 'Invalid Method';
END IF;
END$$
DELIMITER ;
