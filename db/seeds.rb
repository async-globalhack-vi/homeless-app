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
    street_address: "914 Wood Ave",
    city: "Kirkwood",
    state: "MO",
    zip: "63122",
    max_monthly_contribution: "600",
    user_id: 2
)
AssistanceProvider.create(
    name: "Micah A",
    email: "micah.a@example.com",
    street_address: "5223 Vernon Ave",
    city: "St. Louis",
    state: "MO",
    zip: "63113",
    max_monthly_contribution: "600",
    user_id: 2
)
