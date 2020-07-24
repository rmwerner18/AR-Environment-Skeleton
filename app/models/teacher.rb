class Teacher < ActiveRecord::Base
    has_many :exams
    has_many :grade_levels
    has_many :students, through: :grade_levels
    belongs_to :school
    def tenure
        if self.years_of_experience > 5
            true
        else 
            false
        end
    end
    def self.most_experience
        self.all.max_by {|teacher| teacher.years_of_experience}
    end
    def topics_to_teach
        self.exams.map{|exam| exam.topic}
    end

    def exam_count 
        self.exams.count
    end

    def create_exam(name, topic)
        Exam.create(name: name, teacher_id: self.id, topic: topic)
    end
end