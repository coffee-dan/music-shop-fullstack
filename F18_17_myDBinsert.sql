-- DML Script
-- This script populates the database tables. 


---Sets up placeholders for STORE_MANAGERs and CLERKS, the only
---data included is employee_id and type.
---The employee IDs contain four digits, the first indicates the
---store they work for while the last three are unique.
---The first number 'x000' is reserved for the manager.
INSERT ALL
---Store 1
    INTO F18_17_EMPLOYEE VALUES(
		'1000', 'STORE_MANAGER')
	INTO F18_17_EMPLOYEE VALUES(
		'1001', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'1002', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'1003', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'1004', 'CLERK')
---Store 2
	INTO F18_17_EMPLOYEE VALUES(
		'2000', 'STORE_MANAGER')
	INTO F18_17_EMPLOYEE VALUES(
		'2001', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'2002', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'2003', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'2004', 'CLERK')
---Store 3
	INTO F18_17_EMPLOYEE VALUES(
		'3000', 'STORE_MANAGER')
	INTO F18_17_EMPLOYEE VALUES(
		'3001', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'3002', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'3003', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'3004', 'CLERK')
---Store 4
	INTO F18_17_EMPLOYEE VALUES(
		'4000', 'STORE_MANAGER')
	INTO F18_17_EMPLOYEE VALUES(
		'4001', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'4002', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'4003', 'CLERK')
---Store 5
	INTO F18_17_EMPLOYEE VALUES(
		'5000', 'STORE_MANAGER')
	INTO F18_17_EMPLOYEE VALUES(
		'5001', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'5002', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'5003', 'CLERK')
	INTO F18_17_EMPLOYEE VALUES(
		'5004', 'CLERK')
SELECT * FROM DUAL;

---There are only 5 STORE_MANAGERs
INSERT ALL
---Store 1
    INTO F18_17_STORE_MANAGER VALUES(
		'1000', 'George Costanza')
---Store 2
	INTO F18_17_STORE_MANAGER VALUES(
		'2000', 'Luke Skywalker')
---Store 3
	INTO F18_17_STORE_MANAGER VALUES(
		'3000', 'George Bush')
---Store 4
	INTO F18_17_STORE_MANAGER VALUES(
		'4000', 'Isaac Newton')
---Store 5
	INTO F18_17_STORE_MANAGER VALUES(
		'5000', 'John Smith')
SELECT * FROM DUAL;

---There are only 5 STOREs
INSERT ALL
---Store 1
	INTO F18_17_STORE VALUES(
		'01', '1000', '500 W. Third St, Fort Worth, TX, 76102', '10:00am to 8:00pm', '11:00am to 9:00pm')
---Store 2
	INTO F18_17_STORE VALUES(
		'02', '2000', '6228 Crystal Lake Dr, Fort Worth, TX, 76179', '10:00am to 6:00pm', '10:00am to 8:00pm')
---Store 3
	INTO F18_17_STORE VALUES(
		'03', '3000', '100 S. Center St, Arlington, TX, 76010', '10:00am to 9:00pm', '10:00am to 10:00pm')
---Store 4
	INTO F18_17_STORE VALUES(
		'04', '4000', '1515 Young St, Dallas, TX, 75201', '9:00am to 9:00pm', '10:00am to 10:00pm')
