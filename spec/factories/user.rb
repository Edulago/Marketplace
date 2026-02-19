require 'faker'

FactoryBot.define do 
  factory :user do
    name { "eduardo" }
    email { Faker::Internet.unique.email } 
    phone { Faker::PhoneNumber.unique.phone_number }
    password { "123456" }
    password_confirmation { "123456" }
  end 
end
