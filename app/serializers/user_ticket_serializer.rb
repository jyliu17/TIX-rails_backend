class UserTicketSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :ticket
end
