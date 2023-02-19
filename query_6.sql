--Знайти список студентів у певній групі
SELECT s.fullname AS student_name, g.name AS group_name
FROM [groups] g
LEFT JOIN students s ON g.id = s.group_id
WHERE g.id = 5;
