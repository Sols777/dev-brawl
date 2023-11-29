# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Language.destroy_all
Challenge.destroy_all
User.destroy_all
# Create users
user = User.create!(email: "test@example.com", password: "password",
                    username: "Test", achievements: "test")
# Create Languages
ruby = Language.create!(name: "Ruby")
javascript = Language.create!(name: "JavaScript")
python = Language.create!(name: "Python")
csharp = Language.create!(name: "C#sharp")
java = Language.create!(name: "Java")
html_css = Language.create!(name: "HTML&CSS")
# Create challenges
exercise1 = Challenge.create!(name: "Exercise one test", expected_result: "1", expected_score: 1 , expected_time: 3600,
                              category: "frontend", description: "Javascript exercise", difficulty: "begginer",
                              content: "Do a javascript function where the result is always 1", language_id: javascript.id)
