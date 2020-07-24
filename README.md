# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

A Student has a last_name (string)
A Student has a grade_level (string)...
Student#full_name should return the first and last name of the student in one string
Student#grade_level should return the student's grade level
Student.all should return a list of all students
A student has many notebooks
A notebook should have a subject_matter (string)
A notebook should a color (string)
A notebook should have number_of_pages(integer)
Notebook#pages should return false if over 200 pages
Notebook belongs to a student
Student#notebooks should return the notebook that student belongs to
notebook#students should return a list of all the students that belong to this notebook