class Student < ActiveRecord::Base[4.2]
    def full_name
        "#{first_name} #{last_name}"
    end
    def self.all_in_grade
    end
end
