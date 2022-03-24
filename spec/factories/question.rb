FactoryBot.define do
  factory :question do
    content {Faker::Lorem.question(word_count: 5)}
    question_type {Random.new.rand(0..1)}
    subject {FactoryBot.create :subject}
    user {FactoryBot.create :user}

    before(:create) do |question|
      question.answers << FactoryBot.build_list(:answer, 4, question: question)
    end
  end
end
