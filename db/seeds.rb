
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
