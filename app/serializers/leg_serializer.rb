class LegSerializer < ActiveModel::Serializer
  belongs_to :trip
  attributes :id, :date, :location, :lat, :lng, :image_src, :description

  def image_src
    object.image.url
  end
end
