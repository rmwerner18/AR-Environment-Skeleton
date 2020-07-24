class School < ActiveRecord::Base
    has_many :teachers
    has_many :students
    def self.most_students
        self.all.max_by {|school| school.students.count}
    end
end