class CreateExamDetailAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_detail_answers do |t|
      t.references :exam_detail, foreign_key: true
      t.references :answer, foreign_key: true
      t.boolean :checked

      t.timestamps
    end
  end
end
