FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "super_hero_#{n}@gmail.com" }

    trait :invalid do
      password "password"
    end

    trait :valid do
      password "another_password"
    end
  end
end
