-- Task 1
-- Task: Find students whose first name starts with A and who were born after 1995.
-- Solution:
select * from students where first_name like 'A%' and birth_date >= '1996-01-01';


-- Task 2
-- Task: Find students with an ID greater than 10 and a score of 4 or 5.
-- Solution:
alter table students add column score int;
update students SET score = FLOOR(1 + RAND() * 5);

select * from students where id > 10 and score in (4, 5);


-- Task 3
-- Task: Find students who were born in March or April.
-- Solution:
select * from students where month(birth_date) in (3, 4);


-- Task 4
-- Task: Find students whose last name starts with S or D.
-- Solution:
select * from students where last_name like 'S%' or last_name like 'D%';


-- Task 5
-- Task: Find students with an ID between 20 and 100 (inclusive) and a score greater than 3.
-- Solution:
select * from students where id between 20 and 100 and score > 3;


-- Task 6
-- Task: Sort students by score in descending order.
-- Solution:
select * from students order by score desc;


-- Task 7
-- Task: Sort students alphabetically by last name, then by first name.
-- Solution:
select * from students order by last_name, first_name;


-- Task 8
-- Task: Find students who were born during the first 10 days of any month.
-- Solution:
select * from students where day(birth_date) <= 10;


-- Task 9
-- Task: Find students whose first name contains the letter 'a' and whose score is below 4.
-- Solution:
select * from students where first_name like '%a%' and score < 4;


-- Task 10
-- Task: Display the 5 students with the highest scores.
-- Solution:
select * from students order by score desc limit 5;


-- Task 11
-- Task: Find students whose ID is not 1, 2, or 3.
-- Solution:
select * from students where id not in (1,2,3);


-- Task 12
-- Task: Find students who were born in winter (December, January, or February).
-- Solution:
select * from students where month(birth_date) in (12,1,2);


-- Task 13
-- Task: Find students whose last name contains the letter 'o'.
-- Solution:
select * from students where last_name like '%o%';


-- Task 14
-- Task: Find students with a score greater than 2 but less than 5.
-- Solution:
select * from students where score > 2 and score < 5;


-- Task 15
-- Task: Sort students by date of birth from earliest to latest.
-- Solution:
select * from students order by birth_date;


-- Task 16
-- Task: Find students whose first name starts with T and whose ID is greater than 50.
-- Solution:
select * from students where first_name like 'T%' and id > 50;


-- Task 17
-- Task: Find students who were born in 1990, 1995, or 2000.
-- Solution:
select * from students where year(birth_date) in (1990, 1995, 2000);


-- Task 18
-- Task: Find students with a score of 3 or whose last name starts with B.
-- Solution:
select * from students where score = 3 or last_name like 'B%';


-- Task 19
-- Task: Find students with an ID greater than 10 who were born in summer (June, July, or August).
-- Solution:
select * from students where month(birth_date) in (6,7,8) and id > 10;


-- Task 20
-- Task: Sort students first by score, then by ID.
-- Solution:
select * from students order by score, id;


-- Task 21
-- Task: Find students whose first name is longer than 5 characters.
-- Solution:
select * from students where char_length(first_name) > 5;


-- Task 22
-- Task: Find students whose last name ends with 'n' and whose score is 5.
-- Solution:
select * from students where last_name like '%n' and score = 5;


-- Task 23
-- Task: Find students who were born after 1998 and sort them by date of birth.
-- Solution:
select * from students where year(birth_date) > 1998 order by birth_date;


-- Task 24
-- Task: Find students whose ID is divisible by 3 without a remainder.
-- Solution:
select * from students where id % 3 = 0;


-- Task 25
-- Task: Display the 7 students with the lowest scores.
-- Solution:
select * from students order by score limit 7;