Student.delete_all
Teacher.delete_all

johnson = Teacher.create(last_name: "Johnson", grade_level: "tenth", years_of_experience: 10)
white = Teacher.create(last_name: "White", grade_level: "tenth", years_of_experience: 4)
john = Student.create(first_name: "John", last_name: "Doe", grade_level: "tenth", teacher: johnson)
mary = Student.create(first_name: "Mary", last_name: "Sue", grade_level: "eleventh", teacher: white)
Student.create(first_name: "Phil", last_name: "Phillips", grade_level: "tenth", teacher: johnson)
