# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "destroying db"
Task.destroy_all
Contact.destroy_all
Kid.destroy_all
Template.destroy_all
User.destroy_all
Household.destroy_all
Category.destroy_all

# 3 HOUSEHOLDS
berlin_household = Household.create(name: "Berlin")
brussels_household = Household.create(name: "Brussels")
budapest_household = Household.create(name: "Budapest")

# USERS' COLORS
# colors = [user_one, user_two]
user_one = "#9534E0"
user_two = "#F09206"

# 6 USERS
linus = User.create(email: "linus@bootcamp.com", username: "Liz", password: "123456", household: berlin_household, color: user_one)
linus_partner = User.create(email: "linus@partner.com", username: "Mike", password: "123456", household: berlin_household, color: user_two)
pauline = User.create(email: "pauline@bootcamp.com", username: "Liz", password: "123456", household: brussels_household, color: user_one)
pauline_partner = User.create(email: "pauline@partner.com", username: "Mike", password: "123456", household: brussels_household, color: user_two)
balazs = User.create(email: "balazs@bootcamp.com", username: "Liz", password: "123456", household: budapest_household, color: user_one)
balazs_partner = User.create(email: "balazs@partner.com", username: "Mike", password: "123456", household: budapest_household, color: user_two)
users = [linus, pauline, balazs]

# 30 CONTACTS
pediatrician = Contact.create(title: "Pediatrician", name: "Kristin Klein", phone: "0049 175 567 245", address: "Nürnberger Straße 23, 13467 Berlin", household: brussels_household)
midwife = Contact.create(title: "Midwife", name: "Pippa Schultz", phone: "0049 138 674 789", address: "Nussbaumallee 167, 10367 Berlin", household: brussels_household)
plumber = Contact.create(title: "Plumber", name: "Björn Graff", phone: "0049 134 274 239", address: "Am Fliederbusch 45, 12867 Berlin", household: brussels_household)
sophie_classmate = Contact.create(title: "Sophie (classmate)", name: "Sophie Meyer", phone: "0049 176 284 728", address: "Am Glockenturm 12, 12987 Berlin", household: brussels_household)
football_club = Contact.create(title: "Football club", name: "Football club Pankow", phone: "0049 145 334 079", address: "Cicerostraße 2, 10457 Berlin", household: brussels_household)
primary_school = Contact.create(title: "Primary school", name: "Rosa Luxemburg Schule", phone: "0049 1756225 723", address: "Am Heidebusch 86, 13492 Berlin", household: brussels_household)
babysitter = Contact.create(title: "Babysitter", name: "Alessia Williamson", phone: "0049 175 034 780", address: "Clausewitzstraße 83,10367 Berlin", household: brussels_household)
babysitter_backup = Contact.create(title: "Babysitter backup", name: "Mirko Knipp", phone: "0049 175 233 755", address: "0049 175 233 755", household: brussels_household)
doctor = Contact.create(title: "Doctor", name: "Sabine Müller", phone: "0049 123 720 787", address: "Dresselstraße, 63 10457 Berlin", household: brussels_household)
matthias_classmate = Contact.create(title: "Matthias (classmate)", name: "Matthias Schmidt", phone: "0049 107 348 700", address: "Flatowallee 78,12987 Berlin", household: brussels_household)
teacher = Contact.create(title: "Teacher", name: "Johanna Logan", phone: "0049 123 274 984", address: "Am Heidebusch 86, 13492 Berlin", household: brussels_household)
electrician = Contact.create(title: "Electrician", name: "Myrtle Haines", phone: "0049 234 719 782", address: "Glockenturmstraße 9, 13187 Berlin", household: brussels_household)
lawyer = Contact.create(title: "Lawyer", name: "Hussein Farmer", phone: "0049 175 234 523", address: "Gloedenpfad 5, 13187 Berlin", household: brussels_household)

