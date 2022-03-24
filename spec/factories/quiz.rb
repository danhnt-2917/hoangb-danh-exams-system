FactoryBot.define do
  factory :quiz do
    max_time {Random.new.rand(15..30)}
    status {Random.new.rand(0..1)}
    max_score {Random.new.rand(15..30)}
    quantity_question {Random.new.rand(15..20)}
    subject {FactoryBot.create :subject}
  end
end
