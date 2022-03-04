class Answer < ApplicationRecord
  belongs_to :question

  scope :find_true_answer, ->{where "is_answer is true"}
end
