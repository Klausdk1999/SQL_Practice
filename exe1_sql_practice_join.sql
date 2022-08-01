-------------------- Q1 ------------------------------
SELECT 
    users.id AS id,
    users.name AS name,
    cities.name AS city
FROM users
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

------------------- Q2 -------------------------------------
SELECT 
    t.id AS id,
    u1.name AS writer,
    u2.name AS recipient, 
    message
FROM testimonials t
JOIN users u1 ON t."writerId" = u1.id
JOIN users u2 ON t."recipientId" = u2.id;

-------------------- Q3 ----------------------------------------------
SELECT 
    users.id,
    users.name, 
    courses.name AS course, 
    schools.name AS school, educations."endDate"
FROM users
JOIN educations
ON users.id = educations."userId"
JOIN schools
ON educations."schoolId" = schools.id
JOIN courses
ON educations."courseId" = courses.id
WHERE users.id = 30 AND educations.status = 'finished';

--------------------- Q4 -----------------------------------------------
SELECT 
    users.id, 
    users.name, roles.name AS role, 
    companies.name AS company, 
    experiences."startDate"
FROM users
JOIN experiences
ON users.id = experiences."userId"
JOIN companies
ON experiences."companyId" = companies.id
JOIN roles
ON experiences."roleId" = roles.id
WHERE users.id = 50 AND experiences."endDate" IS NULL;
