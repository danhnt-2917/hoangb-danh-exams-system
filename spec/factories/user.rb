FactoryBot.define do
  factory :user do
    name {Faker::Name.name}
    address {Faker::Address.country}
    phone {Faker::PhoneNumber.cell_phone}
    email {Faker::Internet.email}
    password {"123123"}
    password_confirmation {"123123"}
  end
end
