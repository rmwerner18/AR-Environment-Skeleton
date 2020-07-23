class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def self.all_in_grade(grade)
        instances_in_grade = GradeLevel.all.select {|grade_level| grade_level.grade_level == grade}
        instances_in_grade.map {|instance| instance.student}
    end
end
