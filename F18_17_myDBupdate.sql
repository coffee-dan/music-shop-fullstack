-- DML Update Script
-- Example updates for database to verify correctness of database and 
-- queries.

INSERT ALL
	INTO F18_17_ALBUM VALUES(
		'007001', 'Station to Station', 'David Bowie', 'Brian Eno', 'Vinyl', '1976', 'Rock', '32.00', '25.50')
	INTO F18_17_ALBUM VALUES(
		'019001', 'KID A', 'Radiohead', NULL, 'Vinyl', '2000', 'Rock', '35.00', '26.00')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_BUYS_FROM VALUES(
		'1002', '03', '007001', '11-Sep-2018')
	INTO F18_17_BUYS_FROM VALUES(
		'1001', '02', '019001', '12-Sep-2018')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_SELLS_TO VALUES(
		'2002', '02', '019001', '14-Sep-2018')
SELECT * FROM DUAL;

INSERT ALL
	INTO F18_17_HAS VALUES(
		'03', '007001')
SELECT * FROM DUAL;