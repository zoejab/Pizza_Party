class User < ActiveRecord::Base
  has_and_belongs_to_many :pizza_places
  has_many :comments

  has_secure_password
end
