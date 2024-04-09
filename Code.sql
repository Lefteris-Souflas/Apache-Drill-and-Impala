/*
http://archive.cloudera.com/cdh5/parcels/5.13.0/
http://archive.cloudera.com/accumulo-c5/parcels/latest/

https://archive.cloudera.com/cdh5/parcels/{latest_supported}/
https://archive.cloudera.com/cdh4/parcels/latest/
https://archive.cloudera.com/impala/parcels/latest/
https://archive.cloudera.com/search/parcels/latest/

sudo /home/cloudera/cloudera-manager --express --force

sudo service cloudera-scm-server restart

sudo service cloudera-scm-agent restart

https://blog.clairvoyantsoft.com/installing-apache-kudu-on-clouderas-quickstart-vm-3bdc202ce142
https://medium.com/softwaresanders/installing-apache-kudu-on-clouderas-quickstart-vm-7636ed433ab1

impala-shell -i quickstart.cloudera
*/

CREATE DATABASE IF NOT EXISTS University;

USE University;

CREATE TABLE IF NOT EXISTS Student (
    sid INT,
    name VARCHAR(50)
--	,PRIMARY KEY (sid)
)
--STORED AS KUDU
;

CREATE TABLE IF NOT EXISTS Course (
    cid INT,
    title VARCHAR(50),
    description STRING
--	,PRIMARY KEY (sid)
)
--STORED AS KUDU
;

CREATE TABLE IF NOT EXISTS Attended (
    sid INT,
    cid INT,
    ac_year CHAR(9),
    grade DECIMAL(1,0)
--	,PRIMARY KEY (sid,cid)
)
--STORED AS KUDU
;

INSERT INTO University.Student (sid, name) VALUES (1, CAST('Lefteris Souflas' AS VARCHAR(50)));

-- Uncomment the following 2 lines to produce 
-- INSERT INTO University.attended (sid, cid, ac_year, grade) VALUES (1, 1, CAST('2021-2022' AS CHAR(9)), CAST(9 AS DECIMAL(1,0)));
-- INSERT INTO University.course (cid, title, description) VALUES (1, CAST('Artificial Intelligence' AS VARCHAR(50)), 'This course is designed to provide students with a comprehensive understanding of the fundamentals and applications of Artificial Intelligence (AI). This course serves as an introductory level for students interested in exploring the dynamic and rapidly evolving field of AI.');
SELECT s.name 
FROM student s, attended a, course c
WHERE s.sid=a.sid AND a.cid=c.cid AND 
    c.title='Artificial Intelligence' AND 
    a.ac_year='2021-2022';

-- INSERT INTO University.course (cid, title, description) VALUES (2, CAST('Machine Learning' AS VARCHAR(50)), 'This course is designed to provide students with a comprehensive understanding of the fundamentals and applications of Machine Learning (ML). This course serves as an introductory level for students interested in exploring the dynamic and rapidly evolving field of ML.');
-- INSERT INTO University.attended (sid, cid, ac_year, grade) VALUES (1, 2, CAST('2021-2022' AS CHAR(9)), CAST(1 AS DECIMAL(1,0)));
SELECT c.title, avg(a.grade) AS 'Average Grade'
FROM attended a, course c
WHERE a.cid=c.cid
GROUP BY c.title
HAVING avg(a.grade) < 6;


EXPLAIN SELECT c.title, avg(a.grade) AS 'Average Grade'
FROM attended a, course c
WHERE a.cid=c.cid
GROUP BY c.title
HAVING avg(a.grade) < 6;

