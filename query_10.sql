--Список курсів, які певному студенту читає певний викладач
SELECT s.fullname AS student_name, d.name AS discipline_name, t.fullname AS teacher_name
FROM students s
LEFT JOIN grades gr ON gr.student_id = s.id
LEFT JOIN disciplines d ON gr.discipline_id = d.id
LEFT JOIN teachers t ON d.teacher_id = t.id
WHERE s.id = 8 AND t.id = 4
GROUP BY discipline_name;