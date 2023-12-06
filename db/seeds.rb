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
exercise1 = Challenge.create!(
  name: "Francisco's Ping Pong Obsession",
  expected_result: "Francisco demand print output",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Model Francisco's ping pong demands when he loses",
  difficulty: "Beginner",
  content: "// Write a program that models the obsessive ping pong behavior of
  // a competitive player named Francisco. Define a variable that tracks whether
  // he loses a game or not. Then write a function to print Francisco's demand
  // to play again any time the variable indicates he lost. Check if he lost
  // and call your function within an if statement to conditionally print
  // the outcome.

    francisco_loses = true
    # Function for Francisco's demand
    def francisco_demand
      puts '    '
    end

    # Check if Francisco loses and call function if true
    if francisco_loses
      francisco_demand
    end",
  language_id: ruby.id
)

# JavaScript - João Smoke Breaks
exercise2 = Challenge.create!(
  name: "João's Cigarette Breaks",
  expected_result: "Smoke break print output",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Model João's periodic smoke breaks based on time worked",
  difficulty: "Beginner",
  content: "//Model a person named João who takes 7 regular 5-minute smoke
  // breaks every hour while he is working. Define a counter variable that
  // tracks the number of minutes he has worked. Write a function that prints
  // João's message announcing he is taking a smoke break. Check the minutes
  // worked counter using modular division and call your function within an
  // if statement to print a smoke break message each hour.

   // Counter for minutes worked
let minutesWorked = 60;

// Function for João's smoke break
function smokeBreak() {
  console.log('');
}

// Check minutes counter and call function
if(minutesWorked % 60 === 0) {
  smokeBreak();
}
   ",
  language_id: javascript.id
)

exercise3 = Challenge.create!(
  name: "Leandro's Student Roster",
  expected_result: "Printed student names",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Print welcome message and
   iterate through Leandro's students",
  difficulty: "Beginner",
  content: "Define student list. Print welcome. Use loop to print student names.",
  language_id: python.id
)

exercise4 = Challenge.create!(
  name: "Mariana's Zoom Bomber",
  expected_result: "Printed messages",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Print funny messages as Mariana's daughter interrupts Zoom calls",
  difficulty: "Beginner",
  content: "Use variables to represent daughter's disruptions. Print messages about her hilariously derailing Mariana's video meetings.",
  language_id: ruby.id
)

exercise5 = Challenge.create!(
  name: "Vasco's Goth Playlist",
  expected_result: "Print gothic song list",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Generate Vasco's playlist of favorite gothic songs",
  difficulty: "Beginner",
  content: "Define a list of Vasco's favorite gloomy gothic songs and bands. Print the list.",
  language_id: python.id
)

exercise6 = Challenge.create!(
  name: "Carlos' Luxurious Locks",
  expected_result: "Printed hair care tips",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Print hair care tips referencing Carlos' favorite Head & Shoulders shampoo",
  difficulty: "Beginner",
  content: "Print statements recommending Head & Shoulders products for healthy hair based on Carlos' endorsement.",
  language_id: python.id
)

exercise7 = Challenge.create!(
  name: "Joanna vs. Seagulls",
  expected_result: "Battle function output",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Model a battle between Joanna and a flock of seagulls with a function",
  difficulty: "Beginner",
  content: "Define a battle function that accepts Joanna and seagull strengths. Calculate winner based on random factor and print victory message.",
  language_id: python.id
)

exercise8 = Challenge.create!(
  name: "Artur's Identity Crisis",
  expected_result: "Printed outfit selection",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Use conditionals to print Artur's randomly selected accessories and outfit",
  difficulty: "Beginner",
  content: "Define variables for earrings, dungarees, and turtlenecks. Randomly assign true/false for each accessory. Print outfit based on conditionals.",
  language_id: python.id
)

exercise9 = Challenge.create!(
  name: "Thiago's Excessive Winking",
  expected_result: "Paragraphs with winks",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Print paragraphs where Thiago winks multiple times",
  difficulty: "Beginner",
  content: "Define function to print Thiago winking. Print paragraphs with sentences calling function to insert random winks.",
  language_id: python.id
)

