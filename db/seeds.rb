Student.delete_all
Teacher.delete_all

john = Student.create(first_name: "John", last_name: "Doe", grade_level: "tenth")
mary = Student.create(first_name: "Mary", last_name: "Sue", grade_level: "eleventh")

johnson = Teacher.create(last_name: "Johnson", grade_level: "tenth", years_of_experience: 10)
white = Teacher.create(last_name: "White", grade_level: "tenth", years_of_experience: 4)