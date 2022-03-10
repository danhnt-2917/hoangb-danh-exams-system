class Exam < ApplicationRecord
  EXAM_PARAMS = [:id, :start_time, :quiz_id, exam_details_attributes: [:question_id, :answer_choice,
    exam_detail_answers_attributes: [:checked, :answer_id, :id]]].freeze

  belongs_to :quiz
  belongs_to :user
  has_many :exam_details, dependent: :destroy

  accepts_nested_attributes_for :exam_details, allow_destroy: true

  delegate :subject_name, to: :quiz, allow_nil: true, prefix: true

  scope :sort_by_created_date, ->{order :created_at}

  scope :find_by_subject,
        ->(id){joins({quiz: :subject}, :user).where(subjects: {id: id}) if id.present?}
end
