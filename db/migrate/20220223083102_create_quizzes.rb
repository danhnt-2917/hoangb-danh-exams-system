class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.integer :max_time
      t.integer :status
      t.integer :max_score
      t.integer :quantity_question
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
