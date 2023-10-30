use leyre_abraguin_sql_project;

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`)
);

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_email` varchar(80) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  UNIQUE KEY `student_email_UNIQUE` (`student_email`)
);

CREATE TABLE `professors` (
  `professor_id` int(11) NOT NULL,
  `professor_name` varchar(100) NOT NULL,
  `professor_email` varchar(80) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE KEY `professor_id_UNIQUE` (`professor_id`),
  UNIQUE KEY `professor_email_UNIQUE` (`professor_email`)
);

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `student_fk_idx` (`student_id`),
  KEY `professor_fk_idx` (`professor_id`),
  KEY `course_fk_idx` (`course_id`),
  CONSTRAINT `course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `professor_fk` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`professor_id`),
  CONSTRAINT `student_fk` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
);

INSERT INTO courses (course_id,course_name)
VALUES
	(1, "Curso experimental"),
	(2, "Curso matematicas"),
    (3, "Curso derecho"),
    (4, "Curso medicina"),
    (5, "Curso musica");
    
INSERT INTO professors (professor_id, professor_name, professor_email)
VALUES 
	(101,"Carlos","carlos@prueba.com"),
	(102,"Jose","jose@prueba.com"),
	(103,"Sonia","sonia@prueba.com"),
	(104,"Elena","elena@prueba.com");
    
INSERT INTO students (student_id, student_name, student_email)
VALUES
	(201,"Pepe","pepe1@student.com"),
    (202,"Pepe","pepe2@student.com"),
    (203,"Pepe","pepe3@student.com"),
    (204,"Pepe","pepe4@student.com"),
    (205,"Pepe","pepe5@student.com"),
    (206,"Pepe","pepe6@student.com"),
    (207,"Pepe","pepe7@student.com"),
    (208,"Pepe","pepe8@student.com"),
    (209,"Pepe","pepe9@student.com"),
    (210,"Pepe","pepe10@student.com");
    
INSERT INTO grades (professor_id, course_id, student_id, grade)
VALUES
    (101, 1, 201, 5),
    (102, 1, 201, 6),
    (103, 1, 201, 4),
    (104, 1, 201, 2),
    (101, 2, 201, 9),
    (102, 2, 201, 6),
    (103, 2, 201, 5),
    (104, 2, 201, 4),
    (101, 3, 201, 6),
    (102, 3, 201, 9),
    (103, 3, 201, 5),
    (104, 3, 201, 10),
    (101, 4, 201, 1),
    (102, 4, 201, 7),
    (103, 4, 201, 10),
    (104, 4, 201, 7),
    (101, 5, 201, 8),
    (102, 5, 201, 6),
    (103, 5, 201, 7),
    (104, 5, 201, 4),
    (101, 1, 202, 1),
    (102, 1, 202, 3),
    (103, 1, 202, 9),
    (104, 1, 202, 8),
    (101, 2, 202, 1),
    (102, 2, 202, 9),
    (103, 2, 202, 4),
    (104, 2, 202, 2),
    (101, 3, 202, 6),
    (102, 3, 202, 3),
    (103, 3, 202, 8),
    (104, 3, 202, 1),
    (101, 4, 202, 10),
    (102, 4, 202, 7),
    (103, 4, 202, 3),
    (104, 4, 202, 4),
    (101, 5, 202, 2),
    (102, 5, 202, 6),
    (103, 5, 202, 2),
    (104, 5, 202, 4),
    (101, 1, 203, 2),
    (102, 1, 203, 6),
    (103, 1, 203, 6),
    (104, 1, 203, 2),
    (101, 2, 203, 9),
    (102, 2, 203, 10),
    (103, 2, 203, 3),
    (104, 2, 203, 2),
    (101, 3, 203, 2),
    (102, 3, 203, 4),
    (103, 3, 203, 4),
    (104, 3, 203, 8),
    (101, 4, 203, 8),
    (102, 4, 203, 5),
    (103, 4, 203, 10),
    (104, 4, 203, 4),
    (101, 5, 203, 2),
    (102, 5, 203, 6),
    (103, 5, 203, 4),
    (104, 5, 203, 9),
    (101, 1, 204, 5),
    (102, 1, 204, 6),
    (103, 1, 204, 6),
    (104, 1, 204, 2),
    (101, 2, 204, 10),
    (102, 2, 204, 4),
    (103, 2, 204, 10),
    (104, 2, 204, 6),
    (101, 3, 204, 10),
    (102, 3, 204, 1),
    (103, 3, 204, 6),
    (104, 3, 204, 6),
    (101, 4, 204, 3),
    (102, 4, 204, 7),
    (103, 4, 204, 4),
    (104, 4, 204, 10),
    (101, 5, 204, 5),
    (102, 5, 204, 4),
    (103, 5, 204, 5),
    (104, 5, 204, 2),
    (101, 1, 205, 6),
    (102, 1, 205, 4),
    (103, 1, 205, 1),
    (104, 1, 205, 3),
    (101, 2, 205, 2),
    (102, 2, 205, 9),
    (103, 2, 205, 9),
    (104, 2, 205, 9),
    (101, 3, 205, 6),
    (102, 3, 205, 1),
    (103, 3, 205, 7),
    (104, 3, 205, 1),
    (101, 4, 205, 4),
    (102, 4, 205, 5),
    (103, 4, 205, 4),
    (104, 4, 205, 4),
    (101, 5, 205, 8),
    (102, 5, 205, 9),
    (103, 5, 205, 9),
    (104, 5, 205, 9),
    (101, 1, 206, 6),
    (102, 1, 206, 2),
    (103, 1, 206, 3),
    (104, 1, 206, 7),
    (101, 2, 206, 5),
    (102, 2, 206, 4),
    (103, 2, 206, 5),
    (104, 2, 206, 1),
    (101, 3, 206, 9),
    (102, 3, 206, 3),
    (103, 3, 206, 7),
    (104, 3, 206, 7),
    (101, 4, 206, 5),
    (102, 4, 206, 10),
    (103, 4, 206, 5),
    (104, 4, 206, 4),
    (101, 5, 206, 3),
    (102, 5, 206, 6),
    (103, 5, 206, 8),
    (104, 5, 206, 10),
    (101, 1, 207, 9),
    (102, 1, 207, 2),
    (103, 1, 207, 5),
    (104, 1, 207, 9),
    (101, 2, 207, 10),
    (102, 2, 207, 10),
    (103, 2, 207, 1),
    (104, 2, 207, 4),
    (101, 3, 207, 7),
    (102, 3, 207, 3),
    (103, 3, 207, 5),
    (104, 3, 207, 3),
    (101, 4, 207, 10),
    (102, 4, 207, 3),
    (103, 4, 207, 1),
    (104, 4, 207, 6),
    (101, 5, 207, 8),
    (102, 5, 207, 3),
    (103, 5, 207, 8),
    (104, 5, 207, 2),
    (101, 1, 208, 7),
    (102, 1, 208, 7),
    (103, 1, 208, 3),
    (104, 1, 208, 3),
    (101, 2, 208, 5),
    (102, 2, 208, 6),
    (103, 2, 208, 5),
    (104, 2, 208, 7),
    (101, 3, 208, 9),
    (102, 3, 208, 2),
    (103, 3, 208, 3),
    (104, 3, 208, 10),
    (101, 4, 208, 10),
    (102, 4, 208, 8),
    (103, 4, 208, 9),
    (104, 4, 208, 2),
    (101, 5, 208, 1),
    (102, 5, 208, 1),
    (103, 5, 208, 9),
    (104, 5, 208, 3),
    (101, 1, 209, 7),
    (102, 1, 209, 8),
    (103, 1, 209, 5),
    (104, 1, 209, 3),
    (101, 2, 209, 10),
    (102, 2, 209, 9),
    (103, 2, 209, 4),
    (104, 2, 209, 3),
    (101, 3, 209, 1),
    (102, 3, 209, 5),
    (103, 3, 209, 1),
    (104, 3, 209, 9),
    (101, 4, 209, 3),
    (102, 4, 209, 8),
    (103, 4, 209, 9),
    (104, 4, 209, 3),
    (101, 5, 209, 4),
    (102, 5, 209, 4),
    (103, 5, 209, 6),
    (104, 5, 209, 10),
    (101, 1, 210, 8),
    (102, 1, 210, 10),
    (103, 1, 210, 4),
    (104, 1, 210, 2),
    (101, 2, 210, 8),
    (102, 2, 210, 4),
    (103, 2, 210, 6),
    (104, 2, 210, 6),
    (101, 3, 210, 10),
    (102, 3, 210, 4),
    (103, 3, 210, 7),
    (104, 3, 210, 5),
    (101, 4, 210, 1),
    (102, 4, 210, 10),
    (103, 4, 210, 7),
    (104, 4, 210, 6),
    (101, 5, 210, 6),
    (102, 5, 210, 2),
    (103, 5, 210, 4),
    (104, 5, 210, 10),
     (103, 5, 209, 6),
    (104, 5, 209, 10),
    (101, 1, 210, 8),
    (102, 1, 210, 10),
    (103, 1, 210, 4),
    (104, 1, 210, 2),
    (101, 2, 210, 8),
    (102, 2, 210, 4),
    (103, 2, 210, 6),
    (104, 2, 210, 6),
    (101, 3, 210, 10),
    (102, 3, 210, 4),
    (103, 3, 210, 7),
    (104, 3, 210, 5),
    (101, 4, 210, 1),
    (102, 4, 210, 10),
    (103, 4, 210, 7),
    (104, 4, 210, 6),
    (101, 5, 210, 6),
    (102, 5, 210, 2),
    (103, 5, 210, 4),
    (104, 5, 210, 10);

/* The average grade that is given by each professor */
SELECT AVG(grade), g.professor_id, p.professor_name FROM grades as g
	INNER JOIN professors as p ON g.professor_id = p.professor_id
	GROUP BY p.professor_id;

/* The top grades for each student */
SELECT MAX(grade), g.student_id, s.student_name, s.student_email FROM grades as g
	INNER JOIN students as s ON g.student_id = s.student_id
	GROUP BY s.student_id;

/* Sort students by the courses that they are enrolled in */
SELECT c.course_name, g.student_id, s.student_email FROM grades as g
	INNER JOIN students as s ON g.student_id = s.student_id
    INNER JOIN courses as c ON g.course_id = c.course_id
    ORDER BY c.course_name, s.student_email;

/* Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course*/
SELECT c.course_id, c.course_name, AVG(g.grade) as average FROM courses as c
	INNER JOIN grades AS g ON c.course_id = g.course_id
    GROUP BY c.course_id
    ORDER BY average;

/* Finding which student and professor have the most courses in common */
SELECT g.professor_id, g.student_id, COUNT(1) as courses_in_common FROM grades as g 
	GROUP BY g.professor_id, g.student_id
    ORDER BY courses_in_common desc, g.professor_id, g.student_id;
    


	
    


    

    




