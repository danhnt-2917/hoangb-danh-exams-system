class Question < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :answers, dependent: :destroy
  has_many :exam_details, dependent: :destroy
end
