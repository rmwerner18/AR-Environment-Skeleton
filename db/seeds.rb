Student.delete_all
Teacher.delete_all
GradeLevel.delete_all
School.delete_all
Exam.delete_all

adams = School.create(name: "Adams High School", mascot: "highlander")
rhs = School.create(name: "Rochester High School", mascot: "falcons")
stoney = School.create(name: "Stoney Creek High School", mascot: "cougars")

johnson = Teacher.create(last_name: "Johnson", years_of_experience: 10, school: adams)
white = Teacher.create(last_name: "White", years_of_experience: 4, school: rhs)
ciluffo = Teacher.create(last_name: "Ciluffo", years_of_experience: 15, school: adams)
briski = Teacher.create(last_name: "Briski", years_of_experience: 3, school: rhs)
blue = Teacher.create(last_name: "Blue", years_of_experience: 15, school: stoney)

john = Student.create(first_name: "John", last_name: "Doe", school: adams)
mary = Student.create(first_name: "Mary", last_name: "Sue", school: rhs)
phil = Student.create(first_name: "Phil", last_name: "Phillips", school: stoney)
madison = Student.create(first_name: "Madison", last_name: "Green", school: adams)
alyssa = Student.create(first_name: "Alyssa", last_name: "Mitchell", school: rhs)
james = Student.create(first_name: "James", last_name: "Dean", school: stoney)


GradeLevel.create(grade_level: "tenth", teacher: johnson, student: john)
GradeLevel.create(grade_level: "eleventh", teacher: white, student: mary)
GradeLevel.create(grade_level: "ninth", teacher: johnson, student: madison)
GradeLevel.create(grade_level: "twelfth", teacher: white, student: mary)
GradeLevel.create(grade_level: "twelfth", teacher: ciluffo, student: john)
GradeLevel.create(grade_level: "elevent", teacher: ciluffo, student: madison)
GradeLevel.create(grade_level: "tenth", teacher: ciluffo, student: madison)
GradeLevel.create(grade_level: "tenth", teacher: briski, student: alyssa)
GradeLevel.create(grade_level: "ninth", teacher: blue, student: james)
GradeLevel.create(grade_level: "twelfth", teacher: blue, student: phil)

biology_exam = Exam.create(name: "Intro to Biology", teacher_id: johnson.id, topic: "Biology")
comp_sci_exam = Exam.create(name: "Intro to Algorithms", teacher_id: white.id, topic: "Computer Science")

madison_biology = StudentExam.create(student_id: madison.id, exam_id: biology_exam.id)
alyssa_biology = StudentExam.create(student_id: alyssa.id, exam_id: biology_exam.id)
madison_comp_sci = StudentExam.create(student_id: madison.id, exam_id: comp_sci_exam.id)
