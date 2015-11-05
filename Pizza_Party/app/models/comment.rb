class Comment < ActiveRecord::Base
  belongs_to :pizza_place
  belongs_to :user
end
