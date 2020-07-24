class CreateStudentExams < ActiveRecord::Migration[6.0]
  def change
    create_table :student_exams do |t|
      t.integer :student_id 
      t.integer :exam_id
    end
  end
end
