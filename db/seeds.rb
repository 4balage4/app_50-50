# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "destorying db"
Contact.destroy_all
Kid.destroy_all
Task.destroy_all
Template.destroy_all
User.destroy_all
Household.destroy_all

# 3 HOUSEHOLDS
berlin_household = Household.create(name: "Berlin")
brussels_household = Household.create(name: "Brussels")
budapest_household = Household.create(name: "Budapest")

# 6 USERS
linus = User.create(email: "linus@bootcamp.com", username: "Linus", password: "123456", household: berlin_household)
linus_partner = User.create(email: "linus@partner.com", username: "LinusPartner", password: "123456", household: berlin_household)
pauline = User.create(email: "pauline@bootcamp.com", username: "Pauline", password: "123456", household: brussels_household)
pauline_partner = User.create(email: "pauline@partner.com", username: "PaulinePartner", password: "123456", household: brussels_household)
balazs = User.create(email: "balazs@bootcamp.com", username: "Balazs", password: "123456", household: budapest_household)
balazs_partner = User.create(email: "balazs@partner.com", username: "BalazsPartner", password: "123456", household: budapest_household)
users = [linus, linus_partner, pauline, pauline_partner, balazs, balazs_partner]

# 30 CONTACTS
puts "creating contacts"
30.times do
  Contact.create(name: Faker::Name, phone: Faker::PhoneNumber, address: Faker::Address, household: [berlin_household, budapest_household, brussels_household].sample)
end

# 7 KIDS
puts "creating kids"
kids = []
7.times do
  new_kid = Kid.create(name: Faker::Name, household: [berlin_household, budapest_household, brussels_household].sample)
  kids << new_kid
end

# CATEGORIES
care = Category.create(name: "Care", description: "All the care work")
cleaning = Category.create(name: "Cleaning", description: "All the cleaning work")
planning = Category.create(name: "Planning", description: "All the planning")
paperwork = Category.create(name: "Paperwork", description: "All the paperwork")
maintenance = Category.create(name: "Maintenance", description: "All the maintenance")
groceries = Category.create(name: "Groceries", description: "All the groceries")

# 15 TASKS
bathroom_cleaning = Task.create(name: "Clean bathroom", points: "10p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
pick_up_kid = Task.create(name: "Pick up kid from dance class", points: "8p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
make_dinner = Task.create(name: "Make dinner", points: "12p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
feed_cat = Task.create(name: "Feed Garfield", points: "3p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
bed_story = Task.create(name: "Read bed story to Kevin", points: "5p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: "2p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
make_dinner = Task.create(name: "Make dinner", points: "12p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
pay_gas_bill = Task.create(name: "Pay gas bill", points: "4p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
call_plumber = Task.create(name: "Call plumber", points: "2p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: "8p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
bday_gift = Task.create(name: "Buy bday gift Suzanne", points: "5p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
groceries = Task.create(name: "Groceries", points: "15p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
bake_bday_cake = Task.create(name: "Make bday cake", points: "7p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
parents_meeting = Task.create(name: "Attend parents meeting", points: "15p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
fix_kids_coat = Task.create(name: "fix Kid's coat", points: "12p", duration: "", type: "", comments: "", category: Category.last, user: User.last, household: User.last.household)
