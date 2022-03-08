class Quiz < ApplicationRecord
  belongs_to :subject
  has_many :exams, dependent: :destroy

  delegate :name, to: :subject, allow_nil: true, prefix: true
end
