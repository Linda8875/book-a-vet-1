class SlotsController < ApplicationController

  def index
    @vet = current_vet
    @slots = @vet.slots
  end

  def show
    @vet = current_vet
    @slot = Slot.find(params[:id])
  end
  
  def new
    @slot = Slot.new
    @vet = current_vet
  end

  def create
    find_vet
    @slot = Slot.new(slot_params)
    @slot.vet = @vet
    if @slot.save
    
    redirect_to vet_slots_path
    else
      render :new
    end
  end

  def edit
    @vet = current_vet
    @slot = Slot.find(params[:id])
  end

  def update
    @slot = Slot.find(params[:id])
    if @slot.update!(slot_params)  && @slot.vet == current_vet
      redirect_to vet_slots_path
    else
      render :edit
    end
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy
    redirect_to vet_slots_path
  end

  private

  def find_vet
    @vet = Vet.find(params[:vet_id])
  end

  def slot_params
    params.require(:slot).permit( :start_time, :end_time, :availability, :weekday)
  end
end


