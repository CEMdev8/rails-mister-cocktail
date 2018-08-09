class DosesController < ApplicationController
    def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
    @ingredient = ingredient.new
    @cocktail = cocktail.new
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render "new"
    end
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(params[:dose])
  end


  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end


  private

  def dose_params
    params.require(:description).permit(:description)
  end
end

