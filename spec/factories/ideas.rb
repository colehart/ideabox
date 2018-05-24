# spec/factory/ideas
require 'ffaker'

FactoryBot.define do
  factory :idea do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "This is a description #{n}" }
  end
end

# FactoryBot.define do
#   factory :director do
#     name "Ilana Corson"
#   end
# end
# Pull up your user_creates_movie_spec.rb. Within this test you likely are creating a director with something like director = Director.create(name: "DirectorName")
#
# Having the above factory allows you to do this:
#
# #from user_creates_movie_spec.rb
#
# # Unsaved director (Ruby land):
# director = build(:director)
#
# # Saved director (Ruby and database land):
# director = create(:director)
# Overriding
# When creating a new instance you can override attributes in factories create(:director, name: "Sal Espinosa")
#
# Lists
# Want to create multiple of the same type of resource? Let’s look at our spec/features/users_sees_all_movies_spec.rb. Here we are creating two movies. Let’s DRY this up a bit.
#
# movies = create_list(:movie, 2) or movies_1, movies_2 = create_list(:movie, 2)
#
# Relationships
# Want to create an object but it has a belongs_to and needs an associated object to be created? Now we have a director or two created and two movies. We have more tools to DRY this up even more. If we create our movie prepopulated with a director, we don’t need to create directors in our movie index test.
#
# #spec/factories/movies.rb
# factory :movie do
#   title "Joe Black"
#   description  "Maybe brad pitt is in it?"
#   director
# end
# Sequences
# Want to create unique content? You might use a sequence to put a number in each value. What if we want our movies to have different titles?
#
# factory :movie do
#   sequence(:title) {|n| "Title #{n}" }
#   sequence(:description) {|n| "This is a description #{n}" }
# end
# Alias
# Want to call your factory “admin” but use the Director class? Use an alias like this. You can call create(:admin) and it will give you a Director object.
#
# Maybe you want to be able to create a regular old director as well as a super-director of sorts, an :admin.
#
# FactoryBot.define do
#   factory :admin, class: Director do
#     name "Ilana Corson"
#   end
# end
# Dynamic Values Want to be able to dynamically create values? use {Time.now} instead of "2015-03-05 11:14:47 -0700"