pediatrician = Contact.create(title: "Pediatrician", name: "Kristin Klein", phone: "0049 175 567 245", address: "Nürnberger Straße 23, 13467 Berlin", household: berlin_household)
midwife = Contact.create(title: "Midwife", name: "Pippa Schultz", phone: "0049 138 674 789", address: "Nussbaumallee 167, 10367 Berlin", household: berlin_household)
plumber = Contact.create(title: "Plumber", name: "Björn Graff", phone: "0049 134 274 239", address: "Am Fliederbusch 45, 12867 Berlin", household: berlin_household)
sophie_classmate = Contact.create(title: "Sophie (classmate)", name: "Sophie Meyer", phone: "0049 176 284 728", address: "Am Glockenturm 12, 12987 Berlin", household: berlin_household)
football_club = Contact.create(title: "Football club", name: "Football club Pankow", phone: "0049 145 334 079", address: "Cicerostraße 2, 10457 Berlin", household: berlin_household)
primary_school = Contact.create(title: "Primary school", name: "Rosa Luxemburg Schule", phone: "0049 1756225 723", address: "Am Heidebusch 86, 13492 Berlin", household: berlin_household)
babysitter = Contact.create(title: "Babysitter", name: "Alessia Williamson", phone: "0049 175 034 780", address: "Clausewitzstraße 83,10367 Berlin", household: berlin_household)
babysitter_backup = Contact.create(title: "Babysitter backup", name: "Mirko Knipp", phone: "0049 175 233 755", address: "0049 175 233 755", household: berlin_household)
doctor = Contact.create(title: "Doctor", name: "Sabine Müller", phone: "0049 123 720 787", address: "Dresselstraße, 63 10457 Berlin", household: berlin_household)
matthias_classmate = Contact.create(title: "Matthias (classmate)", name: "Matthias Schmidt", phone: "0049 107 348 700", address: "Flatowallee 78,12987 Berlin", household: berlin_household)
teacher = Contact.create(title: "Teacher", name: "Johanna Logan", phone: "0049 123 274 984", address: "Am Heidebusch 86, 13492 Berlin", household: berlin_household)
electrician = Contact.create(title: "Electrician", name: "Myrtle Haines", phone: "0049 234 719 782", address: "Glockenturmstraße 9, 13187 Berlin", household: berlin_household)
lawyer = Contact.create(title: "Lawyer", name: "Hussein Farmer", phone: "0049 175 234 523", address: "Gloedenpfad 5, 13187 Berlin", household: berlin_household)

pediatrician = Contact.create(title: "Pediatrician", name: "Kristin Klein", phone: "0049 175 567 245", address: "Nürnberger Straße 23, 13467 Berlin", household: budapest_household)
midwife = Contact.create(title: "Midwife", name: "Pippa Schultz", phone: "0049 138 674 789", address: "Nussbaumallee 167, 10367 Berlin", household: budapest_household)
plumber = Contact.create(title: "Plumber", name: "Björn Graff", phone: "0049 134 274 239", address: "Am Fliederbusch 45, 12867paulinein", household: budapest_household)
sophie_classmate = Contact.create(title: "Sophie (classmate)", name: "Sophie Meyer", phone: "0049 176 284 728", address: "Am Glockenturm 12, 12russels", household: budapest_household)
football_club = Contact.create(title: "Football club", name: "Football club Pankow", phone: "0049 145 334 079", address: "Cicerostraße 2, 10457 Berlin", household: budapest_household)
primary_school = Contact.create(title: "Primary school", name: "Rosa Luxemburg Schule", phone: "0049 1756225 723", address: "Am Heidebusch 86, 13492 Berlin", household: budapest_household)
babysitter = Contact.create(title: "Babysitter", name: "Alessia Williamson", phone: "0049 175 034 780", address: "Clausewitzstraße 83,10367 Berlin", household: budapest_household)
babysitter_backup = Contact.create(title: "Babysitter backup", name: "Mirko Knipp", phone: "0049 175 233 755", address: "0049 175 233 755", household: budapest_household)
doctor = Contact.create(title: "Doctor", name: "Sabine Müller", phone: "0049 123 720 787", address: "Dresselstraße, 63 10457 Berlin", household: budapest_household)
matthias_classmate = Contact.create(title: "Matthias (classmate)", name: "Matthias Schmidt", phone: "0049 107 348 700", address: "Flatowallee 78,12987 Berlin", household: budapest_household)
teacher = Contact.create(title: "Teacher", name: "Johanna Logan", phone: "0049 123 274 984", address: "Am Heidebusch 86, 13492 Berlin", household: budapest_household)
electrician = Contact.create(title: "Electrician", name: "Myrtle Haines", phone: "0049 234 719 782", address: "Glockenturmstraße 9, 13187 Berlin", household: budapest_household)
lawyer = Contact.create(title: "Lawyer", name: "Hussein Farmer", phone: "0049 175 234 523", address: "Gloedenpfad 5, 13187 Berlin", household: budapest_household)

