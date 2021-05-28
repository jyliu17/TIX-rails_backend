# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#testing testing

User.create(
  email: "Ian@flatiron.com",
  password: "123",
  firstname: "Ian",
  lastname: "McKalan",
  is_agent: TRUE,
  is_admin: TRUE
)

Ticket.create(
    name: "IT Issue",
    description:"Rails not working",
    assigned_to: "Ian",
    category: "IT",
    sub_category: "IT",
    priority: "1",
)

UserTicket.create( user_id: 1, ticket_id: 1)