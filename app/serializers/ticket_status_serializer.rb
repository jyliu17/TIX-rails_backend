class TicketStatusSerializer < ActiveModel::Serializer
  attributes :id, :state
  has_one :ticket
end