# 7 KIDS
puts "creating kids"
kids = []
7.times do
  new_kid = Kid.create(name: Faker::Name.name, household: [berlin_household, budapest_household, brussels_household].sample)
  kids << new_kid
end

# CATEGORIES - DO NOT DELETE
care = Category.create(name: "Care", description: "All the care work")
cleaning = Category.create(name: "Cleaning", description: "All the cleaning work")
planning = Category.create(name: "Planning", description: "All the planning")
paperwork = Category.create(name: "Paperwork", description: "All the paperwork")
maintenance = Category.create(name: "Maintenance", description: "All the maintenance")
groceries = Category.create(name: "Groceries", description: "All the groceries")

# 15 TASKS
# puts "creating users"
# users.each do |user|
#   household_options = user.household.users
#   # household_options << "nil"
#   bathroom_cleaning = Task.create(name: "Clean bathroom", points: 10, duration: "", type: "", comments: "", category: cleaning, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   pick_up_kid = Task.create(name: "Pick up kid from dance class", points: 18, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   bed_story = Task.create(name: "Read bed story to Kevin", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   pay_gas_bill = Task.create(name: "Pay gas bill", points: 14, duration: "", type: "", comments: "", category: paperwork, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
#   groceries = Task.create(name: "Groceries", points: 15, duration: "", type: "", comments: "", category: groceries, user: household_options.sample, household: user.household)
#   bake_bday_cake = Task.create(name: "Make bday cake", points: 17, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household)
#   parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household)
#   fix_kids_coat = Task.create(name: "fix Kid's coat", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household)
# end

#  TASKS
# Budapest
buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "Model Swirl ROB 1", category: maintenance, user: balazs, household: budapest_household, assigned_to: balazs)
call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: maintenance, user: balazs, household: budapest_household, assigned_to: balazs)
bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "'Orlando' by Virginia Woolf", category: care, user: balazs, household: budapest_household, assigned_to: balazs_partner)
parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "Bring Tom's records", category: care, user: balazs, household: budapest_household)
feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: care, user: balazs, household: budapest_household, assigned_to: balazs_partner)
bed_story = Task.create(name: "Read bed story to Tom", points: 15, duration: "", type: "", comments: "", category: care, user: balazs, household: budapest_household, assigned_to: balazs)
fix_kids_coat = Task.create(name: "Fix Tom's coat", points: 12, duration: "", type: "", comments: "Two buttons missing and patch hole in arm sleve", category: maintenance, user: balazs, household: budapest_household)
fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: maintenance, user: balazs, household: budapest_household, assigned_to: balazs_partner)
prepare_football_equipment = Task.create(name: "Prepare Tom's football equipment", points: 18, duration: "", type: "", comments: "", category: care, user: balazs, household: budapest_household, assigned_to: balazs)
buy_bread = Task.create(name: "Buy bread", points: 3, duration: "", type: "", comments: "", category: care, user: balazs, household: budapest_household, assigned_to: balazs_partner)
# Berlin
buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "Model Swirl ROB 1", category: maintenance, user: linus, household: berlin_household, assigned_to: linus)
call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: maintenance, user: linus, household: berlin_household, assigned_to: linus)
bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "'Orlando' by Virginia Woolf", category: care, user: linus, household: berlin_household, assigned_to: linus_partner)
parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "Bring Tom's records", category: care, user: linus, household: berlin_household)
feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: care, user: linus, household: berlin_household, assigned_to: linus_partner)
bed_story = Task.create(name: "Read bed story to Tom", points: 15, duration: "", type: "", comments: "", category: care, user: linus, household: berlin_household, assigned_to: linus)
fix_kids_coat = Task.create(name: "Fix Tom's coat", points: 12, duration: "", type: "", comments: "Two buttons missing and patch hole in arm sleve", category: maintenance, user: linus, household: berlin_household)
fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: maintenance, user: linus, household: berlin_household, assigned_to: linus_partner)
prepare_football_equipment = Task.create(name: "Prepare Tom's football equipment", points: 18, duration: "", type: "", comments: "", category: care, user: linus, household: berlin_household, assigned_to: linus)
buy_bread = Task.create(name: "Buy bread", points: 3, duration: "", type: "", comments: "", category: care, user: linus, household: berlin_household, assigned_to: linus_partner)
# Brussels
buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "Model Swirl ROB 1", category: maintenance, user: pauline, household: brussels_household, assigned_to: pauline)
call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: maintenance, user: pauline, household: brussels_household, assigned_to: pauline)
bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "'Orlando' by Virginia Woolf", category: care, user: pauline, household: brussels_household, assigned_to: pauline_partner)
parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "Bring Tom's records", category: care, user: pauline, household: brussels_household)
feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: care, user: pauline, household: brussels_household, assigned_to: pauline_partner)
bed_story = Task.create(name: "Read bed story to Tom", points: 15, duration: "", type: "", comments: "", category: care, user: pauline, household: brussels_household, assigned_to: pauline)
fix_kids_coat = Task.create(name: "Fix Tom's coat", points: 12, duration: "", type: "", comments: "Two buttons missing and patch hole in arm sleve", category: maintenance, user: pauline, household: brussels_household)
fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: maintenance, user: pauline, household: brussels_household, assigned_to: linus_partner)
prepare_football_equipment = Task.create(name: "Prepare Tom's football equipment", points: 18, duration: "", type: "", comments: "", category: care, user: pauline, household: brussels_household, assigned_to: pauline)
buy_bread = Task.create(name: "Buy bread", points: 3, duration: "", type: "", comments: "", category: care, user: pauline, household: brussels_household, assigned_to: pauline_partner)

