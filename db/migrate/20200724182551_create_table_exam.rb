class CreateTableExam < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :teacher_id
      t.string :topic
    end
  end
end
