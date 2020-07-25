class AddCurrentGradeToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :current_grade, :string
  end
end