---Store 5
	INTO F18_17_STORE VALUES(
		'05', '5000', '409 Oak St, Crowley, TX, 76036', '8:00am to 8:00pm', '11:00am to 10:00pm')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_ALBUM VALUES(
		'001000', 'Plains of the Purple Buffalo', '*Shels', NULL, 'Vinyl', '2011', 'Metal', '15.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'001001', 'Plains of the Purple Buffalo', '*Shels', NULL, 'Vinyl', '2011', 'Metal', '15.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'001002', 'Plains of the Purple Buffalo', '*Shels', NULL, 'Vinyl', '2011', 'Metal', '15.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'001003', 'Plains of the Purple Buffalo', '*Shels', NULL, 'CD', '2011', 'Metal', '12.00', '6.00')
	INTO F18_17_ALBUM VALUES(
		'001004', 'Plains of the Purple Buffalo', '*Shels', NULL, 'Cassette', '2011', 'Metal', '13.50', '7.50')
    INTO F18_17_ALBUM VALUES(
		'002000', 'Spirit They''re Gone Spirit They''ve Vanished', 'Avey Tare', 'Panda Bear', 'Vinyl', '2000', 'Electronic', '22.50', '17.00')
    INTO F18_17_ALBUM VALUES(
		'002001', 'Spirit They''re Gone Spirit They''ve Vanished', 'Avey Tare', 'Panda Bear', 'Vinyl', '2000', 'Electronic', '22.50', '17.00')
	INTO F18_17_ALBUM VALUES(
		'002002', 'Spirit They''re Gone Spirit They''ve Vanished', 'Avey Tare', 'Panda Bear', 'CD', '2000', 'Electronic', '18.00', '13.00')
	INTO F18_17_ALBUM VALUES(
		'003000', 'Blood on the Tracks', 'Bob Dylan', NULL, 'CD', '1974', 'Folk', '20.00', '15.00')
	INTO F18_17_ALBUM VALUES(
		'003001', 'Blood on the Tracks', 'Bob Dylan', NULL, 'CD', '1974', 'Folk', '20.00', '15.00')
	INTO F18_17_ALBUM VALUES(
		'003002', 'Blood on the Tracks', 'Bob Dylan', NULL, 'Cassette', '1974', 'Folk', '21.00', '16.00')
	INTO F18_17_ALBUM VALUES(
		'004000', 'Low', 'David Bowie', 'Brian Eno', 'Vinyl', '1977', 'Rock', '30.00', '22.50')
	INTO F18_17_ALBUM VALUES(
		'005000', 'Repeater', 'Fugazi', NULL, 'CD', '1990', 'Punk', '12.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'005001', 'Repeater', 'Fugazi', NULL, 'CD', '1990', 'Punk', '12.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'006000', 'Turn on the Bright Lights', 'Interpol', NULL, 'Cassette', '2002', 'Rock', '13.00', '8.50')
	INTO F18_17_ALBUM VALUES(
		'007000', 'Station to Station', 'David Bowie', 'Brian Eno', 'Cassette', '1976', 'Rock', '29.00', '23.50')
	INTO F18_17_ALBUM VALUES(
		'008000', 'Cheetah', 'Aphex Twin', NULL, 'CD', '2016', 'Electronic', '12.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'008001', 'Cheetah', 'Aphex Twin', NULL, 'CD', '2016', 'Electronic', '12.00', '8.00')
    INTO F18_17_ALBUM VALUES(
		'009000', 'Viet Cong', 'Viet Cong', NULL, 'CD', '2015', 'Metal', '12.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'009001', 'Viet Cong', 'Viet Cong', NULL, 'CD', '2015', 'Metal', '12.00', '8.00')
	INTO F18_17_ALBUM VALUES(
		'009002', 'Viet Cong', 'Viet Cong', NULL, 'Cassette', '2015', 'Metal', '14.00', '10.00')
	INTO F18_17_ALBUM VALUES(
		'010000', 'Aja', 'Steely Dan', NULL, 'Vinyl', '1999', 'Jazz', '24.00', '18.00')
	INTO F18_17_ALBUM VALUES(
		'010001', 'Aja', 'Steely Dan', NULL, 'CD', '1999', 'Jazz', '18.00', '14.00')
	INTO F18_17_ALBUM VALUES(
		'011000', 'Saxophone Colossus', 'Sonny Rollins', NULL, 'Vinyl', '1955', 'Jazz', '24.00', '18.00')
	INTO F18_17_ALBUM VALUES(
		'011001', 'Saxophone Colossus', 'Sonny Rollins', NULL, 'Vinyl', '1955', 'Jazz', '24.00', '18.00')
	INTO F18_17_ALBUM VALUES(
		'012000', 'Marquee Moon', 'Television', NULL, 'CD', '1977', 'Punk', '14.00', '9.00')
	INTO F18_17_ALBUM VALUES(
		'013000', 'Starsailor', 'Tim Buckley', NULL, 'Cassette', '1970', 'Folk', '20.00', '16.00')
	INTO F18_17_ALBUM VALUES(
		'013001', 'Starsailor', 'Tim Buckley', NULL, 'Cassette', '1970', 'Folk', '20.00', '16.00')
	INTO F18_17_ALBUM VALUES(
		'014000', 'Golem', 'WAND', NULL, 'Cassette', '2015', 'Metal', '20.00', '16.00')
	INTO F18_17_ALBUM VALUES(
		'014001', 'Golem', 'WAND', NULL, 'Vinyl', '2015', 'Metal', '22.00', '18.00')
	INTO F18_17_ALBUM VALUES(
		'015000', 'Another Green World', 'Brian Eno', NULL, 'Vinyl', '1975', 'Electronic', '30.00', '27.00')
	INTO F18_17_ALBUM VALUES(
		'015001', 'Another Green World', 'Brian Eno', NULL, 'Vinyl', '1975', 'Electronic', '30.00', '28.00')
	INTO F18_17_ALBUM VALUES(
		'016000', 'Person Pitch', 'Panda Bear', NULL, 'Vinyl', '2007', 'Electronic', '25.00', '21.00')
	INTO F18_17_ALBUM VALUES(
		'016001', 'Person Pitch', 'Panda Bear', NULL, 'CD', '2007', 'Electronic', '23.00', '20.00')
	INTO F18_17_ALBUM VALUES(
		'017000', 'London Calling', 'The Clash', NULL, 'Cassette', '1979', 'Punk', '19.00', '15.00')
	INTO F18_17_ALBUM VALUES(
		'017001', 'London Calling', 'The Clash', NULL, 'Cassette', '1979', 'Punk', '19.00', '15.00')
	INTO F18_17_ALBUM VALUES(
		'017002', 'London Calling', 'The Clash', NULL, 'Cassette', '1979', 'Punk', '19.00', '15.00')
	INTO F18_17_ALBUM VALUES(
		'018000', 'Ys', 'Joanna Newsom', NULL, 'Vinyl', '2006', 'Folk', '15.00', '9.00')
	INTO F18_17_ALBUM VALUES(
		'018001', 'Ys', 'Joanna Newsom', NULL, 'Vinyl', '2006', 'Folk', '15.00', '9.00')
SELECT * FROM DUAL;

INSERT ALL
---Store 1
	INTO F18_17_CLERK VALUES(
		'1001', 'Jacob Powers', '01')
	INTO F18_17_CLERK VALUES(
		'1002', 'Esteban Piceno', '01')
	INTO F18_17_CLERK VALUES(
		'1003', 'Alexandra Sanchez', '01')
	INTO F18_17_CLERK VALUES(
		'1004', 'Ashley Matthews', '01')
---Store 2
	INTO F18_17_CLERK VALUES(
		'2001', 'David Mendoza', '02')
	INTO F18_17_CLERK VALUES(
		'2002', 'Evan Phillips', '02')
	INTO F18_17_CLERK VALUES(
		'2003', 'Madalyn Killian', '02')
	INTO F18_17_CLERK VALUES(
		'2004', 'Mark Liu', '02')
---Store 3
	INTO F18_17_CLERK VALUES(
		'3001', 'Elisabeth Loeffler', '03')
	INTO F18_17_CLERK VALUES(
		'3002', 'Clifton Noel', '03')
	INTO F18_17_CLERK VALUES(
		'3003', 'Matthew Stanley', '03')
	INTO F18_17_CLERK VALUES(
		'3004', 'Kevin Tindel', '03')
---Store 4
	INTO F18_17_CLERK VALUES(
		'4001', 'Payton Wasemiller', '04')
	INTO F18_17_CLERK VALUES(
		'4002', 'Isaac Torres', '04')
	INTO F18_17_CLERK VALUES(
		'4003', 'Ryan Thomas', '04')
---Store 5
	INTO F18_17_CLERK VALUES(
		'5001', 'Joseph Nguyen', '05')
	INTO F18_17_CLERK VALUES(
		'5002', 'Edward Micheals', '05')
	INTO F18_17_CLERK VALUES(
		'5003', 'Sydney McNamar', '05')
	INTO F18_17_CLERK VALUES(
		'5004', 'Leslie Garcia', '05')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_HAS VALUES(
		'05', '001002')
	INTO F18_17_HAS VALUES(
		'05', '001003')
	INTO F18_17_HAS VALUES(
		'05', '003002')
	INTO F18_17_HAS VALUES(
		'04', '005001')
	INTO F18_17_HAS VALUES(
		'04', '006000')
	INTO F18_17_HAS VALUES(
		'04', '007000')
	INTO F18_17_HAS VALUES(
		'03', '010001')
	INTO F18_17_HAS VALUES(
		'03', '011000')
	INTO F18_17_HAS VALUES(
		'03', '013001')
	INTO F18_17_HAS VALUES(
		'02', '014000')
	INTO F18_17_HAS VALUES(
		'02', '014001')
	INTO F18_17_HAS VALUES(
		'02', '015001')
	INTO F18_17_HAS VALUES(
		'02', '016000')
	INTO F18_17_HAS VALUES(
		'01', '017001')
	INTO F18_17_HAS VALUES(
		'01', '017002')
	INTO F18_17_HAS VALUES(
		'01', '018000')
SELECT * FROM DUAL;

INSERT ALL
---Store 1
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '19', '1001')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '16', '1002')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '15', '1003')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '25', '1004')
---Store 2
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '26', '2001')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '19', '2002')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '15', '2003')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '23', '2004')
---Store 3
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '29', '3001')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '19', '3002')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '16', '3003')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '20', '3004')
---Store 4
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '22', '4001')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '26', '4002')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '20', '4003')
---Store 5
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '22', '5001')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '20', '5002')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '20', '5003')
	INTO F18_17_HOURS_WORKED VALUES(
		'4-Sep-2018', '14', '5004')
