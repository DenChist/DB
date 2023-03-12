SELECT a.id_student, a.grade as g1, b.grade as g2, c.grade as g3, d.grade as g4
FROM studentsperformance.grades a
LEFT JOIN studentsperformance.grades b ON a.id_student = b.id_student
LEFT JOIN studentsperformance.grades c ON b.id_student = c.id_student
LEFT JOIN studentsperformance.grades d ON c.id_student = d.id_student
WHERE a.id_exam = 1 AND b.id_exam = 2 AND c.id_exam = 3 AND d.id_exam = 4;