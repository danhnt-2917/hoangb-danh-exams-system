FactoryBot.define do
  factory :exam do
    start_time {DateTime.now-0.1}
    end_time {DateTime.now}
    user {FactoryBot.create :user}
    quiz {FactoryBot.create :quiz}
  end
end
