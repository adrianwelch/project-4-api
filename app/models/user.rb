class User < ApplicationRecord
  has_secure_password validations: false
  has_many :trips_created, class_name: "Trip", foreign_key: "user_id"
  has_and_belongs_to_many :trips_joining, class_name: "Trip", join_table: "trips_users"
  has_many :requests_sent
  has_many :comments
  has_many :requests_recieved_through_trips

  validates :username, presence: true, unless: :oauth_login?
  validates :email, uniqueness: true, presence: true, unless: :oauth_login?

  def oauth_login?
    github_id.present?
  end
end
