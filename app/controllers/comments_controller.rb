class CommentsController < ApplicationController

  skip_before_action :authenticate, only: [:index, :show]

    def create
      @comment = Comment.new(comment_params)
      @comment.pizza_place_id = params[:pizza_place_id]
      @comment.user_id = current_user.id

      if @comment.save
      redirect_to pizza_place_path(@comment.pizza_place)
      else
        flash.now[:danger] = "error"
      end
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
      @pizza_place = PizzaPlace.find(params[:pizza_place_id])
      @comment = Comment.find(params[:id])
      if current_user.id != @comment.user_id
        redirect_to pizza_place_path(@pizza_place)
      else
          @comment = Comment.find(params[:id])
      end

      # @pizza_place = PizzaPlace.find(params[:pizza_place_id])
      #
    end

    def update
      @pizza_place = PizzaPlace.find(params[:pizza_place_id])
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      flash.notice = "Comment Updated!"

      redirect_to pizza_place_path(@pizza_place)
    end

    def destroy
      @pizza_place = PizzaPlace.find(params[:pizza_place_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      flash.notice = "Comment Deleted!"
      redirect_to pizza_place_path(@pizza_place)
      # # @pizza_place = PizzaPlace.find(params[:id])
      # redirect_to pizza_place_path(@pizza_place.id)
    end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
