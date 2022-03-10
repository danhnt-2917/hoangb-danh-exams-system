class ExamDetailAnswer < ApplicationRecord
  belongs_to :exam_detail
  belongs_to :answer

  delegate :content, :correct, to: :answer, prefix: true
end
