class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :trip
  attributes :id, :body, :user
end
