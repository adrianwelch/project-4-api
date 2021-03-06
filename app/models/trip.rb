class Trip < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :comments, dependent: :destroy
  has_many :legs, dependent: :destroy
  has_and_belongs_to_many :joiners, class_name: "User", join_table: "trips_users"
end
