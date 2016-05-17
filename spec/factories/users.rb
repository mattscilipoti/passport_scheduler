FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :user do
    confirmed_at Time.now
    sequence(:name) { |n| "TEST User#{n}" }
    email
    password "please123"

    trait :admin do
      role 'admin'
    end

    factory :teacher do
      sequence(:name) { |n| "TEST Teacher#{n}" }
    end
  end
end
