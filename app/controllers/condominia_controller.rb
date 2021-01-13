class CondominiaController < ApplicationController

  before_action :set_condominium, only: [:edit, :update]

  def new
    @condominium = Condominium.new
    authorize @condominium
  end

  def create
    @condominium = Condominium.new(condominium_params)
    authorize @condominium
    if @condominium.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    authorize @condominium
  end

  def update
    authorize @condominium
    @condominium.update(condominium_params)
    if @condominium.save
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  
  def set_condominium
    @condominium = Condominium.find(params[:id])
  end
  
  def condominium_params
      params.require(:condominium).permit(:address, :name, :has, :hasnt, :neighbourhood_id)
  end
end