SELECT * FROM DUAL;

INSERT ALL
---Store 1
    INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'1000', '387 Gentle Barn Swale, Ashtola, TX, 77525', 'fraser@hotmail.com', '(972) 203-2364')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'1001', '6128 Grand Valley, Dalton, TX, 78369', 'hager@sbcglobal.net', '(915) 305-2208')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'1002', '9604 Blue Deer Highlands, Olton, TX, 79094', 'dleconte@mac.com', '(210) 013-0865')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'1003', '2396 Indian Pony By-pass, Fratt, TX, 75391', 'tjensen@hotmail.com', '(940) 072-0843')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'1004', '2051 Cinder Walk, Grayback, TX, 79810', 'panolex@gmail.com', '(281) 108-1275')
---Store 2
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'2000', '8350 Iron Treasure Line, Kitalou, TX, 79423', 'wortmanj@live.com', '(972) 520-4946')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'2001', '7586 Fallen Front, Brock Junction, TX, 77474', 'dsowsy@yahoo.com', '(972) 132-7385')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'2002', '836 Emerald Hills Rise, Cedar Lane, TX, 78031', 'pmint@sbcglobal.net', '(832) 485-3555')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'2003', '5040 Clear Mountain Edge, Mankins Mill, TX, 76656', 'codex@me.com', '(903) 223-8012')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'2004', '6835 Heather Row, Levinson, TX, 75481', 'storerm@msn.com', '(682) 591-5096')
---Store 3
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'3000', '8065 Golden Parade, Klein, TX, 75036', 'smcnabb@comcast.net', '(432) 301-4134')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'3001', '8500 Sunny Street, Youens, TX, 78310', 'wikinerd@gmail.com', '(214) 800-0291')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'3002', '3213 Misty Grove Gate, Burris, TX, 76291', 'barlow@msn.com', '(325) 050-0398')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'3003', '7996 Sleepy Jetty, Bonney, TX, 79906', 'cyrus@sbcglobal.net', '(972) 172-8123')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'3004', '4774 Quiet Elk Expressway, Hartland, TX, 79485', 'miltchev@optonline.net', '(430) 831-0474')
---Store 4
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'4000', '8639 Foggy Grove, Putnam, TX, 76894', 'tbmaddux@aol.com', '(325) 718-5451')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'4001', '8951 Pleasant Crescent, Maxey, TX, 76073', 'mallanmba@aol.com', '(254) 095-5102')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'4002', '9770 Shady Autumn Port, Latium, TX, 77846', 'jsmith@mac.com', '(325) 823-8303')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'4003', '7784 Cotton Creek Downs, Prairie Lea, TX, 78997', 'maradine@msn.com', '(972) 647-8307')
---Store 5
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'5000', '2991 Rocky Glen, Casa De Peidras, TX, 78140', 'policies@verizon.net', '(325) 251-7463')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'5001', '1715 Amber Private, Sandy Point, TX, 77520', 'slaff@sbcglobal.net', '(972) 235-8823')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'5002', '8469 Dewy Park, Doole, TX, 77719', 'elmer@aol.com', '(903) 376-9292')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'5003', '7618 Harvest Path, Bruceville-eddy, TX, 78454', 'elmer@aol.com', '(682) 603-1186')
	INTO F18_17_EMPLOYEE_CONTACT_INFO VALUES(
		'5004', '9524 Cotton Dale Harbour, Whiteface, TX, 78027', 'peterhoeg@att.net', '(432) 565-2850')
