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
linus = User.create(email: "linus@bootcamp.com", username: "Zaza", password: "123456", household: berlin_household, color: user_one)
linus_partner = User.create(email: "linus@partner.com", username: "Mimi", password: "123456", household: berlin_household, color: user_two)
pauline = User.create(email: "pauline@bootcamp.com", username: "Zaza", password: "123456", household: brussels_household, color: user_one)
pauline_partner = User.create(email: "pauline@partner.com", username: "Mimi", password: "123456", household: brussels_household, color: user_two)
balazs = User.create(email: "balazs@bootcamp.com", username: "Zaza", password: "123456", household: budapest_household, color: user_one)
balazs_partner = User.create(email: "balazs@partner.com", username: "Mimi", password: "123456", household: budapest_household, color: user_two)
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
plumber = Contact.create(title: "Plumber", name: "Björn Graff", phone: "0049 134 274 239", address: "Am Fliederbusch 45, 12867 Berlin", household: budapest_household)
sophie_classmate = Contact.create(title: "Sophie (classmate)", name: "Sophie Meyer", phone: "0049 176 284 728", address: "Am Glockenturm 12, 12987 Berlin", household: budapest_household)
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
puts "creating users"
users.each do |user|
  household_options = user.household.users
  # household_options << "nil"
  bathroom_cleaning = Task.create(name: "Clean bathroom", points: 10, duration: "", type: "", comments: "", category: cleaning, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  pick_up_kid = Task.create(name: "Pick up kid from dance class", points: 18, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  bed_story = Task.create(name: "Read bed story to Kevin", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  pay_gas_bill = Task.create(name: "Pay gas bill", points: 14, duration: "", type: "", comments: "", category: paperwork, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household, assigned_to: household_options.sample)
  groceries = Task.create(name: "Groceries", points: 15, duration: "", type: "", comments: "", category: groceries, user: household_options.sample, household: user.household)
  bake_bday_cake = Task.create(name: "Make bday cake", points: 17, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household)
  parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "", category: care, user: household_options.sample, household: user.household)
  fix_kids_coat = Task.create(name: "fix Kid's coat", points: 12, duration: "", type: "", comments: "", category: maintenance, user: household_options.sample, household: user.household)
end

puts "creating templates"
# TEMPLATES - DO NOT DELETE
  # CARE TEMPLATES
cooking = Template.create(name: "Cooking", points: 12, category: care, household: berlin_household, user: User.all.sample)
prepare_take_away_lunch = Template.create(name: "Prepare take away lunch", points: 12, category: care, household: berlin_household, user: User.all.sample)
drop_off = Template.create(name: "Drop off", points: 10, category: care, household: berlin_household, user: User.all.sample)
pick_up = Template.create(name: "Pick up", points: 10, category: care, household: berlin_household, user: User.all.sample)
supervise_homework = Template.create(name: "Supervise homework", points: 8, category: care, household: berlin_household, user: User.all.sample)
choose_clothes = Template.create(name: "Choose clothes", points: 3, category: care, household: berlin_household, user: User.all.sample)
dress_children = Template.create(name: "Dress kid", points: 4, category: care, household: berlin_household, user: User.all.sample)
sleep_accompaniment = Template.create(name: "Sleep accompaniment", points: 5, category: care, household: berlin_household, user: User.all.sample)
waking_up = Template.create(name: "Waking up/waking up assistance", points: 3, category: care, household: berlin_household, user: User.all.sample)
comb_hair = Template.create(name: "Comb hair", points: 3, category: care, household: berlin_household, user: User.all.sample)
brushing_teeth = Template.create(name: "Brushing teeth", points: 3, category: care, household: berlin_household, user: User.all.sample)
pet_care = Template.create(name: "Caring for pets", points: 5, category: care, household: berlin_household, user: User.all.sample)
coziness = Template.create(name: "Decoration & coziness at home", points: 5, category: care, household: berlin_household, user: User.all.sample)
parent_meeting = Template.create(name: "Attend parent meeting", points: 10, category: care, household: berlin_household, user: User.all.sample)
keep_memories = Template.create(name: "Keep memories/photos", points: 4, category: care, household: budapest_household, user: User.all.sample)
kids_birthday_party_execution = Template.create(name: "Execute planning of kid's birthday parties", points: 20, category: care, household: budapest_household, user: User.all.sample)
pack_sportswear = Template.create(name: "Pack sportswear", points: 5, category: care, household: budapest_household, user: User.all.sample)
give_sportswear = Template.create(name: "Make sure kid takes sportswear", points: 5, category: care, household: budapest_household, user: User.all.sample)
contact_person = Template.create(name: "Contact person/emergency contact", points: 5, category: care, household: budapest_household, user: User.all.sample)
contact_with_older_children = Template.create(name: "Talking with older kids (heartbreak, future...)", points: 10, category: care, household: budapest_household, user: User.all.sample)
couple_date = Template.create(name: "Organizing couple date", points: 7, category: care, household: budapest_household, user: User.all.sample)
night_shift = Template.create(name: "Night shift illness", points: 13, category: care, household: budapest_household, user: User.all.sample)
rules_agreement = Template.create(name: "Set rules agreements with kid", points: 13, category: care, household: budapest_household, user: User.all.sample)
suitcase_packing = Template.create(name: "Packing suitcases for vacation", points: 13, category: care, household: budapest_household, user: User.all.sample)
service_events = Template.create(name: "Service at special events", points: 20, category: care, household: budapest_household, user: User.all.sample)
clothes_change = Template.create(name: "Check change of clothes kid", points: 20, category: care, household: budapest_household, user: User.all.sample)
take_care_of_relationships = Template.create(name: "Keeping in touch with relatives", points: 7, category: care, household: brussels_household, user: User.all.sample)
diaper_changing = Template.create(name: "Diaper changing", points: 6, category: care, household: brussels_household, user: User.all.sample)
doctor_appointment = Template.create(name: "Go to doctor with kid", points: 13, category: care)
bath = Template.create(name: "Give bath", points: 7, category: care, household: brussels_household, user: User.all.sample)
bday_greetings = Template.create(name: "Send birthday greetings to a relative", points: 5, category: care, household: brussels_household, user: User.all.sample)
bday_gift = Template.create(name: "Buy birthday gift", points: 8, category: care, household: brussels_household, user: User.all.sample)
bday_wishes = Template.create(name: "Inform friends/family about kid's birthday wishes", points: 5, category: care, household: brussels_household, user: User.all.sample)
pocket_money = Template.create(name: "Manage pocket money", points: 3, category: care, household: brussels_household, user: User.all.sample)
play_time = Template.create(name: "Play with kid", points: 5, category: care, household: brussels_household, user: User.all.sample)
  # CLEANING TEMPLATES
washing = Template.create(name: "Washing", points: 3, category: cleaning, household: brussels_household, user: User.all.sample)
hanging_up_laundry = Template.create(name: "Hanging up laundry", points: 3, category: cleaning, household: brussels_household, user: User.all.sample)
fold_laundry = Template.create(name: "Fold laundry", points: 5, category: cleaning, household: brussels_household, user: User.all.sample)
clean_fridge = Template.create(name: "Clean refrigerator", points: 7, category: cleaning, household: brussels_household, user: User.all.sample)
clean_oven = Template.create(name: "Clean oven", points: 10, category: cleaning, household: brussels_household, user: User.all.sample)
clean_freezer = Template.create(name: "Clean freezer", points: 12, category: cleaning, household: brussels_household, user: User.all.sample)
clean_microwave = Template.create(name: "Clean micro wave", points: 7, category: cleaning, household: brussels_household, user: User.all.sample)
put_away_laundry = Template.create(name: "Put away laundry", points: 4, category: cleaning, household: brussels_household, user: User.all.sample)
make_bed = Template.create(name: "Make bed", points: 4, category: cleaning, household: brussels_household, user: User.all.sample)
clean_up_kitchen = Template.create(name: "Clean up kitchen", points: 7, category: cleaning, household: budapest_household, user: User.all.sample)
wash_dishes = Template.create(name: "Wash dishes", points: 8, category: cleaning, household: budapest_household, user: User.all.sample)
take_out_trash = Template.create(name: "Take out trash", points: 3, category: cleaning, household: budapest_household, user: User.all.sample)
clean_up = Template.create(name: "Clean up", points: 6, category: cleaning, household: budapest_household, user: User.all.sample)
vacuuming = Template.create(name: "Vacuuming", points: 7, category: cleaning, household: budapest_household, user: User.all.sample)
mopping = Template.create(name: "Mopping", points: 9, category: cleaning, household: budapest_household, user: User.all.sample)
clean_bathroom = Template.create(name: "Cleaning the bathroom", points: 11, category: cleaning, household: budapest_household, user: User.all.sample)
dusting = Template.create(name: "Dusting", points: 9, category: cleaning, household: budapest_household, user: User.all.sample)
ironing = Template.create(name: "Ironing", points: 8, category: cleaning, household: berlin_household, user: User.all.sample)
change_bedsheets = Template.create(name: "Change bedsheets", points: 7, category: cleaning, household: berlin_household, user: User.all.sample)
take_away_old_glass = Template.create(name: "Take away old glass", points: 6, category: cleaning, household: berlin_household, user: User.all.sample)
clean_windows = Template.create(name: "Cleaning windows", points: 11, category: cleaning, household: berlin_household, user: User.all.sample)
wipe_down_kitchen_cabinets = Template.create(name: "Wipe down kitchen cabinets", points: 4, category: cleaning, household: berlin_household, user: User.all.sample)
afternoon_care = Template.create(name: "Afternoon care", points: 9, category: cleaning, household: berlin_household, user: User.all.sample)
driving_services = Template.create(name: "Driving services", points: 9, category: cleaning, household: berlin_household, user: User.all.sample)
  # PLANNING TEMPLATES
shopping_list = Template.create(name: "Maintain shopping list", points: 9, category: planning, household: brussels_household, user: User.all.sample)
meals_planning = Template.create(name: "Plan meals", points: 7, category: planning, household: brussels_household, user: User.all.sample)
bday_party_planning = Template.create(name: "Plan kid's birthday party", points: 20, category: planning, household: brussels_household, user: User.all.sample)
vacation_planning = Template.create(name: "Vacation planning", points: 20, category: planning, household: budapest_household, user: User.all.sample)
make_dr_appointment = Template.create(name: "Make doctor's appointments", points:  10, category: planning, household: budapest_household, user: User.all.sample)
make_playdate = Template.create(name: "Make playdate", points: 8, category: planning, household: budapest_household, user: User.all.sample)
plan_family_outing = Template.create(name: "Plan entertainment/family outings on weekends", points: 15, category: planning, household: berlin_household, user: User.all.sample)
search_for_family_activities = Template.create(name: "Research for family activities", points: 7, category: planning, household: berlin_household, user: User.all.sample)
organisation_babysitting = Template.create(name: "Organization/Communication with babysitter*in", points: 7, category: planning, household: berlin_household, user: User.all.sample)
  # PAPERWORK TEMPLATES
arrange_payment_fix_costs = Template.create(name: "Arrange payment of fixed costs", points: 8, category: paperwork, household: brussels_household, user: User.all.sample)
pay_bill = Template.create(name: "Pay bill", points: 5, category: paperwork, household: brussels_household, user: User.all.sample)
tax_declaration = Template.create(name: "Tax declaration", points: 17, category: paperwork, household: brussels_household, user: User.all.sample)
school_related = Template.create(name: "School paperwork", points: 5, category: paperwork, household: budapest_household, user: User.all.sample)
providers_related = Template.create(name: "Providers related (gas, Internet...) paperwork", points: 5, category: paperwork, household: budapest_household, user: User.all.sample)
lawyer_related = Template.create(name: "Lawyers related paperwork", points: 7, category: paperwork, household: budapest_household, user: User.all.sample)
housing_related = Template.create(name: "Housing related paperwork", points: 7, category: paperwork, household: berlin_household, user: User.all.sample)
communication_landlord = Template.create(name: "Communication with landlord/landlady", points: 7, category: paperwork, household: berlin_household, user: User.all.sample)
insurance_related = Template.create(name: "Insurance related paperwork", points: 7, category: paperwork, household: berlin_household, user: User.all.sample)
  # MAINTENANCE TEMPLATES
water_plants = Template.create(name: "Water plants", points: 4, category: paperwork, household: brussels_household, user: User.all.sample)
clean_drains = Template.create(name: "Clean drains", points: 13, category: paperwork, household: brussels_household, user: User.all.sample)
small_repair = Template.create(name: "Small repair", points: 8, category: paperwork, household: brussels_household, user: User.all.sample)
garden_and_balcony = Template.create(name: "Take care of garden and/or balcony", points: 9, category: paperwork, household: brussels_household, user: User.all.sample)
screwing_drilling_hammering = Template.create(name: "Screwing, drilling, hammering", points: 5, category: paperwork, household: berlin_household, user: User.all.sample)
decalcify = Template.create(name: "Decalcify machines", points: 5, category: paperwork, household: berlin_household, user: User.all.sample)
bulky_waste = Template.create(name: "Dispose of bulky waste", points: 8, category: paperwork, household: berlin_household, user: User.all.sample)
look_for_provider = Template.create(name: "Research for provider (electricity, Internet...)", points: 13, category: paperwork, household: berlin_household, user: User.all.sample)
car_repair = Template.create(name: "Repair car", points: 12, category: paperwork, household: berlin_household, user: User.all.sample)
take_car_to_mot = Template.create(name: "Take car to MOT", points: 1, category: paperwork, household: berlin_household, user: User.all.sample)
dispose_of_used_clothes = Template.create(name: "Give away/sell unused clothing", points: 10, category: paperwork, household: budapest_household, user: User.all.sample)
sort_out_medicine_cabinet = Template.create(name: "Sort out medicine cabinet", points: 9, category: paperwork, household: budapest_household, user: User.all.sample)
maintain_child_seat_car_bike = Template.create(name: "Buy/maintain child seat car & bike", points: 8, category: paperwork, household: budapest_household, user: User.all.sample)
supplies_daycare = Template.create(name: "Obtain supplies for daycare/school", points: 9, category: paperwork, household: budapest_household, user: User.all.sample)
sort_clothing_sizes = Template.create(name: "Sort out clothes", points: 10, category: paperwork, household: berlin_household, user: User.all.sample)
sort_shoes_sizes = Template.create(name: "Sort out shoes", points: 7, category: paperwork, household: berlin_household, user: User.all.sample)
buy_new_clothes = Template.create(name: "Buy new clothes", points: 8, category: paperwork, household: berlin_household, user: User.all.sample)
clothes_repair = Template.create(name: "Repair broken clothes", points: 10, category: paperwork, household: berlin_household, user: User.all.sample)
refuel = Template.create(name: "Refuel", points: 2, category: paperwork, household: berlin_household, user: User.all.sample)
maintain_bikes = Template.create(name: "Maintain bikes", points: 8, category: paperwork, household: budapest_household, user: User.all.sample)
check_bicycle_helmets_size = Template.create(name: "Check bicycle helmet size & buy helmets", points: 4, category: paperwork, household: budapest_household, user: User.all.sample)
wash_car = Template.create(name: "Wash car", points: 12, category: paperwork, household: budapest_household, user: User.all.sample)
wash_strollers_carriers = Template.create(name: "Wash strollers/carriers", points: 6, category: paperwork, household: budapest_household, user: User.all.sample)
buy_cleaning_supplies = Template.create(name: "Buy cleaning supplies", points: 4, category: paperwork, household: budapest_household, user: User.all.sample)
check_cleaning_supplies = Template.create(name: "Check stock cleaning supplies", points: 3, category: paperwork, household: budapest_household, user: User.all.sample)
# GROCERIES TEMPLATES
weekly_shopping = Template.create(name: "Weekly groceries", points: 14, category: paperwork, household: brussels_household, user: User.all.sample)

puts "seed is over"
