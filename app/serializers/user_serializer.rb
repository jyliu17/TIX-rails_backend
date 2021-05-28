class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password_digest, :is_agent, :is_admin
end
