# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Submission.destroy_all
Challenge.destroy_all
Language.destroy_all
User.destroy_all
# Create users
user1 = User.create!(email: "user1@text.com", password: "123123",
                    username: "Javascriptlord",
                    first_name: "Digo", last_name: "Nunsh" , score:149)
user2= User.create!(email: "user2@text.com", password: "123123",
                    username: "RubyBubii",
                    first_name: "Luessh", last_name: "Tossh" , score:161)
user3 = User.create!(email: "user3@text.com", password: "123123",
                    username: "ReactMaster",
                    first_name: "Joao", last_name: "Martins" , score:231)
user4 = User.create!(email: "user4@text.com", password: "123123",
                      username: "FullstackQueen",
                      first_name: "Isabelle", last_name: "Ferreir" , score:222)
user5 = User.create!(email: "user5@text.com", password: "123123",
                    username: "PyhtonLad99",
                    first_name: "Peter", last_name: "Taylor Swift", score: 153)
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
ruby = Language.create!(name: "Ruby",extension:".rb" ,comment:"#" , image: "app/assets/images/ruby-logo.png")
javascript = Language.create!(name: "JavaScript",extension:".js" ,comment:"//" , image: "app/assets/images/js-logo.png")
python = Language.create!(name: "Python",extension:".py" ,comment:"#" , image: "app/assets/images/python-logo.png")
cpp = Language.create!(name: "Cpp",extension:".cpp" ,comment:"//" , image: "app/assets/images/chsharp-logo.png")
java = Language.create!(name: "Java",extension:".java" ,comment:"//" , image: "app/assets/images/java-logo.png")
swift = Language.create!(name: "swift",extension:".swift" ,comment:"//" , image: "app/assets/images/htmlcss-logo.png")
# Create challenges
# ruby
exercise1 = Challenge.create!(name: "ruby exercise", expected_result: "1", expected_score: 3, expected_time: 900,
                              category: "backend", description: "ruby exercise", difficulty: "begginner",
                              content: "Do a ruby function where the result is always 1", language_id: ruby.id)
# javascript
exercise2 = Challenge.create!(name: "Javascript exercise", expected_result: "2", expected_score: 3, expected_time: 900,
                              category: "backend", description: "Javascript exercise", difficulty: "begginner",
                              content: "Do a javascript function where the result is always 2", language_id: javascript.id)
# python
exercise3 = Challenge.create!(name: "pyhton exercise", expected_result: "3", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "pyhton exercise", difficulty: "begginner",
                              content: "Do a pyhton function where the result is always 3", language_id: python.id)
# csharp
exercise4 = Challenge.create!(name: "csharp exercise", expected_result: "4", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "csharp exercise", difficulty: "begginner",
                              content: "Do a cpp function where the result is always 4", language_id: cpp.id)
# java
exercise5 = Challenge.create!(name: "java exercise", expected_result: "5", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "java exercise", difficulty: "begginner",
                              content: "Do a java function where the result is always 5", language_id: java.id)
# jhtmlcss
exercise6 = Challenge.create!(name: "swift exercise", expected_result: "6", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "swift css exercise", difficulty: "begginner",
                              content: "Do a swift css function where the result is always 6", language_id: swift.id)
# Create submissions
submission1 = Submission.create!(succeed: true, time_taken: 20.37, user_id: user1.id, challenge_id: exercise1.id)
submission2 = Submission.create!(succeed: true, time_taken: 34.05, user_id: user2.id, challenge_id: exercise2.id)
submission3 = Submission.create!(succeed: true, time_taken: 38.23, user_id: user3.id, challenge_id: exercise3.id)
submission4 = Submission.create!(succeed: true, time_taken: 54.34, user_id: user4.id, challenge_id: exercise4.id)
submission5 = Submission.create!(succeed: true, time_taken: 24.15, user_id: user5.id, challenge_id: exercise5.id)
submission6 = Submission.create!(succeed: true, time_taken: 64.45, user_id: user6.id, challenge_id: exercise6.id)
submission7 = Submission.create!(succeed: true, time_taken: 54.39, user_id: user7.id, challenge_id: exercise5.id)
submission8 = Submission.create!(succeed: true, time_taken: 44.09, user_id: user8.id, challenge_id: exercise2.id)
