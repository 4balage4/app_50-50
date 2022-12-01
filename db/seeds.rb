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
Category.destroy_all

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
  Contact.create(title: Faker::Job.title, name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.full_address, household: [berlin_household, budapest_household, brussels_household].sample)
end

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
users.each do |user|
  household_options = user.household.users
  # household_options << "nil"
  bathroom_cleaning = Task.create(name: "Clean bathroom", points: 10, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  pick_up_kid = Task.create(name: "Pick up kid from dance class", points: 18, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  feed_cat = Task.create(name: "Feed Garfield", points: 13, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  bed_story = Task.create(name: "Read bed story to Kevin", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  buy_bags_vacum_cleaner = Task.create(name: "Buy bags for vacum cleaner", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  make_dinner = Task.create(name: "Make dinner", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  pay_gas_bill = Task.create(name: "Pay gas bill", points: 14, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  call_plumber = Task.create(name: "Call plumber", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  fix_kitchen_chair = Task.create(name: "Fix kitchen chair", points: 18, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  bday_gift = Task.create(name: "Buy bday gift Suzanne", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household, assigned_to: household_options.sample)
  groceries = Task.create(name: "Groceries", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  bake_bday_cake = Task.create(name: "Make bday cake", points: 17, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  parents_meeting = Task.create(name: "Attend parents meeting", points: 15, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
  fix_kids_coat = Task.create(name: "fix Kid's coat", points: 12, duration: "", type: "", comments: "", category: Category.all.sample, user: user, household: user.household)
end

# TEMPLATES - DO NOT DELETE
  # CARE TEMPLATES
cooking = Template.create(name: "Cooking", category: care, household: berlin_household, user: User.all.sample)
prepare_take_away_lunch = Template.create(name: "Prepare take away lunch", category: care, household: berlin_household, user: User.all.sample)
drop_off = Template.create(name: "Drop off", category: care, household: berlin_household, user: User.all.sample)
pick_up = Template.create(name: "Pick up", category: care, household: berlin_household, user: User.all.sample)
supervise_homework = Template.create(name: "Supervise homework", category: care, household: berlin_household, user: User.all.sample)
choose_clothes = Template.create(name: "Choose clothes", category: care, household: berlin_household, user: User.all.sample)
dress_children = Template.create(name: "Dress kid", category: care, household: berlin_household, user: User.all.sample)
sleep_accompaniment = Template.create(name: "Sleep accompaniment", category: care, household: berlin_household, user: User.all.sample)
waking_up = Template.create(name: "Waking up/waking up assistance", category: care, household: berlin_household, user: User.all.sample)
comb_hair = Template.create(name: "Comb hair", category: care, household: berlin_household, user: User.all.sample)
brushing_teeth = Template.create(name: "Brushing teeth", category: care, household: berlin_household, user: User.all.sample)
pet_care = Template.create(name: "Caring for pets", category: care, household: berlin_household, user: User.all.sample)
coziness = Template.create(name: "Decoration & coziness at home", category: care, household: berlin_household, user: User.all.sample)
parent_meeting = Template.create(name: "Attend parent meeting", category: care, household: berlin_household, user: User.all.sample)
keep_memories = Template.create(name: "Keep memories/photos", category: care, household: budapest_household, user: User.all.sample)
kids_birthday_party_execution = Template.create(name: "Execute planning of kid's birthday parties", category: care, household: budapest_household, user: User.all.sample)
pack_sportswear = Template.create(name: "Pack sportswear", category: care, household: budapest_household, user: User.all.sample)
give_sportswear = Template.create(name: "Make sure kid takes sportswear", category: care, household: budapest_household, user: User.all.sample)
contact_person = Template.create(name: "Contact person/emergency contact", category: care, household: budapest_household, user: User.all.sample)
contact_with_older_children = Template.create(name: "Talking with older kids (heartbreak, future...)", category: care, household: budapest_household, user: User.all.sample)
couple_date = Template.create(name: "Organizing couple date", category: care, household: budapest_household, user: User.all.sample)
night_shift = Template.create(name: "Night shift illness", category: care, household: budapest_household, user: User.all.sample)
rules_agreement = Template.create(name: "Set rules agreements with kid", category: care, household: budapest_household, user: User.all.sample)
suitcase_packing = Template.create(name: "Packing suitcases for vacation", category: care, household: budapest_household, user: User.all.sample)
service_events = Template.create(name: "Service at special events", category: care, household: budapest_household, user: User.all.sample)
clothes_change = Template.create(name: "Check change of clothes kid", category: care, household: budapest_household, user: User.all.sample)
take_care_of_relationships = Template.create(name: "Keeping in touch with relatives", category: care, household: brussels_household, user: User.all.sample)
diaper_changing = Template.create(name: "Diaper changing", category: care, household: brussels_household, user: User.all.sample)
doctor_appointment = Template.create(name: "Go to doctor with kid", category: care)
bath = Template.create(name: "Give bath", category: care, household: brussels_household, user: User.all.sample)
bday_greetings = Template.create(name: "Send birthday greetings to a relative", category: care, household: brussels_household, user: User.all.sample)
bday_gift = Template.create(name: "Buy birthday gift", category: care, household: brussels_household, user: User.all.sample)
bday_wishes = Template.create(name: "Inform friends/family about kid's birthday wishes", category: care, household: brussels_household, user: User.all.sample)
pocket_money = Template.create(name: "Manage pocket money", category: care, household: brussels_household, user: User.all.sample)
play_time = Template.create(name: "Play with kid", category: care, household: brussels_household, user: User.all.sample)
  # CLEANING TEMPLATES
washing = Template.create(name: "Washing", category: cleaning, household: brussels_household, user: User.all.sample)
hanging_up_laundry = Template.create(name: "Hanging up laundry", category: cleaning, household: brussels_household, user: User.all.sample)
fold_laundry = Template.create(name: "Fold laundry", category: cleaning, household: brussels_household, user: User.all.sample)
clean_fridge = Template.create(name: "Clean refrigerator", category: cleaning, household: brussels_household, user: User.all.sample)
clean_oven = Template.create(name: "Clean oven", category: cleaning, household: brussels_household, user: User.all.sample)
clean_freezer = Template.create(name: "Clean freezer", category: cleaning, household: brussels_household, user: User.all.sample)
clean_microwave = Template.create(name: "Clean micro wave", category: cleaning, household: brussels_household, user: User.all.sample)
put_away_laundry = Template.create(name: "Put away laundry", category: cleaning, household: brussels_household, user: User.all.sample)
make_bed = Template.create(name: "Make bed", category: cleaning, household: brussels_household, user: User.all.sample)
clean_up_kitchen = Template.create(name: "Clean up kitchen", category: cleaning, household: budapest_household, user: User.all.sample)
wash_dishes = Template.create(name: "Wash dishes", category: cleaning, household: budapest_household, user: User.all.sample)
take_out_trash = Template.create(name: "Take out trash", category: cleaning, household: budapest_household, user: User.all.sample)
clean_up = Template.create(name: "Clean up", category: cleaning, household: budapest_household, user: User.all.sample)
vacuuming = Template.create(name: "Vacuuming", category: cleaning, household: budapest_household, user: User.all.sample)
mopping = Template.create(name: "Mopping", category: cleaning, household: budapest_household, user: User.all.sample)
clean_bathroom = Template.create(name: "Cleaning the bathroom", category: cleaning, household: budapest_household, user: User.all.sample)
dusting = Template.create(name: "Dusting", category: cleaning, household: budapest_household, user: User.all.sample)
ironing = Template.create(name: "Ironing", category: cleaning, household: berlin_household, user: User.all.sample)
change_bedsheets = Template.create(name: "Change bedsheets", category: cleaning, household: berlin_household, user: User.all.sample)
take_away_old_glass = Template.create(name: "Take away old glass", category: cleaning, household: berlin_household, user: User.all.sample)
clean_windows = Template.create(name: "Cleaning windows", category: cleaning, household: berlin_household, user: User.all.sample)
wipe_down_kitchen_cabinets = Template.create(name: "Wipe down kitchen cabinets", category: cleaning, household: berlin_household, user: User.all.sample)
afternoon_care = Template.create(name: "Afternoon care", category: cleaning, household: berlin_household, user: User.all.sample)
driving_services = Template.create(name: "Driving services", category: cleaning, household: berlin_household, user: User.all.sample)
  # PLANNING TEMPLATES
shopping_list = Template.create(name: "Maintain shopping list", category: planning, household: brussels_household, user: User.all.sample)
meals_planning = Template.create(name: "Plan meals", category: planning, household: brussels_household, user: User.all.sample)
bday_party_planning = Template.create(name: "Plan kid's birthday party", category: planning, household: brussels_household, user: User.all.sample)
vacation_planning = Template.create(name: "Vacation planning", category: planning, household: budapest_household, user: User.all.sample)
make_dr_appointment = Template.create(name: "Make doctor's appointments", category: planning, household: budapest_household, user: User.all.sample)
make_playdate = Template.create(name: "Make playdate", category: planning, household: budapest_household, user: User.all.sample)
plan_family_outing = Template.create(name: "Plan entertainment/family outings on weekends", category: planning, household: berlin_household, user: User.all.sample)
search_for_family_activities = Template.create(name: "Research for family activities", category: planning, household: berlin_household, user: User.all.sample)
organisation_babysitting = Template.create(name: "Organization/Communication with babysitter*in", category: planning, household: berlin_household, user: User.all.sample)
  # PAPERWORK TEMPLATES
arrange_payment_fix_costs = Template.create(name: "Arrange payment of fixed costs", category: paperwork, household: brussels_household, user: User.all.sample)
pay_bill = Template.create(name: "Pay bill", category: paperwork, household: brussels_household, user: User.all.sample)
tax_declaration = Template.create(name: "Tax declaration", category: paperwork, household: brussels_household, user: User.all.sample)
school_related = Template.create(name: "School paperwork", category: paperwork, household: budapest_household, user: User.all.sample)
providers_related = Template.create(name: "Providers related (gas, Internet...) paperwork", category: paperwork, household: budapest_household, user: User.all.sample)
lawyer_related = Template.create(name: "Lawyers related paperwork", category: paperwork, household: budapest_household, user: User.all.sample)
housing_related = Template.create(name: "Housing related paperwork", category: paperwork, household: berlin_household, user: User.all.sample)
communication_landlord = Template.create(name: "Communication with landlord/landlady", category: paperwork, household: berlin_household, user: User.all.sample)
insurance_related = Template.create(name: "Insurance related paperwork", category: paperwork, household: berlin_household, user: User.all.sample)
  # MAINTENANCE TEMPLATES
water_plants = Template.create(name: "Water plants", category: paperwork, household: brussels_household, user: User.all.sample)
clean_drains = Template.create(name: "Clean drains", category: paperwork, household: brussels_household, user: User.all.sample)
small_repair = Template.create(name: "Small repair", category: paperwork, household: brussels_household, user: User.all.sample)
garden_and_balcony = Template.create(name: "Take care of garden and/or balcony", category: paperwork, household: brussels_household, user: User.all.sample)
screwing_drilling_hammering = Template.create(name: "Screwing, drilling, hammering", category: paperwork, household: berlin_household, user: User.all.sample)
decalcify = Template.create(name: "Decalcify machines", category: paperwork, household: berlin_household, user: User.all.sample)
bulky_waste = Template.create(name: "Dispose of bulky waste", category: paperwork, household: berlin_household, user: User.all.sample)
look_for_provider = Template.create(name: "Research for provider (electricity, Internet...)", category: paperwork, household: berlin_household, user: User.all.sample)
car_repair = Template.create(name: "Repair car", category: paperwork, household: berlin_household, user: User.all.sample)
take_car_to_mot = Template.create(name: "Take car to MOT", category: paperwork, household: berlin_household, user: User.all.sample)
dispose_of_used_clothes = Template.create(name: "Give away/sell unused clothing", category: paperwork, household: budapest_household, user: User.all.sample)
sort_out_medicine_cabinet = Template.create(name: "Sort out medicine cabinet", category: paperwork, household: budapest_household, user: User.all.sample)
maintain_child_seat_car_bike = Template.create(name: "Buy/maintain child seat car a& bike", category: paperwork, household: budapest_household, user: User.all.sample)
supplies_daycare = Template.create(name: "Obtain supplies for daycare/school", category: paperwork, household: budapest_household, user: User.all.sample)
sort_clothing_sizes = Template.create(name: "Sort out clothes", category: paperwork, household: berlin_household, user: User.all.sample)
sort_shoes_sizes = Template.create(name: "Sort out shoes", category: paperwork, household: berlin_household, user: User.all.sample)
buy_new_clothes = Template.create(name: "Buy new clothes", category: paperwork, household: berlin_household, user: User.all.sample)
clothes_repair = Template.create(name: "Repair broken clothes", category: paperwork, household: berlin_household, user: User.all.sample)
refuel = Template.create(name: "Refuel", category: paperwork, household: berlin_household, user: User.all.sample)
maintain_bikes = Template.create(name: "Maintain bikes", category: paperwork, household: budapest_household, user: User.all.sample)
check_bicycle_helmets_size = Template.create(name: "Check bicycle helmet size & buy helmets", category: paperwork, household: budapest_household, user: User.all.sample)
wash_car = Template.create(name: "Wash car", category: paperwork, household: budapest_household, user: User.all.sample)
wash_strollers_carriers = Template.create(name: "Wash strollers/carriers", category: paperwork, household: budapest_household, user: User.all.sample)
buy_cleaning_supplies = Template.create(name: "Buy cleaning supplies", category: paperwork, household: budapest_household, user: User.all.sample)
check_cleaning_supplies = Template.create(name: "Check stock cleaning supplies", category: paperwork, household: budapest_household, user: User.all.sample)
# GROCERIES TEMPLATES
weekly_shopping = Template.create(name: "Weekly groceries", category: paperwork, household: brussels_household, user: User.all.sample)
