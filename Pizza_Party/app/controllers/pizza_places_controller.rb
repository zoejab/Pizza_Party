class PizzaPlacesController < ApplicationController

  def index
    @pizza_places = PizzaPlace.all
  end


  def show
    @pizza_place = PizzaPlace.find(params[:id])
    @comment = Comment.new
    # @comment.pizza_place_id = @pizza_place.id

  end
  #
  # def edit
  #   @comment = Comment.find(params[:id])
  #   @pizza_place = PizzaPlace.find(params[:id])
  # end

  # def update
  #   @comment = Comment.find(params[:id])
  #   @comment.update(comment_params)
  #
  #   redirect_to pizza_place_path(@comment)
  # end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to pizza_place_path
    # # @pizza_place = PizzaPlace.find(params[:id])
    # redirect_to pizza_place_path(@pizza_place.id)
  end
end
