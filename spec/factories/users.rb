FactoryGirl.define do
  factory :user do
   # sequence(:email) { |n| "Tweety#{n}@example.com"}
   # password "12341234"
   # username "Tweety"
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length = 8)}
    username { Faker::Name.first_name }
  end
end