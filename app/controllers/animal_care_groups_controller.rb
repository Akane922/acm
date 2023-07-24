
class AnimalCareGroupsController < ApplicationController
  def index
    @animal_care_groups = AnimalCareGroup.all
  end

  def show
    @animal_care_group = AnimalCareGroup.find(params[:id])
    @veterinarians = Veterinarian.limit(5)
    @matching_pages = @animal_care_groups_pages
  end

  def update
    @animal_care_groups = AnimalCareGroup.all
  end

  private

  def animal_care_group_params
    params.require(:animal_care_group).permit(:name, :email, :password, :password_confirmation)
  end
end
