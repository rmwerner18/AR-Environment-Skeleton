class Notebook < ActiveRecord::Base
    belongs_to :student

    def pages
            if self.number_of_pages > 200
                return false
            else
                true
        end
    end 
end
