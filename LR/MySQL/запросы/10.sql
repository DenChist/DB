SELECT surname, name FROM studentsperformance.students
WHERE name IN ('Андрей', 'Михаил', 'Лев')
UNION SELECT surname, name FROM studentsperformance.students
WHERE gender = 'Ж';