class AddSchoolToStudentsTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :school_id, :integer
  end
  def change
    add_column :students, :school_id, :integer
  end
end
