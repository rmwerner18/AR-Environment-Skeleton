Student.delete_all
Teacher.delete_all
GradeLevel.delete_all
School.delete_all

adams = School.create(name: "Adams High School", mascot: "highlander")
rhs = School.create(name: "Rochester High School", mascot: "falcons")
stoney = School.create(name: "Stoney Creek High School", mascot: "cougars")

johnson = Teacher.create(last_name: "Johnson", years_of_experience: 10, school: adams)
white = Teacher.create(last_name: "White", years_of_experience: 4, school: rhs)
ciluffo = Teacher.create(last_name: "Ciluffo", years_of_experience: 15, school: adams)
briski = Teacher.create(last_name: "Briski", years_of_experience: 3, school: rhs)
blue = Teacher.create(last_name: "Blue", years_of_experience: 15, school: stoney)

john = Student.create(first_name: "John", last_name: "Doe", school: adams, current_grade: "twelfth")
mary = Student.create(first_name: "Mary", last_name: "Sue", school: rhs, current_grade: "twelfth")
phil = Student.create(first_name: "Phil", last_name: "Phillips", school: stoney, current_grade: "twelfth")
madison = Student.create(first_name: "Madison", last_name: "Green", school: adams, current_grade: "eleventh")
alyssa = Student.create(first_name: "Alyssa", last_name: "Mitchell", school: rhs, current_grade: "tenth")
james = Student.create(first_name: "James", last_name: "Dean", school: stoney, current_grade: "ninth")


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



