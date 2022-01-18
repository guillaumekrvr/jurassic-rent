class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_animal, only: %i[update destroy show edit]

  def index
    if params[:query].present?
      @animals = Animal.search_by_name_and_address(params[:query])
    else
      @animals = Animal.all
    end
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('Marker_img.png')
      }
    end
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.save!
    redirect_to animals_path
  end

  def edit
  end

  def update
    @animal.update(animal_params)
    redirect_to animals_path
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  def show
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :specie, :diary, :description, :address, :price_per_day, :size, photos: [])
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
