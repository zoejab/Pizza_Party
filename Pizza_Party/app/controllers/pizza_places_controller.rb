class PizzaPlacesController < ApplicationController

  def index
    @pizza_places = PizzaPlace.all
  end

  # def new
  #   @pizza_place = PizzaPlace.new
  # end
  #
  # def create
  # end
  #
  # def destroy
  # end

  def show
    @pizza_place = PizzaPlace.find(params[:id])
  end

  def edit
  end
end
