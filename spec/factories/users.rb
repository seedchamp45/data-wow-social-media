# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { "john@example.com" }
    password { "password123" }
    # Additional attributes can be defined here
  end
end