puts "creating templates"
# TEMPLATES - BERLIN HOUSEHOLD
cooking = Template.create(name: "Cooking dinner", points: 12, category: care, household: berlin_household, user: User.all.sample)
supervise_homework = Template.create(name: "Supervise homework", points: 8, category: care, household: berlin_household, user: User.all.sample)
vacuuming = Template.create(name: "Vacuuming", points: 7, category: cleaning, household: berlin_household, user: User.all.sample)
clean_bathroom = Template.create(name: "Cleaning the bathroom", points: 11, category: cleaning, household: berlin_household, user: User.all.sample)
meals_planning = Template.create(name: "Plan meals", points: 7, category: planning, household: berlin_household, user: User.all.sample)
insurance_related = Template.create(name: "Insurance related paperwork", points: 7, category: paperwork, household: berlin_household, user: User.all.sample)
sort_clothing_sizes = Template.create(name: "Sort out clothes", points: 10, category: maintenance, household: berlin_household, user: User.all.sample)
weekly_shopping = Template.create(name: "Weekly groceries", points: 14, category: groceries, household: berlin_household, user: User.all.sample)
# TEMPLATES - BUDAPEST HOUSEHOLD
cooking = Template.create(name: "Cooking dinner", points: 12, category: care, household: budapest_household, user: User.all.sample)
supervise_homework = Template.create(name: "Supervise homework", points: 8, category: care, household: budapest_household, user: User.all.sample)
vacuuming = Template.create(name: "Vacuuming", points: 7, category: cleaning, household: budapest_household, user: User.all.sample)
clean_bathroom = Template.create(name: "Cleaning the bathroom", points: 11, category: cleaning, household: budapest_household, user: User.all.sample)
meals_planning = Template.create(name: "Plan meals", points: 7, category: planning, household: budapest_household, user: User.all.sample)
insurance_related = Template.create(name: "Insurance related paperwork", points: 7, category: paperwork, household: budapest_household, user: User.all.sample)
sort_clothing_sizes = Template.create(name: "Sort out clothes", points: 10, category: maintenance, household: budapest_household, user: User.all.sample)
weekly_shopping = Template.create(name: "Weekly groceries", points: 14, category: groceries, household: budapest_household, user: User.all.sample)
# TEMPLATES - BRUSSELS HOUSEHOLD
cooking = Template.create(name: "Cooking dinner", points: 12, category: care, household: brussels_household, user: User.all.sample)
supervise_homework = Template.create(name: "Supervise homework", points: 8, category: care, household: brussels_household, user: User.all.sample)
vacuuming = Template.create(name: "Vacuuming", points: 7, category: cleaning, household: brussels_household, user: User.all.sample)
clean_bathroom = Template.create(name: "Cleaning the bathroom", points: 11, category: cleaning, household: brussels_household, user: User.all.sample)
meals_planning = Template.create(name: "Plan meals", points: 7, category: planning, household: brussels_household, user: User.all.sample)
insurance_related = Template.create(name: "Insurance related paperwork", points: 7, category: paperwork, household: brussels_household, user: User.all.sample)
sort_clothing_sizes = Template.create(name: "Sort out clothes", points: 10, category: maintenance, household: brussels_household, user: User.all.sample)
weekly_shopping = Template.create(name: "Weekly groceries", points: 14, category: groceries, household: brussels_household, user: User.all.sample)
puts "seed is over"
