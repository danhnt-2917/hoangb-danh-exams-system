class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :total_score
      t.references :quiz, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