SELECT * FROM DUAL;

---Sets up placeholders for SUPPLIERs and INDIVIDUALs, the only
---data included is custoemr_id and type.
INSERT ALL
---Suppliers
    INTO F18_17_CUSTOMER VALUES(
		'1000', 'SUPPLIER')
	INTO F18_17_CUSTOMER VALUES(
		'1001', 'SUPPLIER')
	INTO F18_17_CUSTOMER VALUES(
		'1002', 'SUPPLIER')
	INTO F18_17_CUSTOMER VALUES(
		'1003', 'SUPPLIER')
	INTO F18_17_CUSTOMER VALUES(
		'1004', 'SUPPLIER')
---Individuals
	INTO F18_17_CUSTOMER VALUES(
		'2000', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2001', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2002', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2003', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2004', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2005', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2006', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2007', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2008', 'INDIVIDUAL')
	INTO F18_17_CUSTOMER VALUES(
		'2009', 'INDIVIDUAL')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_SUPPLIER VALUES(
		'1000', 'Punk Rock Classics Co.')
	INTO F18_17_SUPPLIER VALUES(
		'1001', 'Alternative Hits Collectors')
	INTO F18_17_SUPPLIER VALUES(
		'1002', 'Vinyl Junkies Inc.')
	INTO F18_17_SUPPLIER VALUES(
		'1003', 'Jackson Brothers Jazz Supply Co.')
	INTO F18_17_SUPPLIER VALUES(
		'1004', 'Music Trading Co.')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_INDIVIDUAL VALUES(
		'2000', 'Nolan Bowden', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2001', 'Alexis Garcia', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2002', 'Kenny Kwan', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2003', 'Tyler Atkins', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2004', 'Trevor Bakker', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2005', 'Matthew Crum', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2006', 'Alejandro Escobar', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2007', 'Sophia Salem', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2008', 'Chelsea May', NULL)
	INTO F18_17_INDIVIDUAL VALUES(
		'2009', 'Steve Washington', NULL)
