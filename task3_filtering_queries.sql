-- Task 3: Filtering Data Using WHERE, AND, OR, LIKE
-- SQL Developer Internship - Elevate Labs

-- Use database
USE intern_training_db;

-- 1. Filter students by age
SELECT *
FROM students
WHERE age > 21;

-- 2. Combine conditions using AND
SELECT *
FROM students
WHERE age > 21 AND date_of_birth < '2003-01-01';

-- 3. Combine conditions using OR
SELECT *
FROM students
WHERE age = 21 OR age = 22;

-- 4. Search names using LIKE (% wildcard)
SELECT *
FROM students
WHERE name LIKE 'A%';   -- Names starting with A

-- 5. Search names using LIKE (_ wildcard)
SELECT *
FROM students
WHERE name LIKE 'R____%';  -- Names starting with R (minimum 5 letters)

-- 6. Filter using IN
SELECT *
FROM students
WHERE age IN (21, 23);

-- 7. Filter using BETWEEN
SELECT *
FROM students
WHERE age BETWEEN 21 AND 23;

-- 8. Handle NULL values
SELECT *
FROM students
WHERE created_at IS NOT NULL;

-- 9. Email search (real-life example)
SELECT *
FROM students
WHERE email LIKE '%gmail.com';

-- 10. Use alias for readability
SELECT 
    name AS Student_Name,
    email AS Student_Email,
    age AS Student_Age
FROM students
WHERE age >= 22;
