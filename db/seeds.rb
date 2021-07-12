
User.create(
  email: "Ian@flatiron.com",
  password: "123",
  firstname: "Ian",
  lastname: "McKalan",
  is_agent: true,
  is_admin: true
)
User.create(
  email: "Sunjet@flatiron.com",
  password: "123",
  firstname: "SunJet",
  lastname: "Liu",
  is_agent: true,
  is_admin: true
)
User.create(
  email: "Johnson@flatiron.com",
  password: "123",
  firstname: "Johnson",
  lastname: "Liu",
  is_agent: true,
  is_admin: true
)
User.create(
  email: "Greg@flatiron.com",
  password: "123",
  firstname: "Greg",
  lastname: "Dwyer",
  is_agent: true,
  is_admin: true
)
User.create(
  email: "Michelle@flatiron.com",
  password: "123",
  firstname: "Michelle",
  lastname: "Pathe",
  is_agent: false,
  is_admin: false
)

Ticket.create(
    name: "IT Issue",
    description:"Rails not working",
    assigned_to: "Ian",
    category: "IT",
    sub_category: "IT",
    priority: "1",
)
Ticket.create(
    name: "Phone Issue",
    description:"No Signal",
    assigned_to: "Johnson",
    category: "IT",
    sub_category: "Cellular",
    priority: "2",
)
UserTicket.create( user_id: 1, ticket_id: 1)
UserTicket.create( user_id: 2, ticket_id: 2)
