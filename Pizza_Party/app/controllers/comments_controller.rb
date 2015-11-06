class CommentsController < ApplicationController

    def create
      @comment = Comment.new(comment_params)
      @comment.pizza_place_id = params[:pizza_place_id]
      @comment.save
      redirect_to pizza_place_path(@comment.pizza_place)
    end

    def new
        @comment = Comment.new
    end


    def show
      @comment = Comment.find(params[:id])
      @comment = Comment.new
      # @comment.pizza_place_id = @comment.id
    end

    def edit
      @comment = Comment.find(params[:id])
    end

    def update
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)

      redirect_to pizza_place_path(@comment)
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to pizza_place_path
      # # @pizza_place = PizzaPlace.find(params[:id])
      # redirect_to pizza_place_path(@pizza_place.id)
    end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
