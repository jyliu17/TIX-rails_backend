class User < ApplicationRecord
  has_secure_password
  has_many :Tickets, through: :TicketComments
  has_many :TicketComments
end
