FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :user do
    email
    password 'switzerland'
    password_confirmation 'switzerland'
  end
end
