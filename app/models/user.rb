class User < ApplicationRecord
  has_secure_password
  has_many :trips_created, class_name: "Trip", foreign_key: "user_id"
  has_and_belongs_to_many :trips_joining, class_name: "Trip", join_table: "trips_users"
  has_many :requests_sent
  has_many :comments
  has_many :requests_recieved_through_trips
end