exercise10 = Challenge.create!(
  name: "Catarina's Sporty Smoking",
  expected_result: "Printed activity statements",
  expected_score: 10,
  expected_time: 1500,
  category: "Coding",
  description: "Print statements about Catarina's competing basketball and smoking interests",
  difficulty: "Beginner",
  content: "Print conflicting statements about playing basketball and cigarette breaks to represent Catarina's competing interests.",
  language_id: python.id
)
exercise11 = Challenge.create!(name: "ruby exercise", expected_result: "1", expected_score: 3, expected_time: 900,
                              category: "backend", description: "ruby exercise", difficulty: "beginner",
                              content: "Do a ruby function where the result is always 1", language_id: ruby.id)
# javascript
exercise12 = Challenge.create!(name: "javascript exercise", expected_result: "2", expected_score: 3, expected_time: 900,
                              category: "backend", description: "Javascript exercise", difficulty: "beginner",
                              content: "Do a javascript function where the result is always 2", language_id: javascript.id)
# python
exercise13 = Challenge.create!(name: "python exercise", expected_result: "3", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "pyhton exercise", difficulty: "beginner",
                              content: "Do a pyhton function where the result is always 3", language_id: python.id)
# csharp
exercise14 = Challenge.create!(name: "csharp exercise", expected_result: "4", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "csharp exercise", difficulty: "beginner",
                              content: "Do a cpp function where the result is always 4", language_id: cpp.id)
# java
exercise15 = Challenge.create!(name: "java exercise", expected_result: "5", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "java exercise", difficulty: "beginner",
                              content: "Do a java function where the result is always 5", language_id: java.id)
# jhtmlcss
exercise16 = Challenge.create!(name: "swift exercise", expected_result: "6", expected_score: 3 , expected_time: 900,
                              category: "backend", description: "swift css exercise", difficulty: "beginner",
                              content: "Do a swift css function where the result is always 6", language_id: swift.id)
# Create submissions
submission1 = Submission.create!(succeed: true, time_taken: 20.37, user_id: user1.id, challenge_id: exercise1.id)
submission2 = Submission.create!(succeed: true, time_taken: 34.05, user_id: user2.id, challenge_id: exercise2.id)
submission3 = Submission.create!(succeed: true, time_taken: 38.23, user_id: user3.id, challenge_id: exercise3.id)
submission4 = Submission.create!(succeed: true, time_taken: 54.34, user_id: user4.id, challenge_id: exercise4.id)
submission5 = Submission.create!(succeed: true, time_taken: 24.15, user_id: user5.id, challenge_id: exercise5.id)
submission6 = Submission.create!(succeed: true, time_taken: 64.45, user_id: user6.id, challenge_id: exercise6.id)
submission7 = Submission.create!(succeed: true, time_taken: 54.39, user_id: user3.id, challenge_id: exercise7.id)
submission8 = Submission.create!(succeed: true, time_taken: 44.09, user_id: user8.id, challenge_id: exercise8.id)
submission9 = Submission.create!(succeed: true, time_taken: 44.09, user_id: user2.id, challenge_id: exercise9.id)
submission10 = Submission.create!(succeed: true, time_taken: 34.23, user_id: user1.id, challenge_id: exercise10.id)
submission11 = Submission.create!(succeed: true, time_taken: 48.22, user_id: user6.id, challenge_id: exercise11.id)
submission12 = Submission.create!(succeed: true, time_taken: 14.09, user_id: user7.id, challenge_id: exercise12.id)
submission13 = Submission.create!(succeed: true, time_taken: 23.09, user_id: user5.id, challenge_id: exercise13.id)
submission14 = Submission.create!(succeed: true, time_taken: 45.75, user_id: user6.id, challenge_id: exercise14.id)
submission15 = Submission.create!(succeed: true, time_taken: 42.04, user_id: user1.id, challenge_id: exercise15.id)
submission16 = Submission.create!(succeed: true, time_taken: 41.13, user_id: user2.id, challenge_id: exercise16.id)
