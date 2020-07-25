class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
    belongs_to :school
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def self.all_in_grade(grade)
        instances_in_grade = GradeLevel.all.select {|grade_level| grade_level.grade_level == grade}
        instances_in_grade.map {|instance| instance.student}
    end
    def current_teacher
        grade_level = GradeLevel.all.find {
            |grade_lev| grade_lev.student == self && grade_lev.grade_level == self.current_grade
        }
        grade_level.teacher
    end
    def grade_up_all
        grades = {1: "ninth", 2: "tenth", 3: "eleventh", 4: "twelfth"}
        grades.each do |number, grade|
            Student.each do |student|
                if student.current_grade == grade && number < 4
                    student.current_grade = number + 1
                elsif student.current_grade == "twelfth"
                    student.current_grade = "none"
                    "Congrats! You graduated"
                end
            end
        end
    end
end
