class User < ActiveRecord::Base

  before_save {self.email = email.downcase}
  
  has_and_belongs_to_many :pizza_places
  has_many :comments
  has_many :favorites
  has_many :favorite_pizza_places, through: :favorites, source: :favorited, source_type: "PizzaPlace"

  has_secure_password


  validates :username, presence: true, length: {maximum: 50}

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: { with: EMAIL_REGEX }, uniqueness: {case_sensitive: false}

  validates :password, presence: true, length: {minimum: 6}

end
