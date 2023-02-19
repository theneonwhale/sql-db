
--Знайти оцінки студентів у окремій групі з певного предмета
SELECT s.fullname AS student_name, g.name AS group_name, d.name AS discipline, gr.grade, gr.date_of
FROM [groups] g
LEFT JOIN students s ON s.group_id = g.id
LEFT JOIN grades gr ON gr.student_id = s.id
LEFT JOIN disciplines d ON d.id = gr.discipline_id
WHERE g.id = 2 AND d.id = 5;