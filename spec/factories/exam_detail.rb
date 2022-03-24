FactoryBot.define do
  factory :exam_detail do
    answer_choice {Faker::Name.name}
    question {FactoryBot.create :question}
    exam {FactoryBot.create :exam}
  end
end
