class UserSerializer < ActiveModel::Serializer
  has_many :trips_created
  has_many :trips_joining
  attributes :id, :username, :firstname, :lastname, :email
end
