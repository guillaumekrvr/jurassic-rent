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
    @review.save!
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
    params.require(:review).permit(:review, :comment)
  end
end
