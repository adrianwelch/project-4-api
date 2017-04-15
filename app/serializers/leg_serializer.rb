class LegSerializer < ActiveModel::Serializer
  belongs_to :trip
  attributes :id, :date, :location, :lat, :lng, :image, :description
end
