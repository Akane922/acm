class VeterinariansController < ApplicationController
  def index
    @veterinarians = Veterinarian.all
  end


  def show
    @veterinarian = Veterinarian.find(params[:id])
    @animal_care_groups = AnimalCareGroup.limit(5)
    @matching_pages = @veterinarian.matching_pages
  end

  def update
    @veterinarians = Veterinarian.all
  end
end

