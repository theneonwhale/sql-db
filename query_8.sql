--Знайти середній бал, який ставить певний викладач зі своїх предметів
SELECT t.fullname AS teacher_name, d.name AS discipline_name, ROUND(AVG(gr.grade), 2) AS average_grade
FROM teachers t
LEFT JOIN disciplines d ON d.teacher_id = t.id
LEFT JOIN grades gr ON gr.discipline_id = d.id
WHERE t.id = 3
GROUP BY teacher_name, discipline_name
ORDER BY average_grade DESC;