# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"matt.a@example.com", password: "pass")
User.create(email:"joe.a@example.com", password: "pass")
User.create(email:"micah.a@example.com", password: "pass")
User.create(email:"shawn.a@example.com", password: "pass")
User.create(email:"dave.a@example.com", password: "pass")

User.create(email:"matt.c@example.com", password: "pass")
User.create(email:"joe.c@example.com", password: "pass")
User.create(email:"micah.c@example.com", password: "pass")
User.create(email:"shawn.c@example.com", password: "pass")
User.create(email:"dave.c@example.com", password: "pass")

AssistanceProvider.create(
    name: "Matt A",
    email: "matt.a@example.com",
    street_address: "870 Victoria Place",
    city: "St. Louis",
    state: "MO",
    zip: "63122",
    max_monthly_contribution: "800",
    user_id: 1
)
AssistanceProvider.create(
    name: "Joe A",
    email: "joe.a@example.com",
    street_address: "810 Wood Ave",
    city: "Kirkwood",
    state: "MO",
    zip: "63122",
    max_monthly_contribution: "600",
    user_id: 2
)
AssistanceProvider.create(
    name: "Micah A",
    email: "micah.a@example.com",
    street_address: "3442 Vernon Ave",
    city: "St. Louis",
    state: "MO",
    zip: "63113",
    max_monthly_contribution: "200",
    user_id: 3
)
AssistanceProvider.create(
    name: "Shawn A",
    email: "shawn.a@example.com",
    street_address: "900 Spruce St",
    city: "St. Louis",
    state: "MO",
    zip: "63102",
    max_monthly_contribution: "400",
    user_id: 4
)
AssistanceProvider.create(
    name: "David A",
    email: "dave.a@example.com",
    street_address: "400 S. 4th St.",
    city: "St. Louis",
    state: "MO",
    zip: "63102",
    max_monthly_contribution: "1000",
    user_id: 5
)

CareCoordinator.create(
    name: "Matt A",
    email: "matt.a@example.com",
    user_id: 6
)
CareCoordinator.create(
    name: "Joe A",
    email: "joe.a@example.com",
    user_id: 7
)
CareCoordinator.create(
    name: "Micah A",
    email: "micah.a@example.com",
    user_id: 8
)
CareCoordinator.create(
    name: "Shawn A",
    email: "shawn.a@example.com",
    user_id: 9
)
CareCoordinator.create(
    name: "David A",
    email: "dave.a@example.com",
    user_id: 10
)

Event.create(
    date_of_event: "10/18/2016",
    street_address: "1000 Spruce St.",
    city: "St. Louis",
    state: "MO",
    zip: "63102",
    event_type: "eviction notice",
    notes: "This is for a family of 4. Very said situation. Please help them."
)
Event.create(
    date_of_event: "10/19/2016",
    street_address: "799 Nirk Ave",
    city: "St. Louis",
    state: "MO",
    zip: "63122",
    event_type: "eviction notice",
    notes: "Rent wasn't paid for 2 months. Kicking them out."
)
Event.create(
    date_of_event: "10/22/2016",
    street_address: "9332 Crawford Avenue",
    city: "St. Louis",
    state: "MO",
    zip: "63144",
    event_type: "eviction notice",
    notes: "This is for a family of 4. Very said situation. Please help them."
)