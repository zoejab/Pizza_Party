class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :pizza_places do |t|
      # t.index [:user_id, :pizza_place_id]
      # t.index [:pizza_place_id, :user_id]
    end
  end
end
