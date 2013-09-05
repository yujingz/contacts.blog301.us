class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :tel, :email, :address, :birthday
end
