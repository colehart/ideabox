# spec/factory/ideas
require 'ffaker'

FactoryBot.define do
  factory :idea do
    title FFaker::Book.unique.title
    description FFaker::HipsterIpsum.unique.paragraph
  end
end
