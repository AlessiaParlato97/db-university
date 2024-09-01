use db_university;

SELECT *
FROM teachers t ;

SELECT head_of_department 
FROM departments d ;

SELECT *
FROM degrees d
WHERE `level` = 'magistrale';

SELECT *
FROM students s 
WHERE name LIKE 'Marco';

SELECT *
FROM courses c 
WHERE cfu >= 12;

SELECT *
FROM courses c 
WHERE cfu > 10
OR cfu < 5;

SELECT *
FROM courses c 
WHERE `year` = 1
AND period = 'I semestre';

SELECT *
FROM courses c 
WHERE website IS NULL;

SELECT *
FROM teachers t 
WHERE phone IS NOT NULL;

SELECT *
FROM students s 
WHERE name LIKE 'E%';

SELECT COUNT(*)
FROM teachers t 
WHERE name LIKE 'E%';

SELECT COUNT(*)
FROM teachers t 
WHERE phone IS NULL;

SELECT *
FROM students s 
WHERE year (date_of_birth) = 1990;

SELECT *
FROM courses c 
WHERE cfu > 10;

SELECT *
FROM students s 
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30; 

SELECT *
FROM courses c 
WHERE `year` = 1
AND period = 'I semestre';

SELECT *
FROM exams e 
WHERE `date` = '2020.06.20'
AND `hour` > '14:00:00';

SELECT *
FROM degrees d
WHERE `level` = 'magistrale';

SELECT COUNT(*)
FROM departments d ;

SELECT COUNT(*)
FROM teachers t 
WHERE phone IS NULL;

SELECT COUNT(*) AS 'iscritti per anno', YEAR(enrolment_date)
FROM students s 
GROUP BY YEAR(enrolment_date);

SELECT office_address, COUNT(*) AS numero_insegnanti
FROM teachers t 
GROUP BY office_address 
ORDER BY numero_insegnanti DESC;

SELECT exam_id , AVG(vote) AS media_voti
FROM exam_student es 
GROUP BY exam_id 
ORDER BY media_voti DESC;

SELECT department_id, COUNT(*) AS number_courses 
FROM degrees d 
GROUP BY department_id;



