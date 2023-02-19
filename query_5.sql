--Знайти які курси читає певний викладач
SELECT t.fullname AS teacher, d.name AS discipline
FROM teachers t
LEFT JOIN disciplines d ON d.teacher_id = t.id
GROUP BY d.name, t.fullname
ORDER BY t.fullname;
