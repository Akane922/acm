class VeterinariansController < ApplicationController
  def index
    @veterinarians = Veterinarian.all
  end

  def show
    @veterinarian = Veterinarian.find(params[:id])
    @matching_pages = @veterinarian.matching_pages
  end

  def update
    @veterinarians = Veterinarian.all
  end
end