SELECT * FROM DUAL;

INSERT ALL
---Suppliers
    INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'1000', '1157 Quiet Cloud Beach, Waka, TX, 78011', 'nasor@mac.com', '(214) 546-7854')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'1001', '4148 Heather Swale, Capps Corner, TX, 77612', 'matloff@icloud.com', '(936) 439-8513')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'1002', '5712 Foggy Centre, Reliance, TX, 77830', 'janusfury@att.net', '(325) 538-6120')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'1003', '3722 Velvet Mountain Heath, Pecan Mott, TX, 76087', 'csilvers@comcast.net', '(979) 600-5174')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'1004', '193 Bright Mews, Fountain, TX, 77163', 'nacho@att.net', '(832) 597-5954')
---Individuals
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2000', '9769 Round Wagon Boulevard, Highlands, TX, 75400', 'hahsler@yahoo.com', '(956) 820-1356')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2001', '6741 Clear Nectar Cove, Elderville, TX, 78681', 'bastion@gmail.com', '(936) 951-8124')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2002', '2114 Blue Pioneer Trail, Clear Springs, TX, 75777', 'bluejay@gmail.com', '(930) 946-9167')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2003', '3098 Pleasant Vale, Gainesmore, TX, 76346', 'big.maverick@icloud.com', '(817) 425-6584')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2004', '8471 Fallen Canyon, Heafer, TX, 77059', 'lueblue@yahoo.com', '(903) 930-0589')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2005', '159 Rustic Anchor Field, Tatsie Crossing, TX, 78916', 'rustyman@gmail.com', '(254) 613-5503')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2006', '5939 Dusty Arbor, Carrizo Hill, TX, 78312', 'multicat@yahoo.com', '(409) 193-4954')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2007', '521 Easy Moor, Douglass, TX, 76452', 'pumpking@icloud.com', '(979) 354-0108')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2008', '1502 Sleepy Berry Mount, Cowley, TX, 79308', 'merlin@yahoo.ca', '(930) 208-2394')
	INTO F18_17_CUSTOMER_CONTACT_INFO VALUES(
		'2009', '5835 Cozy Hollow, Mcdade, TX, 75288', 'zilla@outlook.com', '(930) 968-3837')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '01', '001000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '01', '001001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '05', '001002', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '05', '001003', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '02', '001004', '4-Sep-2018')
    INTO F18_17_BUYS_FROM VALUES(
		'1002', '01', '002000', '4-Sep-2018')
    INTO F18_17_BUYS_FROM VALUES(
		'1002', '03', '002001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '01', '002002', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '01', '003000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '05', '003001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '05', '003002', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '03', '004000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '02', '005000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '04', '005001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '04', '006000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '04', '007000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '05', '008000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '02', '008001', '4-Sep-2018')
    INTO F18_17_BUYS_FROM VALUES(
		'1001', '05', '009000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '02', '009001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '04', '009002', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1002', '03', '010000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1003', '03', '010001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1003', '03', '011000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1003', '05', '011001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '02', '012000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '03', '013000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '03', '013001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '02', '014000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1002', '02', '014001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1002', '05', '015000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1002', '02', '015001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '02', '016000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '01', '016001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '04', '017000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '01', '017001', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1000', '01', '017002', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '01', '018000', '4-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1004', '05', '018001', '4-Sep-2018')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_SELLS_TO VALUES(
		'2000', '01', '001000', '4-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2001', '01', '001001', '6-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2002', '02', '001004', '5-Sep-2018')
    INTO F18_17_SELLS_TO VALUES(
		'2000', '01', '002000', '4-Sep-2018')
    INTO F18_17_SELLS_TO VALUES(
		'2005', '03', '002001', '6-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2006', '01', '002002', '8-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2000', '01', '003000', '4-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2007', '04', '003001', '7-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2005', '03', '004000', '6-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2002', '02', '005000', '5-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2008', '05', '008000', '4-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2003', '02', '008001', '9-Sep-2018')
    INTO F18_17_SELLS_TO VALUES(
		'2008', '05', '009000', '4-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2004', '02', '009001', '7-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2007', '04', '009002', '7-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2007', '04', '010000', '7-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2009', '05', '011001', '5-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2003', '02', '012000', '4-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2006', '03', '013000', '8-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2009', '05', '015000', '5-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2001', '01', '016001', '6-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2004', '03', '017000', '10-Sep-2018')
	INTO F18_17_SELLS_TO VALUES(
		'2009', '05', '018001', '5-Sep-2018')
SELECT * FROM DUAL;