class Exam < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  has_many :exam_details, dependent: :destroy

  delegate :subject_name, to: :quiz, allow_nil: true, prefix: true

  scope :sort_by_created_date, ->{order :created_at}

  scope :find_by_subject,
        ->(id){joins({quiz: :subject}, :user).where(subjects: {id: id}) if id.present?}
end
