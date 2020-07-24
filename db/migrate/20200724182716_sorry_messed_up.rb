class SorryMessedUp < ActiveRecord::Migration[6.0]
  def change
    change_column :exams, :teacher_id, :integer 
  end
end
