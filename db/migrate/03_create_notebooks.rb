class CreateNotebooks < ActiveRecord::Migration[6.0]
    def change
      create_table :notebooks do |t|
        t.string :color
        t.string :subject_matter
        t.integer :number_of_page
      end
    end
  end
  