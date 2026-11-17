-- Task 1
-- Task: Display course names and the names of the instructors who teach them.
-- Solution:
select courses.course_name, instructors.name
from courses join instructors on courses.instructor_id = instructors.id;


-- Task 2
-- Task: Display the first and last names of students and the names of the courses they are enrolled in.
-- Solution:
select students.first_name, students.last_name, courses.course_name
from students join enrollments on students.id = enrollments.student_id join courses on enrollments.course_id = courses.id;


-- Task 3
-- Task: Display the first and last names of students and the names of the projects they are working on.
-- Solution:
select students.first_name, students.last_name, projects.project_name
from students join projects on students.id = projects.student_id;


-- Task 4
-- Task: Display the first and last names of students and their grades.
-- Solution:
select students.first_name, students.last_name, grades.grade
from students join grades on students.id = grades.student_id;


-- Task 5
-- Task: Display course names, their categories, and the names of the instructors.
-- Solution:
select courses.course_name, courses.category, instructors.name
from courses join instructors on courses.instructor_id = instructors.id;


-- Task 6
-- Task: Display student first names, course names, and their last attendance dates.
-- Solution:
select students.first_name, courses.course_name, enrollments.last_attendance_date
from students join enrollments on students.id = enrollments.student_id join courses on enrollments.course_id = courses.id;


-- Task 7
-- Task: Display course names and the grades received for those courses.
-- Solution:
select courses.course_name, grades.grade
from courses join grades on courses.id = grades.course_id;


-- Task 8
-- Task: Display the first and last names of students and the semesters in which they are enrolled in courses.
-- Solution:
select students.first_name, students.last_name, enrollments.semester
from students join enrollments on students.id = enrollments.student_id;


-- Task 9
-- Task: Display course names, students' first and last names, and their grades for those courses.
-- Solution:
select courses.course_name, students.first_name, students.last_name, grades.grade
from students join grades on students.id = grades.student_id join courses on grades.course_id = courses.id;


-- Task 10
-- Task: Display instructor names and course names belonging to the Computer Science category.
-- Solution:
select instructors.name, courses.course_name
from instructors join courses on instructors.id = courses.instructor_id
where courses.category = 'Computer Science';