class FavoritePizzaPlacesController < ApplicationController
  before_action :set_pizza_place

  def create

    @favorite = Favorite.create(favorited: @pizza_place, user: current_user)

    redirect_to @pizza_place
  end

  def destroy
    @favorite = Favorite.where(favorited_id: @pizza_place.id, user_id: current_user.id).first.destroy
    redirect_to @pizza_place
  end

  private
  def set_pizza_place
    @pizza_place = PizzaPlace.find(params[:pizza_place_id] || params[:id])
  end



end
