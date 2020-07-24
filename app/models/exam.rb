class Exam < ActiveRecord::Base
    belongs_to :teacher 
    has_many :student_exams 
    has_many :students, through: :student_exams

    def self.all_exams_in_topic(topic_name) 
        self.where topic: topic_name
    end
end