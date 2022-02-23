class CreateExamDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_details do |t|
      t.integer :answer_choice
      t.references :question, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
