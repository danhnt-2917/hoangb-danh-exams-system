class ExamDetail < ApplicationRecord
  belongs_to :exam
  belongs_to :question

  has_many :exam_detail_answers, dependent: :destroy

  accepts_nested_attributes_for :exam_detail_answers,
    allow_destroy: true
end
