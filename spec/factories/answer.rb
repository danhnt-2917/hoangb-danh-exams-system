FactoryBot.define do
  factory :answer do
    content {Faker::Lorem.question(word_count: 5)}
    question {FactoryBot.create :question}
  end
end
