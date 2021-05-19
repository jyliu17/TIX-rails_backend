class TicketCommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :updated_at
  has_one :user
  has_one :ticket
end
