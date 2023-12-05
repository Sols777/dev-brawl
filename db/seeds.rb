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
user1 = User.create!(email: "user1@text.com", password: "123123",
                    username: "Javascriptlord",
                    first_name: "Digo", last_name: "Nunsh" , score:149)
user2= User.create!(email: "user2@text.com", password: "123123",
                    username: "RubyBubii",
                    first_name: "Lueesh", last_name: "Tosh" , score:161)
user3 = User.create!(email: "user3@text.com", password: "123123",
                    username: "ReactMaster",
                    first_name: "Joao", last_name: "Martins" , score:231)
user4 = User.create!(email: "user4@text.com", password: "123123",
                      username: "FullstackQueen",
                      first_name: "Isabelle", last_name: "Ferreir" , score:222)
user5 = User.create!(email: "user5@text.com", password: "123123",
                    username: "PyhtonLad99",
                    first_name: "Pete", last_name: "Taylor", score: 153)
user6 = User.create!(email: "user6@text.com", password: "123123",
                    username: "CSSmanager88",
                    first_name: "Francisco", last_name: "Mendonça" , score:191)
user7 = User.create!(email: "user7@text.com", password: "123123",
                    username: "fullcatstack",
                    first_name: "Jess", last_name: "Carvalho" , score:221)
user8 = User.create!(email: "user8@text.com", password: "123123",
                    username: "Levagoneking",
                    first_name: "Le", last_name: "Wagon" , score:122)
# Create Languages
ruby = Language.create!(name: "Ruby", image: "app/assets/images/ruby-logo.png")
javascript = Language.create!(name: "JavaScript", image: "app/assets/images/js-logo.png")
python = Language.create!(name: "Python", image: "app/assets/images/python-logo.png")
csharp = Language.create!(name: "C#sharp", image: "app/assets/images/chsharp-logo.png")
java = Language.create!(name: "Java", image: "app/assets/images/java-logo.png")
html_css = Language.create!(name: "HTML&CSS", image: "app/assets/images/htmlcss-logo.png")
# Create challenges
# ruby
exercise1 = Challenge.create!(name: "ruby exercise", expected_result: "1", expected_score: 3, expected_time: 3600,
                              category: "frontend", description: "ruby exercise", difficulty: "begginner",
                              content: "Do a ruby function where the result is always 1", language_id: ruby.id)
# javascript
exercise2 = Challenge.create!(name: "Javascript exercise", expected_result: "2", expected_score: 3, expected_time: 3600,
                              category: "frontend", description: "Javascript exercise", difficulty: "begginner",
                              content: "Do a javascript function where the result is always 2", language_id: javascript.id)
# python
exercise3 = Challenge.create!(name: "pyhton exercise", expected_result: "3", expected_score: 3 , expected_time: 3600,
                              category: "frontend", description: "pyhton exercise", difficulty: "begginner",
                              content: "Do a pyhton function where the result is always 3", language_id: python.id)
# csharp
exercise3 = Challenge.create!(name: "csharp exercise", expected_result: "4", expected_score: 3 , expected_time: 3600,
                              category: "frontend", description: "csharp exercise", difficulty: "begginner",
                              content: "Do a csharp function where the result is always 4", language_id: csharp.id)
# java
exercise3 = Challenge.create!(name: "java exercise", expected_result: "5", expected_score: 3 , expected_time: 3600,
                              category: "frontend", description: "java exercise", difficulty: "begginner",
                              content: "Do a java function where the result is always 5", language_id: java.id)
# jhtmlcss
exercise3 = Challenge.create!(name: "html css exercise", expected_result: "6", expected_score: 3 , expected_time: 3600,
                              category: "frontend", description: "html css exercise", difficulty: "begginner",
                              content: "Do a html css function where the result is always 6", language_id: html_css.id)

# leaderboard
leaderboard = Leaderboard.create!(ranking: 10)
