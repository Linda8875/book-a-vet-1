class VetsController < ApplicationController

  def index
    @vets = Vet.all
  end

  def show
    @vet = Vet.find(params[:id])
  end

  def edit
    @vet = Vet.find(params[:id])
  end

  def update
    @vet = Vet.find(params[:id])
    if @vet.update!(vet_params) && @vet == current_vet
      redirect_to vet_path(@vet)
    else
      redirect_to root_path
    end
  end

  def destroy
    @vet = Vet.find(params[:id])
    @vet.destroy
    redirect_to root_path
  end

  private

  def vet_params
    params.require(:vet).permit(:first_name, :last_name, :phone, :address, :languages, :bio , :city_name, :postal_code, :speciality)
  end

end