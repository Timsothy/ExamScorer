FactoryBot.define do
  factory :exam do
    grade { Grade.where.not(id: 0).sample }
    exam_name { ExamName.where.not(id: 0).sample }
    japanese_score { Faker::Number.between(from: 0, to: 100) }
    japanese_average_score { Faker::Number.between(from: 0, to: 100) }
    mathematics_score { Faker::Number.between(from: 0, to: 100) }
    mathematics_average_score { Faker::Number.between(from: 0, to: 100) }
    english_score { Faker::Number.between(from: 0, to: 100) }
    english_average_score { Faker::Number.between(from: 0, to: 100) }
    sosial_score { Faker::Number.between(from: 0, to: 100) }
    sosial_average_score { Faker::Number.between(from: 0, to: 100) }
    science_score { Faker::Number.between(from: 0, to: 100) }
    science_average_score { Faker::Number.between(from: 0, to: 100) }
    total_score { Faker::Number.between(from: 0, to: 500) }
    rank { Faker::Number.number }
    association :student
  end
end
