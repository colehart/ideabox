# spec/factory/users
require 'ffaker'

FactoryBot.define do
  factory :idea do
    username FFaker::Name.unique
    sequence(:description) { |n| "This is a description #{n}" }
  end
end
