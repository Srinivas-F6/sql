CREATE TABLE data(id INT PRIMARY KEY, name VARCHAR(50), joining_date DATE);
--SELECT VALUE FROM nls_session_parameters
--WHERE parameter = 'NLS_DATE FORMAT';
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';
INSERT INTO data VALUES(1,'charan',TO_DATE('02-01-2025','DD-MM-YYYY'));

--changing current nls_data_format
--ALTER SESSION SET NLS_DATE_FORMAT = 'MM-DD-YYYY';

INSERT INTO data VALUES(1,'charan','03-01-2025');
