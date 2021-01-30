class PetsController < ApplicationController
  def index
    @client = current_client
    @pets = @client.pets
  end

  def show
    @pet = Pet.find(params[:id])
  end
  
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    
    @pet.client = current_client
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params) && @pet.client == current_client
      redirect_to pet_path(@pet)
    else
      redirect_to root_path
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to client_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :health_info, :birthday)
  end
end
