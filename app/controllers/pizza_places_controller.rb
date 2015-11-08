class PizzaPlacesController < ApplicationController

  def index
    @pizza_places = PizzaPlace.all
  end


  def show
    @pizza_place = PizzaPlace.find(params[:id])
    @comment = Comment.new
    # @comment.pizza_place_id = @pizza_place.id
  
  end

end
