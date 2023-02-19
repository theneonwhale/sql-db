--Знайти список курсів, які відвідує студент
SELECT s.fullname AS student_name, d.name AS discipline_name
FROM students s
LEFT JOIN grades gr ON gr.student_id = s.id
LEFT JOIN disciplines d ON d.id = gr.discipline_id
WHERE s.id = 1
GROUP BY student_name, discipline_name;