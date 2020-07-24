class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :student_exams
    has_many :teachers, through: :grade_levels
    has_many :exams, through: :student_exams
    belongs_to :school
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def self.all_in_grade(grade)
        instances_in_grade = GradeLevel.all.select {|grade_level| grade_level.grade_level == grade}
        instances_in_grade.map {|instance| instance.student}
    end
    def topics_to_study
        self.exams.map{|exam| exam.topic}
    end

    def exam_count
        self.exams.count
    end
end
