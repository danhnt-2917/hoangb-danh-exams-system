class Question < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :answers, dependent: :destroy
  has_many :exam_details, dependent: :destroy

  accepts_nested_attributes_for :answers, allow_destroy: true,
    reject_if: proc{|attributes| attributes["content"].blank?}

  validates :answers, presence: true

  validates :content, presence: true,
    length: {maximum: Settings.validates.max_length},
    uniqueness: {case_sensitive: false}

  enum question_type: {multi_choice: 0, single_choice: 1}

  scope :find_content, ->(content){where "content like ?", content if content.present?}
  scope :find_user, ->(id){where "user_id = ?", id if id.present?}
  scope :find_subject, ->(id){where "subject_id = ?", id if id.present?}
  scope :find_type, ->(type){where "question_type = ?", type if type.present?}
end
