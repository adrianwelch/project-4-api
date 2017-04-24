class TripSerializer < ActiveModel::Serializer
  has_many :joiners
  belongs_to :user
  has_many :legs
  has_many :comments
  attributes :id, :title, :joiner_ids, :user, :joiners
end
