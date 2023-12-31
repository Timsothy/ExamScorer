FactoryBot.define do
  factory :student do
    email { Faker::Internet.free_email }
    password { "1a#{Faker::Internet.password(min_length: 4)}" }
    password_confirmation { password }
    gender { Gender.where.not(id: 0).sample }
    last_name { '山田' }
    first_name { '太郎' }
    last_name_kana { 'ヤマダ' }
    first_name_kana { 'タロウ' }
    school { Faker::Lorem.word }
  end
end
