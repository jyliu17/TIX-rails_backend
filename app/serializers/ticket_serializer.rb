class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :assigned_to, :category, :sub_category, :priority, :create_at, :update_at, :complete_at, :status_id
end
