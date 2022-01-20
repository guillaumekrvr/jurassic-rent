class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @animal = Animal.find(params[:animal_id])
    @review.animal = @animal
    if @review.save
      redirect_to animal_path(@animal.id)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  # def show
  # end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
