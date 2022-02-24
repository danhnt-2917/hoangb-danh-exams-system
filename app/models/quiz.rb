class Quiz < ApplicationRecord
  belongs_to :subject
  has_many :exams, dependent: :destroy
end
