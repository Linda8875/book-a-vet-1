class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update!(client_params) && @client == current_client
      redirect_to client_path(@client)
    else
      redirect_to root_path
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to root_path
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone)
  end
end

