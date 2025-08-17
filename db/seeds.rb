# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
course = Course.create(name: 'Ruby 101', description: 'Intro to Ruby')

# Create an account with a fake user_id (assuming user with id 1 exists in the future)
Account.create(user_id: 1, course: course, name: "sanskar")
