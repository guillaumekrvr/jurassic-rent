class AnimalsController < ApplicationController
  before_action :find_animal, only: %i[update destroy show edit]

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animals_path
  end

  def edit
  end

  def update
    @animal.update(animal_params)
  end

  def destroy
    @animal.destroy
  end

  def show
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :specie, :diary, :description, :address, :city, :price_per_day, :size)
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
