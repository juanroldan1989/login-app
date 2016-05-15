FactoryGirl.define do
  factory :user do
    full_name        ["Clark Kent", "Bruce Wayne"].sample
    sequence(:email) { |n| "super_hero_#{n}@gmail.com" }

    trait :invalid do
      password "password"
    end

    trait :valid do
      password "another_password"
    end
  end
end
