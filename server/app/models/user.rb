class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :recoverable,
         :validatable, :registerable

  has_many :emergencies
  has_many :emergency_contacts
  include DeviseTokenAuth::Concerns::User
end
