# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "destroying db"
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
  Contact.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.full_address, household: [berlin_household, budapest_household, brussels_household].sample)
end

# 7 KIDS
puts "creating kids"
kids = []
7.times do
  new_kid = Kid.create(name: Faker::Name.name, household: [berlin_household, budapest_household, brussels_household].sample)
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
users.each do |user|
  household_options = user.household.users
  # household_options << "nil"
  bathroom_cleaning = Task.create(name: "Clean bathroom", points:  10, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  pick_up_kid = Task.create(name: "Pick up kid from dance class", points: 18, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points:  12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  bed_story = Task.create(name: "Read bed story to Kevin", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points:  12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  pay_gas_bill = Task.create(name: "Pay gas bill", points: 14, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  groceries = Task.create(name: "Groceries", points:  15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  bake_bday_cake = Task.create(name: "Make bday cake", points: 17, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  parents_meeting = Task.create(name: "Attend parents meeting", points:  15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  fix_kids_coat = Task.create(name: "fix Kid's coat", points:  12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
end
