Student.delete_all
Teacher.delete_all

johnson = Teacher.create(last_name: "Johnson", years_of_experience: 10)
white = Teacher.create(last_name: "White", years_of_experience: 4)

john = Student.create(first_name: "John", last_name: "Doe")
mary = Student.create(first_name: "Mary", last_name: "Sue")
Student.create(first_name: "Phil", last_name: "Phillips")

GradeLevel.create(grade_level: "tenth", teacher: johnson, student: john)
GradeLevel.create(grade_level: "eleventh", teacher: white, student: john)
GradeLevel.create(grade_level: "ninth", teacher: johnson, student: mary)
GradeLevel.create(grade_level: "twelfth", teacher: white, student: john)
