--Aggregate functions
CREATE TABLE grades (name TEXT, grade INTEGER);

INSERT INTO grades (name, grade) VALUES
    ("John", 97), ("Eric", 88), ("Jessica", 98), ("Mike", 82), ("Jeff", NULL);

SELECT "total students", COUNT(name) FROM grades;
SELECT "total grades", COUNT(grade) FROM grades;
SELECT "sum of grades", SUM(grade) FROM grades;
SELECT "grade average", AVG(grade) FROM grades;
SELECT "lowest grade", MIN(grade) FROM grades;
SELECT "highest grade", MAX(grade) FROM grades;
SELECT "names", GROUP_CONCAT(name) FROM grades;

--Group By Example
CREATE TABLE grades (name TEXT, class INTEGER, grade INTEGER);

INSERT INTO grades (name, class, grade) VALUES
    ("John", 1, 97), ("Eric", 1, 88), ("Jessica", 1, 98), ("Mike", 1, 82), ("Jeff", 1, NULL),
    ("Ben", 2, 93), ("Andrew", 2, 82), ("Jason", 2, 87), ("Carol", 2, 99), ("Fred", 2, 79);

--Group By Example Cont.
CREATE TABLE grades (name TEXT, class INTEGER, grade INTEGER);

INSERT INTO grades (name, class, grade) VALUES
    ("John", 1, 97), ("Eric", 1, 88), ("Jessica", 1, 98), ("Mike", 1, 82), ("Jeff", 1, NULL),
    ("Ben", 2, 93), ("Andrew", 2, 82), ("Jason", 2, 87), ("Carol", 2, 99), ("Fred", 2, 79);

.mode column
.headers on
SELECT class, GROUP_CONCAT(name), AVG(grade)
FROM grades
GROUP BY class;

--Code Completed
CREATE TABLE grades (name TEXT, class INTEGER, grade INTEGER);

INSERT INTO grades (name, class, grade) VALUES
    ("John", 1, 97), ("Eric", 1, 88), ("Jessica", 1, 98), ("Mike", 1, 82), ("Jeff", 1, NULL),
    ("Ben", 2, 93), ("Andrew", 2, 82), ("Jason", 2, 87), ("Carol", 2, 99), ("Fred", 2, 79);

SELECT class, MAX(grade)
FROM grades
GROUP BY class;